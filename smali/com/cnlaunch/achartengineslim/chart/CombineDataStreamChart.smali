.class public Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;
.super Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
.source "CombineDataStreamChart.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I = null

.field private static final SHAPE_WIDTH:I = 0x1e


# instance fields
.field private mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

.field private mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

.field private mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

.field private mScale:F

.field private mTranslate:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->values()[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ALL:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->NONE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;)V
    .locals 0
    .parameter "renderer"
    .parameter "dataset"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    .line 50
    iput-object p2, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    .line 52
    return-void
.end method

.method private drawLabelText(II)Z
    .locals 1
    .parameter "index"
    .parameter "step"

    .prologue
    .line 424
    rem-int v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLabelLinePos(Landroid/graphics/Paint$Align;)I
    .locals 2
    .parameter "align"

    .prologue
    .line 416
    const/4 v0, 0x6

    .line 417
    .local v0, pos:I
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 418
    neg-int v0, v0

    .line 420
    :cond_0
    return v0
.end method

.method private getValidLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    return-object v1

    .line 550
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 551
    .local v0, label:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "format"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/text/NumberFormat;",
            "D)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-super {p0, p2, p3, p4}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v1

    .line 411
    :goto_0
    return-object v1

    .line 407
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    const-string/jumbo v1, ""

    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    cmpl-double v1, v3, p3

    if-nez v1, :cond_1

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "cap"
    .parameter "join"
    .parameter "miter"
    .parameter "style"
    .parameter "pathEffect"
    .parameter "paint"

    .prologue
    .line 559
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 560
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 561
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 562
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 563
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 564
    return-void
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter "canvas"
    .parameter "angle"
    .parameter "inverse"

    .prologue
    const/high16 v2, 0x3f80

    .line 859
    if-eqz p3, :cond_0

    .line 860
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    div-float v0, v2, v0

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 861
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    neg-float v0, p2

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 868
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/model/Point;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/Point;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 865
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    neg-float v0, v0

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 866
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 80
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    div-int/lit8 v5, p5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I

    move-result v13

    .line 59
    .local v13, legendSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v59

    .line 60
    .local v59, margins:[I
    const/4 v4, 0x1

    aget v4, v59, v4

    add-int v8, p2, v4

    .line 61
    .local v8, left:I
    const/4 v4, 0x0

    aget v4, v59, v4

    add-int v31, p3, v4

    .line 62
    .local v31, top:I
    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v59, v5

    sub-int v9, v4, v5

    .line 63
    .local v9, right:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v67

    .line 65
    .local v67, sLength:I
    if-nez v67, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    move/from16 v0, v67

    new-array v7, v0, [Ljava/lang/String;

    .line 70
    .local v7, titles:[Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v67

    if-lt v0, v1, :cond_d

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isFitLegend()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawLegend(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    .line 80
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getBackgroundColor()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 82
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v59, v5

    sub-int/2addr v4, v5

    sub-int v32, v4, v13

    .line 83
    .local v32, bottom:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v23

    .line 84
    .local v23, or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_3

    .line 85
    sub-int/2addr v9, v13

    .line 86
    add-int/lit8 v4, v13, -0x14

    add-int v32, v32, v4

    .line 88
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->getAngle()I

    move-result v56

    .line 89
    .local v56, angle:I
    const/16 v4, 0x5a

    move/from16 v0, v56

    if-ne v0, v4, :cond_e

    const/16 v66, 0x1

    .line 90
    .local v66, rotate:Z
    :goto_2
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    .line 91
    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    .line 92
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mScale:F

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 93
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mTranslate:F

    .line 95
    :cond_4
    if-eqz v66, :cond_5

    .line 96
    move/from16 v0, v56

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 100
    :cond_5
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v62, v0

    .line 101
    .local v62, minX:[D
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v60, v0

    .line 102
    .local v60, maxX:[D
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v42, v0

    .line 103
    .local v42, minY:[D
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v61, v0

    .line 104
    .local v61, maxY:[D
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v74, v0

    .line 105
    .local v74, xPixelsPerUnit:[D
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 107
    .local v41, yPixelsPerUnit:[D
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v5

    aput-wide v5, v62, v4

    .line 108
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v5

    aput-wide v5, v60, v4

    .line 109
    const/4 v4, 0x0

    aget-wide v4, v60, v4

    const/4 v6, 0x0

    aget-wide v10, v62, v6

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_6

    .line 110
    const/4 v4, 0x0

    sub-int v5, v9, v8

    int-to-double v5, v5

    const/4 v10, 0x0

    aget-wide v10, v60, v10

    const/4 v12, 0x0

    aget-wide v15, v62, v12

    sub-double/2addr v10, v15

    div-double/2addr v5, v10

    aput-wide v5, v74, v4

    .line 112
    :cond_6
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v67

    if-lt v0, v1, :cond_f

    .line 130
    const/16 v58, 0x0

    .line 133
    .local v58, hasValues:Z
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v67

    if-lt v0, v1, :cond_12

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v58, :cond_17

    const/16 v69, 0x1

    .line 173
    .local v69, showLabels:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v68

    .line 175
    .local v68, showGridX:Z
    if-nez v69, :cond_7

    if-eqz v68, :cond_9

    .line 176
    :cond_7
    const/4 v4, 0x0

    aget-wide v26, v62, v4

    const/4 v4, 0x0

    aget-wide v28, v60, v4

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getInnerXLabels()I

    move-result v5

    mul-int v30, v4, v5

    move-object/from16 v25, p0

    .line 176
    invoke-virtual/range {v25 .. v30}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    .line 178
    .local v26, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v61

    move/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getYLabels([D[DI)Ljava/util/Map;

    move-result-object v55

    .line 179
    .local v55, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move/from16 v30, v8

    .line 180
    .local v30, xLabelsLeft:I
    if-eqz v69, :cond_8

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 186
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v27

    .line 187
    const/4 v4, 0x0

    aget-wide v33, v74, v4

    const/4 v4, 0x0

    aget-wide v35, v62, v4

    const/4 v4, 0x0

    aget-wide v37, v60, v4

    move-object/from16 v25, p0

    move-object/from16 v28, p1

    move-object/from16 v29, p6

    .line 186
    invoke-virtual/range {v25 .. v38}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v33, p0

    move-object/from16 v34, v55

    move-object/from16 v35, p1

    move-object/from16 v36, p6

    move/from16 v37, v67

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v40, v32

    .line 189
    invoke-virtual/range {v33 .. v42}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 192
    if-eqz v69, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v70

    .line 195
    .local v70, size:F
    move-object/from16 v0, p6

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 196
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 197
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_1b

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v35

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    .line 201
    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float/2addr v4, v5

    add-float v37, v4, v70

    const/16 v39, 0x0

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    .line 200
    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v35

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v36, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v5

    add-float v37, v4, v5

    .line 204
    const/16 v39, 0x0

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    .line 203
    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 206
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v67

    if-lt v0, v1, :cond_18

    .line 228
    .end local v26           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v30           #xLabelsLeft:I
    .end local v55           #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v70           #size:F
    :cond_9
    :goto_7
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_1c

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v4

    float-to-int v4, v4

    add-int v49, p3, v4

    .line 230
    const/16 v54, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    move/from16 v50, p4

    move/from16 v51, p5

    move/from16 v52, v13

    move-object/from16 v53, p6

    .line 229
    invoke-virtual/range {v43 .. v54}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawLegend(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 239
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXAxisColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    int-to-float v0, v8

    move/from16 v34, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v9

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v33, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    const/16 v65, 0x0

    .line 244
    .local v65, rightAxis:Z
    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v67

    if-ge v0, v1, :cond_b

    if-eqz v65, :cond_1d

    .line 247
    :cond_b
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_1f

    .line 248
    int-to-float v0, v8

    move/from16 v34, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v8

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v33, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    if-eqz v65, :cond_c

    .line 250
    int-to-float v0, v9

    move/from16 v34, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v9

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v33, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    .end local v65           #rightAxis:Z
    :cond_c
    :goto_a
    if-eqz v66, :cond_0

    .line 258
    move/from16 v0, v56

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    .line 71
    .end local v23           #or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .end local v32           #bottom:I
    .end local v41           #yPixelsPerUnit:[D
    .end local v42           #minY:[D
    .end local v56           #angle:I
    .end local v58           #hasValues:Z
    .end local v60           #maxX:[D
    .end local v61           #maxY:[D
    .end local v62           #minX:[D
    .end local v66           #rotate:Z
    .end local v68           #showGridX:Z
    .end local v69           #showLabels:Z
    .end local v74           #xPixelsPerUnit:[D
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v22

    .line 70
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 89
    .restart local v23       #or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .restart local v32       #bottom:I
    .restart local v56       #angle:I
    :cond_e
    const/16 v66, 0x0

    goto/16 :goto_2

    .line 113
    .restart local v41       #yPixelsPerUnit:[D
    .restart local v42       #minY:[D
    .restart local v60       #maxX:[D
    .restart local v61       #maxY:[D
    .restart local v62       #minX:[D
    .restart local v66       #rotate:Z
    .restart local v74       #xPixelsPerUnit:[D
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v4

    aput-wide v4, v42, v22

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v4

    aput-wide v4, v61, v22

    .line 115
    aget-wide v4, v61, v22

    aget-wide v10, v42, v22

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_10

    .line 116
    sub-int v4, v32, v31

    int-to-double v4, v4

    aget-wide v10, v61, v22

    aget-wide v15, v42, v22

    sub-double/2addr v10, v15

    div-double/2addr v4, v10

    double-to-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v41, v22

    .line 120
    :cond_10
    if-lez v22, :cond_11

    .line 121
    const/4 v4, 0x0

    aget-wide v4, v74, v4

    aput-wide v4, v74, v22

    .line 122
    const/4 v4, 0x0

    aget-wide v4, v62, v4

    aput-wide v4, v62, v22

    .line 123
    const/4 v4, 0x0

    aget-wide v4, v60, v4

    aput-wide v4, v60, v22

    .line 112
    :cond_11
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 134
    .restart local v58       #hasValues:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-result-object v14

    .line 135
    .local v14, series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    invoke-virtual {v14}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_13

    .line 133
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 139
    :cond_13
    const/16 v58, 0x1

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    move-result-object v20

    check-cast v20, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

    .line 142
    .local v20, seriesRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v63, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v72, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v32

    int-to-double v5, v0

    aget-wide v10, v41, v22

    aget-wide v15, v42, v22

    mul-double/2addr v10, v15

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 146
    .local v21, yAxisValue:F
    monitor-enter v14

    .line 147
    :try_start_0
    aget-wide v15, v62, v22

    aget-wide v17, v60, v22

    .line 148
    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->isDisplayBoundingPoints()Z

    move-result v19

    .line 147
    invoke-virtual/range {v14 .. v19}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getRange(DDZ)Ljava/util/SortedMap;

    move-result-object v64

    .line 149
    .local v64, range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v24, -0x1

    .line 151
    .local v24, startIndex:I
    invoke-interface/range {v64 .. v64}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 164
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_14

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v63

    .line 166
    invoke-virtual/range {v15 .. v24}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawSeries(Lcom/cnlaunch/achartengineslim/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FILcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;I)V

    .line 146
    :cond_14
    monitor-exit v14

    goto :goto_b

    .end local v24           #startIndex:I
    .end local v64           #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 151
    .restart local v24       #startIndex:I
    .restart local v64       #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_15
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/Map$Entry;

    .line 152
    .local v71, value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v75

    .line 153
    .local v75, xValue:D
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v78

    .line 154
    .local v78, yValue:D
    if-gez v24, :cond_16

    .line 155
    move-wide/from16 v0, v75

    invoke-virtual {v14, v0, v1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getIndexForKey(D)I

    move-result v24

    .line 157
    :cond_16
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-object/from16 v0, v72

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface/range {v71 .. v71}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-object/from16 v0, v72

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    int-to-double v10, v8

    aget-wide v15, v74, v22

    aget-wide v17, v62, v22

    sub-double v17, v75, v17

    mul-double v15, v15, v17

    add-double/2addr v10, v15

    double-to-float v4, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    move/from16 v0, v32

    int-to-double v10, v0

    aget-wide v15, v41, v22

    aget-wide v17, v42, v22

    sub-double v17, v78, v17

    mul-double v15, v15, v17

    sub-double/2addr v10, v15

    double-to-float v4, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    .line 172
    .end local v14           #series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    .end local v20           #seriesRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    .end local v21           #yAxisValue:F
    .end local v24           #startIndex:I
    .end local v63           #points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v64           #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v71           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v72           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v75           #xValue:D
    .end local v78           #yValue:D
    :cond_17
    const/16 v69, 0x0

    goto/16 :goto_5

    .line 208
    .restart local v26       #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v30       #xLabelsLeft:I
    .restart local v55       #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .restart local v68       #showGridX:Z
    .restart local v69       #showLabels:Z
    .restart local v70       #size:F
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v57

    .line 210
    .local v57, axisAlign:Landroid/graphics/Paint$Align;
    const/high16 v4, 0x3fc0

    mul-float v77, v70, v4

    .line 211
    .local v77, yPadding:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_19

    const/high16 v4, 0x3f00

    mul-float v73, v70, v4

    .line 212
    .local v73, xPadding:F
    :goto_d
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v57

    if-ne v0, v4, :cond_1a

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v35

    int-to-float v4, v8

    sub-float v36, v4, v73

    move/from16 v0, v31

    int-to-float v4, v0

    sub-float v37, v4, v77

    const/high16 v39, -0x3d4c

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 206
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 211
    .end local v73           #xPadding:F
    :cond_19
    move/from16 v0, v70

    neg-float v4, v0

    const/high16 v5, 0x3fc0

    mul-float v73, v4, v5

    goto :goto_d

    .line 215
    .restart local v73       #xPadding:F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v35

    int-to-float v4, v9

    sub-float v36, v4, v73

    move/from16 v0, v31

    int-to-float v4, v0

    sub-float v37, v4, v77

    const/high16 v39, -0x3d4c

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_e

    .line 218
    .end local v57           #axisAlign:Landroid/graphics/Paint$Align;
    .end local v73           #xPadding:F
    .end local v77           #yPadding:F
    :cond_1b
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_9

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v35

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v36, v0

    .line 220
    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float v4, v4, v70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float v37, v4, v5

    const/high16 v39, -0x3d4c

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    .line 219
    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v35

    add-int/lit8 v4, v9, 0x14

    int-to-float v0, v4

    move/from16 v36, v0

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v37, v0

    const/16 v39, 0x0

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v35

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v36, v4, v70

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v31

    int-to-float v0, v4

    move/from16 v37, v0

    const/16 v39, 0x0

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v39}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_7

    .line 231
    .end local v26           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v30           #xLabelsLeft:I
    .end local v55           #allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v70           #size:F
    :cond_1c
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_a

    .line 232
    move/from16 v0, v56

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v4

    float-to-int v4, v4

    add-int v49, p3, v4

    .line 234
    const/16 v54, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v46, v7

    move/from16 v47, v8

    move/from16 v48, v9

    move/from16 v50, p4

    move/from16 v51, p5

    move/from16 v52, v13

    move-object/from16 v53, p6

    .line 233
    invoke-virtual/range {v43 .. v54}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawLegend(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 235
    move/from16 v0, v56

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_8

    .line 245
    .restart local v65       #rightAxis:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_1e

    const/16 v65, 0x1

    .line 244
    :goto_f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 245
    :cond_1e
    const/16 v65, 0x0

    goto :goto_f

    .line 252
    :cond_1f
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_c

    .line 253
    int-to-float v0, v9

    move/from16 v34, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v35, v0

    int-to-float v0, v9

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v33, p1

    move-object/from16 v38, p6

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/model/XYSeries;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V
    .locals 11
    .parameter "canvas"
    .parameter "series"
    .parameter "renderer"
    .parameter "paint"
    .parameter
    .parameter "seriesIndex"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/cnlaunch/achartengineslim/model/XYSeries;",
            "Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p5, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 588
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 589
    .local v9, previousPointX:F
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 590
    .local v10, previousPointY:F
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_1

    .line 625
    .end local v9           #previousPointX:F
    .end local v10           #previousPointY:F
    :cond_0
    return-void

    .line 591
    .restart local v9       #previousPointX:F
    .restart local v10       #previousPointY:F
    :cond_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_4

    .line 594
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 595
    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 597
    :cond_2
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {p2, v0}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 598
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 597
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 600
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    add-int/lit8 v2, p7, 0x1

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 601
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 600
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 603
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 604
    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 590
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    .line 606
    :cond_4
    const/4 v1, 0x2

    if-le v8, v1, :cond_3

    .line 610
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 611
    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 612
    :cond_5
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p7

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 613
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 612
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 614
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 615
    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto/16 :goto_1

    .line 620
    .end local v8           #k:I
    .end local v9           #previousPointX:F
    .end local v10           #previousPointY:F
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 621
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p7

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 622
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 621
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 620
    add-int/lit8 v8, v8, 0x2

    goto :goto_2
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 3
    .parameter "canvas"
    .parameter "renderer"
    .parameter "x"
    .parameter "y"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 881
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 882
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 883
    .local v0, r:Landroid/graphics/RectF;
    iput p4, v0, Landroid/graphics/RectF;->top:F

    .line 884
    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 885
    const/high16 v1, 0x41f0

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 886
    iget v1, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x4120

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 887
    invoke-virtual {p1, v0, p6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 888
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 890
    return-void
.end method

.method protected drawPoints(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FII)V
    .locals 0
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;",
            "FII)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p3, pointsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p0, p4}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->isRenderPoints(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)Z

    .line 845
    return-void
.end method

.method public drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FII)V
    .locals 24
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "renderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;",
            "FII)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p3, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    .line 703
    .local v12, lineWidth:F
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getLineWidth()F

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 704
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getFillOutsideLine()[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    move-result-object v8

    .line 705
    .local v8, fillOutsideLine:[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    array-length v0, v8

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 802
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getColor()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    sget-object v19, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 804
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 805
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 806
    return-void

    .line 705
    :cond_0
    aget-object v7, v8, v20

    .line 706
    .local v7, fill:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->NONE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 707
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getColor()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v9, fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getFillRange()[I

    move-result-object v15

    .line 711
    .local v15, range:[I
    if-nez v15, :cond_2

    .line 712
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 720
    :cond_1
    :goto_1
    invoke-static {}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type()[I

    move-result-object v19

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v22

    aget v19, v19, v22

    packed-switch v19, :pswitch_data_0

    .line 737
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "You have added a new type of filling but have not implemented."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 714
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v19

    const/16 v22, 0x0

    aget v22, v15, v22

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v19

    const/16 v22, 0x1

    aget v22, v15, v22

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 715
    const/16 v19, 0x0

    aget v19, v15, v19

    mul-int/lit8 v19, v19, 0x2

    const/16 v22, 0x1

    aget v22, v15, v22

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 722
    :pswitch_0
    move/from16 v16, p5

    .line 739
    .local v16, referencePoint:F
    :goto_2
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 740
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 741
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v6, boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v5, 0x0

    .line 743
    .local v5, add:Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 744
    .local v11, length:I
    if-lez v11, :cond_4

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 745
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpg-float v19, v19, v16

    if-ltz v19, :cond_5

    .line 746
    :cond_4
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 747
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpl-float v19, v19, v16

    if-lez v19, :cond_6

    .line 748
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    const/4 v5, 0x1

    .line 753
    :cond_6
    const/4 v10, 0x3

    .local v10, i:I
    :goto_3
    if-lt v10, v11, :cond_9

    .line 781
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 782
    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    .end local v5           #add:Z
    .end local v6           #boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10           #i:I
    .end local v11           #length:I
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 785
    .restart local v11       #length:I
    if-lez v11, :cond_8

    .line 786
    const/16 v22, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    const/high16 v23, 0x3f80

    add-float v19, v19, v23

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 787
    add-int/lit8 v19, v11, -0x2

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    add-int/lit8 v19, v11, 0x4

    move/from16 v0, v19

    if-lt v10, v0, :cond_13

    .line 797
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 798
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 705
    .end local v9           #fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10           #i:I
    .end local v11           #length:I
    .end local v15           #range:[I
    .end local v16           #referencePoint:F
    :cond_8
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_0

    .line 725
    .restart local v9       #fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v15       #range:[I
    :pswitch_1
    move/from16 v16, p5

    .line 726
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 728
    .end local v16           #referencePoint:F
    :pswitch_2
    move/from16 v16, p5

    .line 729
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 731
    .end local v16           #referencePoint:F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 732
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 734
    .end local v16           #referencePoint:F
    :pswitch_4
    const/16 v16, 0x0

    .line 735
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 754
    .restart local v5       #add:Z
    .restart local v6       #boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v10       #i:I
    .restart local v11       #length:I
    :cond_9
    add-int/lit8 v19, v10, -0x2

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 755
    .local v13, prevValue:F
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 757
    .local v17, value:F
    cmpg-float v19, v13, v16

    if-gez v19, :cond_a

    cmpl-float v19, v17, v16

    if-gtz v19, :cond_b

    :cond_a
    cmpl-float v19, v13, v16

    if-lez v19, :cond_10

    .line 758
    cmpg-float v19, v17, v16

    if-gez v19, :cond_10

    .line 759
    :cond_b
    add-int/lit8 v19, v10, -0x3

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 760
    .local v14, prevX:F
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 761
    .local v18, x:F
    sub-float v19, v18, v14

    sub-float v22, v16, v13

    mul-float v19, v19, v22

    sub-float v22, v17, v13

    div-float v19, v19, v22

    add-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    cmpl-float v19, v17, v16

    if-gtz v19, :cond_d

    .line 764
    :cond_c
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    cmpg-float v19, v17, v16

    if-gez v19, :cond_f

    .line 765
    :cond_d
    add-int/lit8 v10, v10, 0x2

    .line 766
    const/4 v5, 0x0

    .line 753
    .end local v14           #prevX:F
    .end local v18           #x:F
    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_3

    .line 768
    .restart local v14       #prevX:F
    .restart local v18       #x:F
    :cond_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const/4 v5, 0x1

    .line 772
    goto :goto_5

    .line 773
    .end local v14           #prevX:F
    .end local v18           #x:F
    :cond_10
    if-nez v5, :cond_12

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    cmpg-float v19, v17, v16

    if-ltz v19, :cond_12

    .line 774
    :cond_11
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    cmpl-float v19, v17, v16

    if-lez v19, :cond_e

    .line 775
    :cond_12
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 792
    .end local v5           #add:Z
    .end local v6           #boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v13           #prevValue:F
    .end local v17           #value:F
    :cond_13
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    const/16 v22, 0x0

    cmpg-float v19, v19, v22

    if-gez v19, :cond_14

    .line 793
    add-int/lit8 v19, v10, 0x1

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v9, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_14
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_4

    .line 720
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected drawSeries(Lcom/cnlaunch/achartengineslim/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FILcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;I)V
    .locals 21
    .parameter "series"
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
    .parameter "seriesIndex"
    .parameter "or"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/achartengineslim/model/XYSeries;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;",
            "FI",
            "Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p4, pointsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getStroke()Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;

    move-result-object v19

    .line 652
    .local v19, stroke:Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v15

    .line 653
    .local v15, cap:Landroid/graphics/Paint$Cap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v16

    .line 654
    .local v16, join:Landroid/graphics/Paint$Join;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v17

    .line 655
    .local v17, miter:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v18

    .line 656
    .local v18, pathEffect:Landroid/graphics/PathEffect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v20

    .line 657
    .local v20, style:Landroid/graphics/Paint$Style;
    if-eqz v19, :cond_1

    .line 658
    const/4 v6, 0x0

    .line 659
    .local v6, effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getIntervals()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 660
    new-instance v6, Landroid/graphics/DashPathEffect;

    .end local v6           #effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getIntervals()[F

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getPhase()F

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 662
    .restart local v6       #effect:Landroid/graphics/PathEffect;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getJoin()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getMiter()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .end local v6           #effect:Landroid/graphics/PathEffect;
    :cond_1
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p9

    .line 665
    invoke-virtual/range {v7 .. v14}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FII)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p9

    .line 666
    invoke-virtual/range {v7 .. v14}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawPoints(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FII)V

    .line 667
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesTextSize()F

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 668
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_4

    .line 669
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 673
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->isDisplayChartValues()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p7

    move/from16 v14, p9

    .line 675
    invoke-virtual/range {v7 .. v14}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawChartValuesText(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/model/XYSeries;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V

    .line 677
    :cond_2
    if-eqz v19, :cond_3

    move-object/from16 v7, p0

    move-object v8, v15

    move-object/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v20

    move-object/from16 v12, v18

    move-object/from16 v13, p3

    .line 678
    invoke-direct/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 680
    :cond_3
    return-void

    .line 671
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .parameter "canvas"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"
    .parameter "extraAngle"

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->getAngle()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float v0, v1, p6

    .line 281
    .local v0, angle:F
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 285
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 286
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 287
    neg-float v1, v0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 290
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 29
    .parameter
    .parameter "xTextLabelLocations"
    .parameter "canvas"
    .parameter "paint"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"
    .parameter "xPixelsPerUnit"
    .parameter "minX"
    .parameter "maxX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDDD)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v24

    .line 454
    .local v24, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v26

    .line 455
    .local v26, showLabels:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v25

    .line 456
    .local v25, showGridY:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowTickMarks()Z

    move-result v27

    .line 457
    .local v27, showTickMarks:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getInnerXLabels()I

    move-result v28

    .line 458
    .local v28, step:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, v26

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 484
    invoke-virtual/range {v5 .. v18}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 485
    return-void

    .line 459
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 460
    .local v21, label:D
    move/from16 v0, p5

    int-to-double v5, v0

    sub-double v7, v21, p10

    mul-double v7, v7, p8

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 461
    .local v4, xLabel:F
    if-eqz v26, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    move-wide/from16 v0, v21

    double-to-int v3, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v3, v1}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawLabelText(II)Z

    move-result v19

    .line 464
    .local v19, drawLabelText:Z
    if-eqz v27, :cond_1

    .line 465
    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v5, 0x4040

    div-float v23, v3, v5

    .line 468
    .local v23, labelLength:F
    :goto_1
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v3, v0

    add-float v7, v3, v23

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 470
    .end local v23           #labelLength:F
    :cond_1
    if-eqz v19, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelFormat()Ljava/text/NumberFormat;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    .line 474
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float v9, v3, v5

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move v8, v4

    move-object/from16 v10, p4

    .line 473
    invoke-virtual/range {v5 .. v11}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 476
    if-eqz v25, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getGridColor(I)I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 458
    .end local v19           #drawLabelText:Z
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 465
    .restart local v19       #drawLabelText:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    .line 466
    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v5, 0x4080

    div-float v23, v3, v5

    goto :goto_1
.end method

.method protected drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 15
    .parameter "xTextLabelLocations"
    .parameter "canvas"
    .parameter "paint"
    .parameter "showLabels"
    .parameter "left"
    .parameter "top"
    .parameter "bottom"
    .parameter "xPixelsPerUnit"
    .parameter "minX"
    .parameter "maxX"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGridX()Z

    move-result v11

    .line 512
    .local v11, showCustomTextGridX:Z
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowTickMarks()Z

    move-result v12

    .line 513
    .local v12, showTickMarks:Z
    if-eqz p4, :cond_0

    .line 514
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_1

    .line 531
    :cond_0
    return-void

    .line 515
    :cond_1
    aget-object v10, p1, v13

    .line 516
    .local v10, location:Ljava/lang/Double;
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, p10, v3

    if-gtz v1, :cond_3

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v3, p12

    if-gtz v1, :cond_3

    .line 517
    move/from16 v0, p5

    int-to-double v3, v0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v5, p10

    mul-double v5, v5, p8

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 518
    .local v2, xLabel:F
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    if-eqz v12, :cond_2

    .line 520
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object/from16 v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v10}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    .line 523
    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v3

    add-float v7, v1, v3

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p2

    move v6, v2

    move-object/from16 v8, p3

    .line 522
    invoke-virtual/range {v3 .. v9}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 524
    if-eqz v11, :cond_3

    .line 525
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getGridColor(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 515
    .end local v2           #xLabel:F
    :cond_3
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_0
.end method

.method protected drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 32
    .parameter
    .parameter "canvas"
    .parameter "paint"
    .parameter "maxScaleNumber"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "yPixelsPerUnit"
    .parameter "minY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIII[D[D)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v24

    .line 317
    .local v24, or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v25

    .line 318
    .local v25, showGridX:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v26

    .line 319
    .local v26, showLabels:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isShowTickMarks()Z

    move-result v27

    .line 320
    .local v27, showTickMarks:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 401
    return-void

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v29

    .line 322
    .local v29, yLabelAlign:Landroid/graphics/Paint$Align;
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 323
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    .line 324
    .local v31, yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v23

    .line 325
    .local v23, length:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelMap(I)Ljava/util/Map;

    move-result-object v30

    .line 326
    .local v30, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .local v19, j:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    .line 320
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYInnerLabels(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawLabelText(II)Z

    move-result v17

    .line 328
    .local v17, drawLabelText:Z
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 329
    .local v20, label:D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v16

    .line 330
    .local v16, axisAlign:Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const/16 v28, 0x1

    .line 331
    .local v28, textLabel:Z
    :goto_2
    move/from16 v0, p7

    int-to-double v4, v0

    aget-wide v7, p8, v18

    aget-wide v10, p9, v18

    sub-double v10, v20, v10

    mul-double/2addr v7, v10

    sub-double/2addr v4, v7

    double-to-float v6, v4

    .line 332
    .local v6, yLabel:F
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_e

    .line 333
    if-eqz v26, :cond_5

    if-nez v28, :cond_5

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_9

    .line 336
    if-eqz v27, :cond_2

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int v4, v4, p5

    int-to-float v5, v4

    move/from16 v0, p5

    int-to-float v7, v0

    move-object/from16 v4, p2

    move v8, v6

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 340
    :cond_2
    if-nez v17, :cond_3

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 341
    :cond_3
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v4

    neg-float v0, v4

    move/from16 v22, v0

    .line 343
    .local v22, labelPadding:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelFormat(I)Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, strShow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isDynamicShowOverrideText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 345
    move/from16 v0, p5

    int-to-float v4, v0

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCurrentCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v1, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 347
    :cond_4
    move/from16 v0, p5

    int-to-float v4, v0

    .line 348
    sub-float v10, v4, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v11, v6, v4

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 347
    invoke-virtual/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 368
    .end local v9           #strShow:Ljava/lang/String;
    .end local v22           #labelPadding:F
    :cond_5
    :goto_4
    if-eqz v25, :cond_6

    if-eqz v17, :cond_6

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getGridColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    move/from16 v0, p5

    int-to-float v11, v0

    move/from16 v0, p6

    int-to-float v13, v0

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 326
    :cond_6
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 330
    .end local v6           #yLabel:F
    .end local v28           #textLabel:Z
    :cond_7
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 342
    .restart local v6       #yLabel:F
    .restart local v28       #textLabel:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v22

    goto/16 :goto_3

    .line 352
    :cond_9
    if-eqz v27, :cond_a

    .line 353
    move/from16 v0, p6

    int-to-float v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int v4, v4, p6

    int-to-float v13, v4

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    :cond_a
    if-nez v17, :cond_b

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 356
    :cond_b
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v22

    .line 358
    .restart local v22       #labelPadding:F
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelFormat(I)Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v9

    .line 359
    .restart local v9       #strShow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isDynamicShowOverrideText()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCurrentCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v1, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 362
    :cond_c
    move/from16 v0, p6

    int-to-float v4, v0

    .line 363
    add-float v10, v4, v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v11, v6, v4

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 362
    invoke-virtual/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_4

    .line 357
    .end local v9           #strShow:Ljava/lang/String;
    .end local v22           #labelPadding:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v4

    neg-float v0, v4

    move/from16 v22, v0

    goto :goto_6

    .line 372
    :cond_e
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_6

    .line 373
    if-eqz v26, :cond_12

    if-nez v28, :cond_12

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    if-eqz v27, :cond_f

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    sub-int v4, p6, v4

    int-to-float v11, v4

    move/from16 v0, p6

    int-to-float v13, v0

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 378
    :cond_f
    if-nez v17, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 380
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelFormat(I)Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v9

    .line 381
    .restart local v9       #strShow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isDynamicShowOverrideText()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mCurrentCount:I

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v1, v5}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 386
    :cond_11
    add-int/lit8 v4, p6, 0xa

    int-to-float v4, v4

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    add-float v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v11, v6, v4

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 386
    invoke-virtual/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 392
    .end local v9           #strShow:Ljava/lang/String;
    :cond_12
    if-eqz v25, :cond_6

    if-eqz v17, :cond_6

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getGridColor(I)I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    if-eqz v27, :cond_6

    .line 395
    move/from16 v0, p6

    int-to-float v11, v0

    move/from16 v0, p5

    int-to-float v13, v0

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .parameter "seriesIndex"

    .prologue
    .line 872
    const/16 v0, 0x1e

    return v0
.end method

.method public getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->getDataStreamLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getYLabels([D[DI)Ljava/util/Map;
    .locals 8
    .parameter "minY"
    .parameter "maxY"
    .parameter "maxScaleNumber"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v0, allYLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 545
    return-object v0

    .line 542
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYInnerLabels(I)I

    move-result v4

    mul-int v2, v3, v4

    .line 543
    .local v2, lables:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v4, p1, v1

    aget-wide v6, p2, v1

    invoke-static {v4, v5, v6, v7, v2}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->getDataStreamLabels(DDI)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRenderPoints(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)Z
    .locals 1
    .parameter "renderer"

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method
