.class public abstract Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final TIMER_OUT_FOR_REFRESH_OVERRIDE_TEXT:I

.field mCurrentCount:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerOut:I

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->TIMER_OUT_FOR_REFRESH_OVERRIDE_TEXT:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mCurrentCount:I

    .line 55
    iput v1, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerOut:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimer:Ljava/util/Timer;

    .line 42
    return-void
.end method

.method private static calculateDrawPoints(FFFFII)[F
    .locals 8
    .parameter "p1x"
    .parameter "p1y"
    .parameter "p2x"
    .parameter "p2y"
    .parameter "screenHeight"
    .parameter "screenWidth"

    .prologue
    const/4 v7, 0x0

    .line 249
    int-to-float v5, p4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    .line 251
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 252
    .local v4, m:F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 253
    .local v0, drawP1x:F
    int-to-float v1, p4

    .line 255
    .local v1, drawP1y:F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_2

    .line 258
    const/4 v0, 0x0

    .line 259
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    .line 283
    .end local v4           #m:F
    :cond_0
    :goto_0
    int-to-float v5, p4

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7

    .line 284
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 285
    .restart local v4       #m:F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 286
    .local v2, drawP2x:F
    int-to-float v3, p4

    .line 287
    .local v3, drawP2y:F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_6

    .line 288
    const/4 v2, 0x0

    .line 289
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    .line 311
    .end local v4           #m:F
    :cond_1
    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v3, v5, v6

    return-object v5

    .line 260
    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .restart local v4       #m:F
    :cond_2
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 263
    int-to-float v0, p5

    .line 264
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    .line 266
    goto :goto_0

    .end local v0           #drawP1x:F
    .end local v1           #drawP1y:F
    .end local v4           #m:F
    :cond_3
    cmpg-float v5, p1, v7

    if-gez v5, :cond_5

    .line 267
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 268
    .restart local v4       #m:F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 269
    .restart local v0       #drawP1x:F
    const/4 v1, 0x0

    .line 270
    .restart local v1       #drawP1y:F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_4

    .line 271
    const/4 v0, 0x0

    .line 272
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    .line 273
    goto :goto_0

    :cond_4
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 274
    int-to-float v0, p5

    .line 275
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    .line 277
    goto :goto_0

    .line 279
    .end local v0           #drawP1x:F
    .end local v1           #drawP1y:F
    .end local v4           #m:F
    :cond_5
    move v0, p0

    .line 280
    .restart local v0       #drawP1x:F
    move v1, p1

    .restart local v1       #drawP1y:F
    goto :goto_0

    .line 290
    .restart local v2       #drawP2x:F
    .restart local v3       #drawP2y:F
    .restart local v4       #m:F
    :cond_6
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 291
    int-to-float v2, p5

    .line 292
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    .line 294
    goto :goto_1

    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .end local v4           #m:F
    :cond_7
    cmpg-float v5, p3, v7

    if-gez v5, :cond_9

    .line 295
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 296
    .restart local v4       #m:F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 297
    .restart local v2       #drawP2x:F
    const/4 v3, 0x0

    .line 298
    .restart local v3       #drawP2y:F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_8

    .line 299
    const/4 v2, 0x0

    .line 300
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    .line 301
    goto :goto_1

    :cond_8
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 302
    int-to-float v2, p5

    .line 303
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    .line 305
    goto :goto_1

    .line 307
    .end local v2           #drawP2x:F
    .end local v3           #drawP2y:F
    .end local v4           #m:F
    :cond_9
    move v2, p2

    .line 308
    .restart local v2       #drawP2x:F
    move v3, p3

    .restart local v3       #drawP2y:F
    goto/16 :goto_1
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method protected drawBackground(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
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
    .line 91
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isApplyBackgroundColor()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 92
    :cond_0
    if-eqz p8, :cond_2

    .line 93
    invoke-virtual {p7, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p4, p6

    int-to-float v4, v0

    move-object v0, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V
    .locals 32
    .parameter "canvas"
    .parameter "labelText"
    .parameter "renderer"
    .parameter
    .parameter "centerX"
    .parameter "centerY"
    .parameter "shortRadius"
    .parameter "longRadius"
    .parameter "currentAngle"
    .parameter "angle"
    .parameter "left"
    .parameter "right"
    .parameter "color"
    .parameter "paint"
    .parameter "line"
    .parameter "display"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;IIFFFFIII",
            "Landroid/graphics/Paint;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p4, prevLabelsBounds:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p16, :cond_4

    .line 531
    :cond_0
    move-object/from16 v0, p14

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    const/high16 v5, 0x42b4

    const/high16 v6, 0x4000

    div-float v6, p10, v6

    add-float v6, v6, p9

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 533
    .local v19, rAngle:D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 534
    .local v21, sinValue:D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 535
    .local v11, cosValue:D
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 536
    .local v26, x1:I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 537
    .local v29, y1:I
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 538
    .local v27, x2:I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 540
    .local v30, y2:I
    invoke-virtual/range {p3 .. p3}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v23

    .line 541
    .local v23, size:F
    const/high16 v5, 0x4000

    div-float v5, v23, v5

    const/high16 v6, 0x4120

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 542
    .local v13, extra:F
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 543
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 544
    neg-float v13, v13

    .line 545
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 547
    :cond_1
    move/from16 v0, v27

    int-to-float v5, v0

    add-float v28, v5, v13

    .line 548
    .local v28, xLabel:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    .line 549
    .local v31, yLabel:F
    move/from16 v0, p12

    int-to-float v5, v0

    sub-float v24, v5, v28

    .line 550
    .local v24, width:F
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 551
    move/from16 v0, p11

    int-to-float v5, v0

    sub-float v24, v28, v5

    .line 553
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, p14

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p2

    .line 554
    move-object/from16 v0, p14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 555
    .local v25, widthLabel:F
    const/16 v17, 0x0

    .line 556
    .local v17, okBounds:Z
    :goto_0
    if-nez v17, :cond_3

    if-nez p15, :cond_5

    .line 569
    :cond_3
    if-eqz p15, :cond_a

    .line 570
    const/high16 v5, 0x4000

    div-float v5, v23, v5

    sub-float v5, v31, v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 571
    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 572
    move/from16 v0, v27

    int-to-float v6, v0

    move/from16 v0, v30

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-float v8, v5, v13

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 576
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v28

    move/from16 v3, v31

    move-object/from16 v4, p14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    if-eqz p15, :cond_4

    .line 578
    new-instance v5, Landroid/graphics/RectF;

    add-float v6, v28, v25

    add-float v7, v31, v23

    move/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    .end local v11           #cosValue:D
    .end local v13           #extra:F
    .end local v17           #okBounds:Z
    .end local v19           #rAngle:D
    .end local v21           #sinValue:D
    .end local v23           #size:F
    .end local v24           #width:F
    .end local v25           #widthLabel:F
    .end local v26           #x1:I
    .end local v27           #x2:I
    .end local v28           #xLabel:F
    .end local v29           #y1:I
    .end local v30           #y2:I
    .end local v31           #yLabel:F
    :cond_4
    return-void

    .line 557
    .restart local v11       #cosValue:D
    .restart local v13       #extra:F
    .restart local v17       #okBounds:Z
    .restart local v19       #rAngle:D
    .restart local v21       #sinValue:D
    .restart local v23       #size:F
    .restart local v24       #width:F
    .restart local v25       #widthLabel:F
    .restart local v26       #x1:I
    .restart local v27       #x2:I
    .restart local v28       #xLabel:F
    .restart local v29       #y1:I
    .restart local v30       #y2:I
    .restart local v31       #yLabel:F
    :cond_5
    const/4 v14, 0x0

    .line 558
    .local v14, intersects:Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    .line 559
    .local v16, length:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    if-eqz v14, :cond_7

    .line 566
    :cond_6
    if-eqz v14, :cond_9

    const/16 v17, 0x0

    :goto_3
    goto :goto_0

    .line 560
    :cond_7
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/RectF;

    .line 561
    .local v18, prevLabelBounds:Landroid/graphics/RectF;
    add-float v5, v28, v25

    add-float v6, v31, v23

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 562
    const/4 v14, 0x1

    .line 563
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 559
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 566
    .end local v18           #prevLabelBounds:Landroid/graphics/RectF;
    :cond_9
    const/16 v17, 0x1

    goto :goto_3

    .line 574
    .end local v14           #intersects:Z
    .end local v15           #j:I
    .end local v16           #length:I
    :cond_a
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1
.end method

.method protected drawLegend(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I
    .locals 27
    .parameter "canvas"
    .parameter "renderer"
    .parameter "titles"
    .parameter "left"
    .parameter "right"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "legendSize"
    .parameter "paint"
    .parameter "calculate"

    .prologue
    .line 121
    const/high16 v23, 0x4200

    .line 122
    .local v23, size:F
    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    move/from16 v0, p4

    int-to-float v8, v0

    .line 124
    .local v8, currentX:F
    add-int v5, p6, p8

    sub-int v5, v5, p9

    int-to-float v5, v5

    add-float v9, v5, v23

    .line 125
    .local v9, currentY:F
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    move-object/from16 v0, p3

    array-length v5, v0

    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 128
    .local v22, sLength:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    .line 169
    .end local v8           #currentX:F
    .end local v9           #currentY:F
    .end local v10           #i:I
    .end local v22           #sLength:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    add-float v5, v5, v23

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5

    .line 129
    .restart local v8       #currentX:F
    .restart local v9       #currentY:F
    .restart local v10       #i:I
    .restart local v22       #sLength:I
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    move-result-object v7

    .line 130
    .local v7, r:Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getLegendShapeWidth(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v19, v0

    .line 131
    .local v19, lineSize:F
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;->isShowLegendItem()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    aget-object v13, p3, v10

    .line 133
    .local v13, text:Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v5, v0

    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 134
    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v26, v0

    .line 139
    .local v26, widths:[F
    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 140
    const/16 v24, 0x0

    .line 141
    .local v24, sum:F
    move-object/from16 v0, v26

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_8

    .line 144
    const/high16 v5, 0x4120

    add-float v5, v5, v19

    add-float v18, v5, v24

    .line 145
    .local v18, extraSize:F
    add-float v17, v8, v18

    .line 147
    .local v17, currentWidth:F
    if-lez v10, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getExceed(FLcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    move/from16 v0, p4

    int-to-float v8, v0

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    const/high16 v6, 0x4000

    div-float v6, v19, v6

    add-float/2addr v5, v6

    add-float/2addr v9, v5

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    add-float v23, v23, v5

    .line 151
    add-float v17, v8, v18

    .line 153
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getExceed(FLcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 154
    move/from16 v0, p5

    int-to-float v5, v0

    sub-float/2addr v5, v8

    sub-float v5, v5, v19

    const/high16 v6, 0x4120

    sub-float v20, v5, v6

    .line 155
    .local v20, maxWidth:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->isVertical(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    move/from16 v0, p7

    int-to-float v5, v0

    sub-float/2addr v5, v8

    sub-float v5, v5, v19

    const/high16 v6, 0x4120

    sub-float v20, v5, v6

    .line 158
    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p10

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v13, v5, v1, v2}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v21

    .line 159
    .local v21, nr:I
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 161
    .end local v20           #maxWidth:F
    .end local v21           #nr:I
    :cond_4
    if-nez p11, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p10

    .line 162
    invoke-virtual/range {v5 .. v11}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->drawLegendShape(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V

    .line 163
    add-float v5, v8, v19

    const/high16 v6, 0x40a0

    add-float v14, v5, v6

    const/high16 v5, 0x40a0

    add-float v15, v9, v5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p10

    invoke-virtual/range {v11 .. v16}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_5
    add-float v8, v8, v18

    .line 128
    .end local v13           #text:Ljava/lang/String;
    .end local v17           #currentWidth:F
    .end local v18           #extraSize:F
    .end local v24           #sum:F
    .end local v26           #widths:[F
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 136
    .restart local v13       #text:Ljava/lang/String;
    :cond_7
    const v5, -0x333334

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 141
    .restart local v24       #sum:F
    .restart local v26       #widths:[F
    :cond_8
    aget v25, v26, v5

    .line 142
    .local v25, value:F
    add-float v24, v24, v25

    .line 141
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method public abstract drawLegendShape(Landroid/graphics/Canvas;Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
.end method

.method protected drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V
    .locals 10
    .parameter "canvas"
    .parameter
    .parameter "paint"
    .parameter "circular"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Paint;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, points:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 324
    .local v8, path:Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 325
    .local v4, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 328
    .local v5, width:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 332
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 331
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 333
    .local v9, tempDrawPoints:[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 334
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 337
    .local v7, length:I
    const/4 v6, 0x4

    .local v6, i:I
    :goto_1
    if-lt v6, v7, :cond_2

    .line 349
    if-eqz p4, :cond_1

    .line 350
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 352
    :cond_1
    invoke-virtual {p1, v8, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 338
    :cond_2
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 339
    :cond_3
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 337
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 342
    :cond_5
    add-int/lit8 v0, v6, -0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, v6, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 343
    add-int/lit8 v3, v6, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 342
    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 344
    if-nez p4, :cond_6

    .line 345
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 347
    :cond_6
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method

.method protected drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V
    .locals 10
    .parameter "canvas"
    .parameter "points"
    .parameter "paint"
    .parameter "circular"

    .prologue
    .line 364
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 365
    .local v8, path:Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 366
    .local v4, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 369
    .local v5, width:I
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 373
    .local v9, tempDrawPoints:[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 376
    array-length v7, p2

    .line 377
    .local v7, length:I
    const/4 v6, 0x4

    .local v6, i:I
    :goto_1
    if-lt v6, v7, :cond_2

    .line 389
    if-eqz p4, :cond_1

    .line 390
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    :cond_1
    invoke-virtual {p1, v8, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 378
    :cond_2
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 379
    :cond_3
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 377
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 382
    :cond_5
    add-int/lit8 v0, v6, -0x2

    aget v0, p2, v0

    add-int/lit8 v1, v6, -0x1

    aget v1, p2, v1

    aget v2, p2, v6

    add-int/lit8 v3, v6, 0x1

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 384
    if-nez p4, :cond_6

    .line 385
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    :cond_6
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2
.end method

.method protected drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    const-string/jumbo v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, lines:[Ljava/lang/String;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .local v2, rect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 186
    .local v3, yOff:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_1

    .line 192
    .end local v0           #i:I
    .end local v1           #lines:[Ljava/lang/String;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #yOff:I
    :cond_0
    return-void

    .line 187
    .restart local v0       #i:I
    .restart local v1       #lines:[Ljava/lang/String;
    .restart local v2       #rect:Landroid/graphics/Rect;
    .restart local v3       #yOff:I
    :cond_1
    aget-object v4, v1, v0

    int-to-float v5, v3

    add-float/2addr v5, p4

    invoke-virtual {p1, v4, p3, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    aget-object v4, v1, v0

    const/4 v5, 0x0

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p5, v4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 189
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x5

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDynamicShowText(Ljava/lang/String;FLandroid/graphics/Paint;I)Ljava/lang/String;
    .locals 10
    .parameter "text"
    .parameter "width"
    .parameter "paint"
    .parameter "currentTime"

    .prologue
    const/4 v9, 0x0

    .line 441
    move-object v4, p1

    .line 442
    .local v4, newText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 443
    .local v3, length:I
    if-nez v3, :cond_0

    move-object v5, v4

    .line 485
    .end local v4           #newText:Ljava/lang/String;
    .local v5, newText:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 445
    .end local v5           #newText:Ljava/lang/String;
    .restart local v4       #newText:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 446
    .local v1, diff:I
    :goto_1
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    cmpl-float v7, v7, p2

    if-lez v7, :cond_1

    if-lt v1, v3, :cond_2

    .line 450
    :cond_1
    if-nez v1, :cond_3

    move-object v5, v4

    .line 451
    .end local v4           #newText:Ljava/lang/String;
    .restart local v5       #newText:Ljava/lang/String;
    goto :goto_0

    .line 447
    .end local v5           #newText:Ljava/lang/String;
    .restart local v4       #newText:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 448
    sub-int v7, v3, v1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 453
    :cond_3
    if-ne v1, v3, :cond_5

    .line 454
    add-int/lit8 v7, v1, 0x1

    rem-int v7, p4, v7

    add-int/lit8 v8, v1, 0x1

    rem-int v8, p4, v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_2
    move-object v5, v4

    .line 485
    .end local v4           #newText:Ljava/lang/String;
    .restart local v5       #newText:Ljava/lang/String;
    goto :goto_0

    .line 457
    .end local v5           #newText:Ljava/lang/String;
    .restart local v4       #newText:Ljava/lang/String;
    :cond_5
    sub-int v6, v3, v1

    .line 458
    .local v6, subLength:I
    div-int/lit8 v7, p4, 0x2

    add-int/lit8 v8, v3, 0x2

    rem-int v2, v7, v8

    .line 459
    .local v2, k:I
    add-int/lit8 v7, v1, 0x1

    if-ge v2, v7, :cond_6

    .line 460
    add-int v7, v2, v6

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 461
    goto :goto_2

    .line 463
    :cond_6
    add-int/lit8 v7, v3, -0x1

    if-gt v2, v7, :cond_9

    .line 464
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, addEmpty:I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_7

    const/4 v7, 0x2

    if-lt v0, v7, :cond_8

    .line 470
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    goto :goto_2

    .line 467
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 474
    .end local v0           #addEmpty:I
    :cond_9
    if-ne v2, v3, :cond_a

    .line 475
    const-string/jumbo v4, "\u3000\u3000"

    .line 476
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 477
    goto :goto_2

    .line 478
    :cond_a
    add-int/lit8 v7, v3, 0x1

    if-ne v2, v7, :cond_4

    .line 479
    const-string/jumbo v4, "\u3000"

    .line 480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method protected getExceed(FLcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;II)Z
    .locals 4
    .parameter "currentWidth"
    .parameter "renderer"
    .parameter "right"
    .parameter "width"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    int-to-float v3, p3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 205
    .local v0, exceed:Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->isVertical(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    int-to-float v3, p4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    move v0, v1

    .line 208
    :cond_0
    :goto_1
    return v0

    .end local v0           #exceed:Z
    :cond_1
    move v0, v2

    .line 204
    goto :goto_0

    .restart local v0       #exceed:Z
    :cond_2
    move v0, v2

    .line 206
    goto :goto_1
.end method

.method public getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "width"
    .parameter "paint"

    .prologue
    .line 425
    move-object v2, p1

    .line 426
    .local v2, newText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 427
    .local v1, length:I
    if-nez v1, :cond_0

    move-object v3, v2

    .line 437
    .end local v2           #newText:Ljava/lang/String;
    .local v3, newText:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 429
    .end local v3           #newText:Ljava/lang/String;
    .restart local v2       #newText:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 430
    .local v0, diff:I
    :goto_1
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    if-lt v0, v1, :cond_3

    .line 434
    :cond_1
    if-ne v0, v1, :cond_2

    .line 435
    const-string/jumbo v2, "..."

    :cond_2
    move-object v3, v2

    .line 437
    .end local v2           #newText:Ljava/lang/String;
    .restart local v3       #newText:Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v3           #newText:Ljava/lang/String;
    .restart local v2       #newText:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    sub-int v6, v1, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "label"

    .prologue
    .line 231
    const-string/jumbo v0, ""

    .line 232
    .local v0, text:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    cmpl-double v1, p2, v1

    if-nez v1, :cond_1

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getLegendShapeWidth(I)I
.end method

.method protected getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I
    .locals 3
    .parameter "renderer"
    .parameter "defaultHeight"
    .parameter "extraHeight"

    .prologue
    .line 496
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v0

    .line 497
    .local v0, legendSize:I
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 498
    move v0, p2

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-int v0, v1

    .line 503
    :cond_1
    return v0
.end method

.method public abstract getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
.end method

.method public getSeriesAndPointForScreenCoordinate(Landroid/graphics/Point;)Lcom/cnlaunch/achartengineslim/model/SeriesSelection;
    .locals 1
    .parameter "screenPoint"

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVertical(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;)Z
    .locals 2
    .parameter "renderer"

    .prologue
    .line 218
    instance-of v0, p1, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    .line 219
    check-cast p1, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    move-result-object v0

    sget-object v1, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->VERTICAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    if-ne v0, v1, :cond_0

    .line 218
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRefreshTimeOut(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 597
    iput p1, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerOut:I

    .line 598
    return-void
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 63
    :cond_0
    new-instance v0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart$1;-><init>(Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerOut:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 72
    return-void
.end method

.method public stopRefreshTimer()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mTimerTask:Ljava/util/TimerTask;

    .line 604
    :cond_0
    return-void
.end method
