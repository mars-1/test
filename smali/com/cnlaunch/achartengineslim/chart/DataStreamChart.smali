.class public Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;
.super Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
.source "DataStreamChart.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

.field protected mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

.field protected mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

.field private mScale:F

.field private mScreenR:Landroid/graphics/Rect;

.field private mTranslate:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type()[I
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I

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
    sput-object v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type:[I

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

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;)V
    .locals 0
    .parameter "renderer"
    .parameter "dataset"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    .line 56
    iput-object p2, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    .line 58
    return-void
.end method

.method private drawLabelText(II)Z
    .locals 1
    .parameter "index"
    .parameter "step"

    .prologue
    .line 303
    rem-int v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FI)V
    .locals 24
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "renderer"
    .parameter "yAxisValue"
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
            "FI)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p3, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    .line 568
    .local v12, lineWidth:F
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getLineWidth()F

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 569
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getFillOutsideLine()[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    move-result-object v8

    .line 571
    .local v8, fillOutsideLine:[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    array-length v0, v8

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 668
    invoke-virtual/range {p4 .. p4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getColor()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    sget-object v19, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 670
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 671
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 672
    return-void

    .line 571
    :cond_0
    aget-object v7, v8, v20

    .line 572
    .local v7, fill:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->NONE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 573
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getColor()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v9, fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getFillRange()[I

    move-result-object v15

    .line 577
    .local v15, range:[I
    if-nez v15, :cond_2

    .line 578
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    :cond_1
    :goto_1
    invoke-static {}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->$SWITCH_TABLE$com$cnlaunch$achartengineslim$renderer$XYSeriesRenderer$FillOutsideLine$Type()[I

    move-result-object v19

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->ordinal()I

    move-result v22

    aget v19, v19, v22

    packed-switch v19, :pswitch_data_0

    .line 603
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "You have added a new type of filling but have not implemented."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 580
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

    .line 581
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

    .line 588
    :pswitch_0
    move/from16 v16, p5

    .line 605
    .local v16, referencePoint:F
    :goto_2
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 606
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 607
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v6, boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v5, 0x0

    .line 609
    .local v5, add:Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 610
    .local v11, length:I
    if-lez v11, :cond_4

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 611
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpg-float v19, v19, v16

    if-ltz v19, :cond_5

    .line 612
    :cond_4
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 613
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpl-float v19, v19, v16

    if-lez v19, :cond_6

    .line 614
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    const/4 v5, 0x1

    .line 619
    :cond_6
    const/4 v10, 0x3

    .local v10, i:I
    :goto_3
    if-lt v10, v11, :cond_9

    .line 647
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 648
    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    .end local v5           #add:Z
    .end local v6           #boundsPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10           #i:I
    .end local v11           #length:I
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 651
    .restart local v11       #length:I
    if-lez v11, :cond_8

    .line 652
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

    .line 653
    add-int/lit8 v19, v11, -0x2

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    add-int/lit8 v19, v11, 0x4

    move/from16 v0, v19

    if-lt v10, v0, :cond_13

    .line 663
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 664
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 571
    .end local v9           #fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v10           #i:I
    .end local v11           #length:I
    .end local v15           #range:[I
    .end local v16           #referencePoint:F
    :cond_8
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_0

    .line 591
    .restart local v9       #fillPoints:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v15       #range:[I
    :pswitch_1
    move/from16 v16, p5

    .line 592
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 594
    .end local v16           #referencePoint:F
    :pswitch_2
    move/from16 v16, p5

    .line 595
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 597
    .end local v16           #referencePoint:F
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    .line 598
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 600
    .end local v16           #referencePoint:F
    :pswitch_4
    const/16 v16, 0x0

    .line 601
    .restart local v16       #referencePoint:F
    goto/16 :goto_2

    .line 620
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

    .line 621
    .local v13, prevValue:F
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 623
    .local v17, value:F
    cmpg-float v19, v13, v16

    if-gez v19, :cond_a

    cmpl-float v19, v17, v16

    if-gtz v19, :cond_b

    :cond_a
    cmpl-float v19, v13, v16

    if-lez v19, :cond_10

    .line 624
    cmpg-float v19, v17, v16

    if-gez v19, :cond_10

    .line 625
    :cond_b
    add-int/lit8 v19, v10, -0x3

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 626
    .local v14, prevX:F
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 627
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

    .line 628
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ABOVE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    cmpl-float v19, v17, v16

    if-gtz v19, :cond_d

    .line 630
    :cond_c
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    cmpg-float v19, v17, v16

    if-gez v19, :cond_f

    .line 631
    :cond_d
    add-int/lit8 v10, v10, 0x2

    .line 632
    const/4 v5, 0x0

    .line 619
    .end local v14           #prevX:F
    .end local v18           #x:F
    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_3

    .line 634
    .restart local v14       #prevX:F
    .restart local v18       #x:F
    :cond_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    const/4 v5, 0x1

    .line 638
    goto :goto_5

    .line 639
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

    .line 640
    :cond_11
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->getType()Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-result-object v19

    sget-object v22, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_BELOW:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    cmpl-float v19, v17, v16

    if-lez v19, :cond_e

    .line 641
    :cond_12
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 658
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

    .line 659
    add-int/lit8 v19, v10, 0x1

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v9, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_14
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_4

    .line 586
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getLabelLinePos(Landroid/graphics/Paint$Align;)I
    .locals 2
    .parameter "align"

    .prologue
    .line 428
    const/4 v0, 0x4

    .line 429
    .local v0, pos:I
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 430
    neg-int v0, v0

    .line 432
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
    .line 445
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    return-object v1

    .line 446
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 447
    .local v0, label:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
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
    .line 416
    .local p1, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-super {p0, p2, p3, p4}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v1

    .line 423
    :goto_0
    return-object v1

    .line 419
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 423
    const-string/jumbo v1, ""

    goto :goto_0

    .line 419
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 420
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    cmpl-double v1, v3, p3

    if-nez v1, :cond_1

    .line 421
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
    .line 540
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 541
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 542
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 543
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 544
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    return-void
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter "canvas"
    .parameter "angle"
    .parameter "inverse"

    .prologue
    const/high16 v2, 0x3f80

    .line 466
    if-eqz p3, :cond_0

    .line 467
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    div-float v0, v2, v0

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 468
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    neg-float v0, p2

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/model/Point;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/Point;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 472
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    neg-float v0, v0

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 473
    iget v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    iget v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 70
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isAntialiasing()Z

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v13}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawBackground(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 67
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    div-int/lit8 v10, p5, 0x5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v11}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getAxisTitleTextSize()F

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I

    move-result v57

    .line 68
    .local v57, legendSize:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getMargins()[I

    move-result-object v58

    .line 69
    .local v58, margins:[I
    const/4 v9, 0x1

    aget v9, v58, v9

    add-int v44, p2, v9

    .line 70
    .local v44, left:I
    const/4 v9, 0x0

    aget v9, v58, v9

    add-int v36, p3, v9

    .line 71
    .local v36, top:I
    add-int v9, p2, p4

    const/4 v10, 0x3

    aget v10, v58, v10

    sub-int v45, v9, v10

    .line 72
    .local v45, right:I
    add-int v9, p3, p5

    const/4 v10, 0x2

    aget v10, v58, v10

    sub-int/2addr v9, v10

    sub-int v37, v9, v57

    .line 74
    .local v37, bottom:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScreenR:Landroid/graphics/Rect;

    if-nez v9, :cond_0

    .line 75
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScreenR:Landroid/graphics/Rect;

    .line 77
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScreenR:Landroid/graphics/Rect;

    move/from16 v0, v44

    move/from16 v1, v36

    move/from16 v2, v45

    move/from16 v3, v37

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v16

    .line 80
    .local v16, or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    sget-object v9, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 81
    sub-int v45, v45, v57

    .line 82
    add-int/lit8 v9, v57, -0x14

    add-int v37, v37, v9

    .line 84
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->getAngle()I

    move-result v55

    .line 85
    .local v55, angle:I
    const/16 v9, 0x5a

    move/from16 v0, v55

    if-ne v0, v9, :cond_5

    const/16 v61, 0x1

    .line 86
    .local v61, rotate:Z
    :goto_0
    move/from16 v0, p5

    int-to-float v9, v0

    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    .line 87
    sub-int v9, p4, p5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    .line 89
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mScale:F

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    const/high16 v10, -0x4080

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mTranslate:F

    .line 93
    :cond_2
    new-instance v9, Lcom/cnlaunch/achartengineslim/model/Point;

    add-int v10, p2, p4

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-int v11, p3, p5

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Lcom/cnlaunch/achartengineslim/model/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCenter:Lcom/cnlaunch/achartengineslim/model/Point;

    .line 94
    if-eqz v61, :cond_3

    .line 95
    move/from16 v0, v55

    int-to-float v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 99
    :cond_3
    const/16 v56, 0x0

    .line 100
    .local v56, hasValues:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    .line 101
    .local v4, series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXAxisMin()D

    move-result-wide v5

    .line 102
    .local v5, minX:D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXAxisMax()D

    move-result-wide v7

    .line 103
    .local v7, maxX:D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v25

    .line 104
    .local v25, minY:D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v27

    .line 111
    .local v27, maxY:D
    sub-int v9, v45, v44

    int-to-double v9, v9

    sub-double v11, v7, v5

    div-double v38, v9, v11

    .line 112
    .local v38, xPixelsPerUnit:D
    sub-int v9, v37, v36

    int-to-double v9, v9

    sub-double v11, v27, v25

    div-double v47, v9, v11

    .line 114
    .local v47, yPixelsPerUnit:D
    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getItemCount()I

    move-result v9

    if-nez v9, :cond_6

    .line 198
    :cond_4
    :goto_1
    return-void

    .line 85
    .end local v4           #series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    .end local v5           #minX:D
    .end local v7           #maxX:D
    .end local v25           #minY:D
    .end local v27           #maxY:D
    .end local v38           #xPixelsPerUnit:D
    .end local v47           #yPixelsPerUnit:D
    .end local v56           #hasValues:Z
    .end local v61           #rotate:Z
    :cond_5
    const/16 v61, 0x0

    goto/16 :goto_0

    .line 118
    .restart local v4       #series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    .restart local v5       #minX:D
    .restart local v7       #maxX:D
    .restart local v25       #minY:D
    .restart local v27       #maxY:D
    .restart local v38       #xPixelsPerUnit:D
    .restart local v47       #yPixelsPerUnit:D
    .restart local v56       #hasValues:Z
    .restart local v61       #rotate:Z
    :cond_6
    const/16 v56, 0x1

    .line 119
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getSeriesRendererAt(I)Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    move-result-object v14

    check-cast v14, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

    .line 121
    .local v14, seriesRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getItemCount()I

    move-result v9

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v13, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    move/from16 v0, v37

    int-to-float v9, v0

    move/from16 v0, v37

    int-to-double v10, v0

    mul-double v18, v47, v25

    add-double v10, v10, v18

    double-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 124
    .local v15, yAxisValue:F
    monitor-enter v4

    .line 125
    :try_start_0
    invoke-virtual {v14}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->isDisplayBoundingPoints()Z

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getRange(DDZ)Ljava/util/SortedMap;

    move-result-object v59

    .line 126
    .local v59, range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v17, 0x0

    .line 129
    .local v17, startIndex:I
    invoke-interface/range {v59 .. v59}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 142
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    .line 143
    invoke-virtual/range {v9 .. v17}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawSeries(Lcom/cnlaunch/achartengineslim/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FLcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;I)V

    .line 124
    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowLabels()Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v56, :cond_b

    const/16 v63, 0x1

    .line 152
    .local v63, showLabels:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowGridX()Z

    move-result v62

    .line 153
    .local v62, showGridX:Z
    if-nez v63, :cond_8

    if-eqz v62, :cond_4

    .line 156
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabels()I

    move-result v23

    .line 157
    .local v23, xLableCount:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabels()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v10}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYInnerLabels()I

    move-result v10

    mul-int v29, v9, v10

    .local v29, yLabelCount:I
    move-object/from16 v18, p0

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    .line 158
    invoke-virtual/range {v18 .. v23}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    .local v31, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v24, p0

    .line 159
    invoke-virtual/range {v24 .. v29}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getYLabels(DDI)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v67

    .line 166
    .local v67, yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v35, v44

    .line 167
    .local v35, xLabelsLeft:I
    if-eqz v63, :cond_9

    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsColor()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getLabelsTextSize()F

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 173
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v30, p0

    move-object/from16 v33, p1

    move-object/from16 v34, p6

    move-wide/from16 v40, v5

    move-wide/from16 v42, v7

    invoke-virtual/range {v30 .. v43}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v40, p0

    move-object/from16 v41, v67

    move-object/from16 v42, p1

    move-object/from16 v43, p6

    move/from16 v46, v37

    move-wide/from16 v49, v25

    .line 176
    invoke-virtual/range {v40 .. v50}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawYLabels(Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDD)V

    .line 181
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowAxes()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXAxisColor()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v49, p1

    move-object/from16 v54, p6

    invoke-virtual/range {v49 .. v54}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisColor()I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisAlign()Landroid/graphics/Paint$Align;

    move-result-object v9

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v9, v10, :cond_c

    const/16 v60, 0x1

    .line 186
    .local v60, rightAxis:Z
    :goto_4
    sget-object v9, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v16

    if-ne v0, v9, :cond_d

    .line 187
    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v49, p1

    move-object/from16 v54, p6

    invoke-virtual/range {v49 .. v54}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    if-eqz v60, :cond_4

    .line 189
    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v49, p1

    move-object/from16 v54, p6

    invoke-virtual/range {v49 .. v54}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 129
    .end local v23           #xLableCount:I
    .end local v29           #yLabelCount:I
    .end local v31           #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .end local v35           #xLabelsLeft:I
    .end local v60           #rightAxis:Z
    .end local v62           #showGridX:Z
    .end local v63           #showLabels:Z
    .end local v67           #yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :cond_a
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/util/Map$Entry;

    .line 130
    .local v64, value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v65

    .line 131
    .local v65, xValue:D
    invoke-interface/range {v64 .. v64}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v68

    .line 135
    .local v68, yValue:D
    move/from16 v0, v44

    int-to-double v11, v0

    sub-double v18, v65, v5

    mul-double v18, v18, v38

    add-double v11, v11, v18

    double-to-float v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    move/from16 v0, v37

    int-to-double v11, v0

    sub-double v18, v68, v25

    mul-double v18, v18, v47

    sub-double v11, v11, v18

    double-to-float v9, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 124
    .end local v17           #startIndex:I
    .end local v59           #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v64           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v65           #xValue:D
    .end local v68           #yValue:D
    :catchall_0
    move-exception v9

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 151
    .restart local v17       #startIndex:I
    .restart local v59       #range:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_b
    const/16 v63, 0x0

    goto/16 :goto_3

    .line 185
    .restart local v23       #xLableCount:I
    .restart local v29       #yLabelCount:I
    .restart local v31       #xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v35       #xLabelsLeft:I
    .restart local v62       #showGridX:Z
    .restart local v63       #showLabels:Z
    .restart local v67       #yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    :cond_c
    const/16 v60, 0x0

    goto/16 :goto_4

    .line 191
    .restart local v60       #rightAxis:Z
    :cond_d
    sget-object v9, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v16

    if-ne v0, v9, :cond_4

    .line 192
    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v49, p1

    move-object/from16 v54, p6

    invoke-virtual/range {v49 .. v54}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected drawBackground(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 1
    .parameter "renderer"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"
    .parameter "newColor"
    .parameter "color"

    .prologue
    .line 480
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 481
    return-void
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/model/XYSeries;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;I)V
    .locals 11
    .parameter "canvas"
    .parameter "series"
    .parameter "renderer"
    .parameter "paint"
    .parameter
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p5, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 696
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 697
    .local v9, previousPointX:F
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 698
    .local v10, previousPointY:F
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v8, v1, :cond_1

    .line 731
    .end local v9           #previousPointX:F
    .end local v10           #previousPointY:F
    :cond_0
    return-void

    .line 699
    .restart local v9       #previousPointX:F
    .restart local v10       #previousPointY:F
    :cond_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_4

    .line 701
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

    .line 702
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

    .line 704
    :cond_2
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {p2, v0}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 705
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

    .line 704
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 707
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    add-int/lit8 v2, p6, 0x1

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 708
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

    .line 707
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 710
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 711
    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 698
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    .line 713
    :cond_4
    const/4 v1, 0x2

    if-le v8, v1, :cond_3

    .line 716
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

    .line 717
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

    .line 718
    :cond_5
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p6

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 719
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

    .line 718
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 720
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 721
    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto/16 :goto_1

    .line 726
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

    .line 727
    invoke-virtual {p3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p6

    invoke-virtual {p2, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    .line 728
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

    .line 727
    invoke-virtual/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 726
    add-int/lit8 v8, v8, 0x2

    goto :goto_2
.end method

.method public drawLegendShape(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "renderer"
    .parameter "x"
    .parameter "y"
    .parameter "seriesIndex"
    .parameter "paint"

    .prologue
    .line 771
    return-void
.end method

.method protected drawSeries(Lcom/cnlaunch/achartengineslim/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FLcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;I)V
    .locals 20
    .parameter "series"
    .parameter "canvas"
    .parameter "paint"
    .parameter
    .parameter "seriesRenderer"
    .parameter "yAxisValue"
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
            "F",
            "Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p4, pointsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getStroke()Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;

    move-result-object v18

    .line 508
    .local v18, stroke:Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v14

    .line 509
    .local v14, cap:Landroid/graphics/Paint$Cap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v15

    .line 510
    .local v15, join:Landroid/graphics/Paint$Join;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v16

    .line 511
    .local v16, miter:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v17

    .line 512
    .local v17, pathEffect:Landroid/graphics/PathEffect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v19

    .line 513
    .local v19, style:Landroid/graphics/Paint$Style;
    if-eqz v18, :cond_1

    .line 514
    const/4 v6, 0x0

    .line 515
    .local v6, effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getIntervals()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    new-instance v6, Landroid/graphics/DashPathEffect;

    .end local v6           #effect:Landroid/graphics/PathEffect;
    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getIntervals()[F

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getPhase()F

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 518
    .restart local v6       #effect:Landroid/graphics/PathEffect;
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getJoin()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/cnlaunch/achartengineslim/renderer/BasicStroke;->getMiter()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .end local v6           #effect:Landroid/graphics/PathEffect;
    :cond_1
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    .line 521
    invoke-direct/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;FI)V

    .line 524
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->getChartValuesTextSize()F

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 525
    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, p7

    if-ne v0, v1, :cond_4

    .line 526
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 530
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->isDisplayChartValues()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
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

    move/from16 v13, p8

    .line 532
    invoke-virtual/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawChartValuesText(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/model/XYSeries;Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;I)V

    .line 534
    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v7, p0

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v17

    move-object/from16 v13, p3

    .line 535
    invoke-direct/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 537
    :cond_3
    return-void

    .line 528
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

    .line 751
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->getAngle()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float v0, v1, p6

    .line 752
    .local v0, angle:F
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 756
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 757
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 758
    neg-float v1, v0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 761
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 26
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
    .line 226
    .local p1, xLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 227
    .local v22, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowLabels()Z

    move-result v24

    .line 228
    .local v24, showLabels:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowGridY()Z

    move-result v23

    .line 229
    .local v23, showGridY:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowTickMarks()Z

    move-result v25

    .line 230
    .local v25, showTickMarks:Z
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, v24

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 248
    invoke-virtual/range {v5 .. v18}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 249
    return-void

    .line 231
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 232
    .local v20, label:D
    move/from16 v0, p5

    int-to-double v5, v0

    sub-double v7, v20, p10

    mul-double v7, v7, p8

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 233
    .local v4, xLabel:F
    if-eqz v24, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    if-eqz v25, :cond_1

    .line 236
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getLabelsTextSize()F

    move-result v6

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    add-float v7, v3, v6

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    :cond_1
    rem-int/lit8 v3, v19, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelFormat()Ljava/text/NumberFormat;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    .line 240
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float v9, v3, v5

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsAngle()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move v8, v4

    move-object/from16 v10, p4

    .line 239
    invoke-virtual/range {v5 .. v11}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 243
    :cond_2
    if-eqz v23, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getGridColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0
.end method

.method protected drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 13
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
    .line 275
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowCustomTextGridX()Z

    move-result v9

    .line 276
    .local v9, showCustomTextGridX:Z
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowTickMarks()Z

    move-result v10

    .line 277
    .local v10, showTickMarks:Z
    if-eqz p4, :cond_0

    .line 278
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    array-length v12, p1

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-lt v11, v12, :cond_1

    .line 297
    :cond_0
    return-void

    .line 279
    :cond_1
    aget-object v8, p1, v11

    .line 280
    .local v8, location:Ljava/lang/Double;
    const/4 v7, 0x1

    .line 281
    .local v7, i:I
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, p10, v3

    if-gtz v1, :cond_3

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v3, p12

    if-gtz v1, :cond_3

    .line 282
    move/from16 v0, p5

    int-to-double v3, v0

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v5, p10

    mul-double v5, v5, p8

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 283
    .local v2, xLabel:F
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    if-eqz v10, :cond_2

    .line 285
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 290
    if-eqz v9, :cond_3

    .line 291
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    .end local v2           #xLabel:F
    :cond_3
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0
.end method

.method protected drawYLabels(Ljava/util/List;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDD)V
    .locals 31
    .parameter
    .parameter "canvas"
    .parameter "paint"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "yPixelsPerUnit"
    .parameter "minY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDD)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, yLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v25

    .line 331
    .local v25, or:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowGridX()Z

    move-result v26

    .line 332
    .local v26, showGridX:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowLabels()Z

    move-result v27

    .line 333
    .local v27, showLabels:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isShowTickMarks()Z

    move-result v28

    .line 334
    .local v28, showTickMarks:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 335
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v24

    .line 336
    .local v24, length:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v30

    .line 337
    .local v30, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .local v21, j:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 413
    return-void

    .line 338
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYInnerLabels()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawLabelText(II)Z

    move-result v20

    .line 339
    .local v20, drawLabelText:Z
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 340
    .local v22, label:D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisAlign()Landroid/graphics/Paint$Align;

    move-result-object v19

    .line 341
    .local v19, axisAlign:Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v29, 0x1

    .line 342
    .local v29, textLabel:Z
    :goto_1
    move/from16 v0, p6

    int-to-double v4, v0

    sub-double v7, v22, p9

    mul-double v7, v7, p7

    sub-double/2addr v4, v7

    double-to-float v6, v4

    .line 343
    .local v6, yLabel:F
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_a

    .line 344
    if-eqz v27, :cond_3

    if-nez v29, :cond_3

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsColor()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_7

    .line 347
    if-eqz v28, :cond_1

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int v4, v4, p4

    int-to-float v5, v4

    move/from16 v0, p4

    int-to-float v7, v0

    move-object/from16 v4, p2

    move v8, v6

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 352
    :cond_1
    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelFormat()Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, strText:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isDynamicShowOverrideText()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 356
    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCurrentCount:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v1, v5}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 363
    :goto_2
    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    sub-float v10, v4, v5

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v11, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsAngle()F

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    .line 362
    invoke-virtual/range {v7 .. v13}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 378
    .end local v9           #strText:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v26, :cond_4

    if-eqz v20, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    move/from16 v0, p4

    int-to-float v11, v0

    move/from16 v0, p5

    int-to-float v13, v0

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    :cond_4
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 341
    .end local v6           #yLabel:F
    .end local v29           #textLabel:Z
    :cond_5
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 359
    .restart local v6       #yLabel:F
    .restart local v9       #strText:Ljava/lang/String;
    .restart local v29       #textLabel:Z
    :cond_6
    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v1}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 368
    .end local v9           #strText:Ljava/lang/String;
    :cond_7
    if-eqz v28, :cond_8

    .line 369
    move/from16 v0, p5

    int-to-float v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int v4, v4, p5

    int-to-float v13, v4

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    :cond_8
    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 372
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelFormat()Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p5

    int-to-float v4, v0

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    add-float v13, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v14, v6, v4

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsAngle()F

    move-result v16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    .line 372
    invoke-virtual/range {v10 .. v16}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_3

    .line 382
    :cond_a
    sget-object v4, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_4

    .line 383
    if-eqz v27, :cond_d

    if-nez v29, :cond_d

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsColor()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    if-eqz v28, :cond_b

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    sub-int v4, p5, v4

    int-to-float v11, v4

    move/from16 v0, p5

    int-to-float v13, v0

    move-object/from16 v10, p2

    move v12, v6

    move v14, v6

    move-object/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 388
    :cond_b
    if-nez v20, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 389
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelFormat()Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getYLabel(Ljava/util/Map;Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, strShow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isDynamicShowOverrideText()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 391
    add-int/lit8 v4, p5, 0xa

    int-to-float v4, v4

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mCurrentCount:I

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v4, v1, v5}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v12

    .line 398
    :goto_5
    add-int/lit8 v4, p5, 0xa

    int-to-float v4, v4

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    add-float v13, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v14, v6, v4

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsAngle()F

    move-result v16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    .line 398
    invoke-virtual/range {v10 .. v16}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 405
    .end local v12           #strShow:Ljava/lang/String;
    :cond_d
    if-eqz v26, :cond_4

    if-eqz v20, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    if-eqz v28, :cond_4

    .line 408
    move/from16 v0, p5

    int-to-float v14, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v13, p2

    move v15, v6

    move/from16 v17, v6

    move-object/from16 v18, p3

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 395
    .restart local v12       #strShow:Ljava/lang/String;
    :cond_e
    add-int/lit8 v4, p5, 0xa

    int-to-float v4, v4

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelsPadding()F

    move-result v5

    add-float/2addr v4, v5

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v4, v1}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5
.end method

.method public getLegendShapeWidth(I)I
    .locals 1
    .parameter "seriesIndex"

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    return-object v0
.end method

.method public bridge synthetic getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;->getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    move-result-object v0

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
    .line 436
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->getDataStreamLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getYLabels(DDI)Ljava/util/List;
    .locals 1
    .parameter "minY"
    .parameter "maxY"
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
    .line 441
    invoke-static {p1, p2, p3, p4, p5}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
