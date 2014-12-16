.class public Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;
.super Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
.source "DataStreamSeriesRenderer.java"


# instance fields
.field private initialRange:[D

.field private mAxisTitleTextSize:F

.field private mGridColor:I

.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field private mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

.field private mPointSize:F

.field private mXLabelFormat:Ljava/text/NumberFormat;

.field private mXLabels:I

.field private mXLabelsAngle:F

.field private mXLabelsColor:I

.field private mXLabelsPadding:F

.field private mXRoundedLabels:Z

.field private mXTextLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXTitle:Ljava/lang/String;

.field private mYInnerLabels:I

.field private mYLabelFormat:Ljava/text/NumberFormat;

.field private mYLabelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mYLabels:I

.field private mYLabelsAlign:Landroid/graphics/Paint$Align;

.field private mYLabelsAngle:F

.field private mYLabelsColor:I

.field private mYLabelsPadding:F

.field private mYLabelsVerticalPadding:F

.field private mYTextLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mYTitle:Ljava/lang/String;

.field private xLabelsAlign:Landroid/graphics/Paint$Align;

.field private yAxisAlign:Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const v4, -0x333334

    const/4 v3, 0x0

    const/16 v2, 0xc8

    const/4 v1, 0x5

    .line 98
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelMap:Ljava/util/Map;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTitle:Ljava/lang/String;

    .line 28
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mAxisTitleTextSize:F

    .line 40
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabels:I

    .line 42
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabels:I

    .line 47
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYInnerLabels:I

    .line 49
    sget-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    .line 63
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mPointSize:F

    .line 66
    const/16 v0, 0x4b

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mGridColor:I

    .line 69
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 71
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAlign:Landroid/graphics/Paint$Align;

    .line 74
    iput v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsPadding:F

    .line 76
    iput v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsPadding:F

    .line 78
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsVerticalPadding:F

    .line 81
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->yAxisAlign:Landroid/graphics/Paint$Align;

    .line 84
    iput v4, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsColor:I

    .line 86
    iput v4, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsColor:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXRoundedLabels:Z

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initAxesRange()V

    .line 100
    return-void
.end method


# virtual methods
.method public addTextLabel(DLjava/lang/String;)V
    .locals 0
    .parameter "x"
    .parameter "text"

    .prologue
    .line 381
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 382
    return-void
.end method

.method public declared-synchronized addXTextLabel(DLjava/lang/String;)V
    .locals 2
    .parameter "x"
    .parameter "text"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addYTextLabel(DLjava/lang/String;)V
    .locals 2
    .parameter "y"
    .parameter "text"

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTextLabels()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->clearXTextLabels()V

    .line 433
    return-void
.end method

.method public declared-synchronized clearXTextLabels()V
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearYTextLabels()V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAxisTitleTextSize()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mAxisTitleTextSize:F

    return v0
.end method

.method public getGridColor()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mGridColor:I

    return v0
.end method

.method public getInitialRange()[D
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    return-object v0
.end method

.method public getLabelFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getXLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    return-object v0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mPointSize:F

    return v0
.end method

.method public getXAxisMax()D
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxX:D

    return-wide v0
.end method

.method public getXAxisMin()D
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinX:D

    return-wide v0
.end method

.method public getXLabelFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getXLabels()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabels:I

    return v0
.end method

.method public getXLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getXLabelsAngle()F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsAngle:F

    return v0
.end method

.method public getXLabelsColor()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsColor:I

    return v0
.end method

.method public getXLabelsPadding()F
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsPadding:F

    return v0
.end method

.method public declared-synchronized getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getXTextLabelLocations()[Ljava/lang/Double;
    .locals 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getXTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYAxisAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->yAxisAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxY:D

    return-wide v0
.end method

.method public getYAxisMin()D
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinY:D

    return-wide v0
.end method

.method public getYInnerLabels()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYInnerLabels:I

    return v0
.end method

.method public getYLabelFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getYLabelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelMap:Ljava/util/Map;

    return-object v0
.end method

.method public getYLabels()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabels:I

    return v0
.end method

.method public getYLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getYLabelsAngle()F
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAngle:F

    return v0
.end method

.method public getYLabelsColor()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsColor:I

    return v0
.end method

.method public getYLabelsPadding()F
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsPadding:F

    return v0
.end method

.method public getYLabelsVerticalPadding()F
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsVerticalPadding:F

    return v0
.end method

.method public declared-synchronized getYTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter "y"

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getYTextLabelLocations()[Ljava/lang/Double;
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getYTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTitle:Ljava/lang/String;

    return-object v0
.end method

.method public initAxesRange()V
    .locals 5

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTitle:Ljava/lang/String;

    .line 118
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAlign:Landroid/graphics/Paint$Align;

    .line 119
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->yAxisAlign:Landroid/graphics/Paint$Align;

    .line 121
    iput-wide v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinX:D

    .line 122
    iput-wide v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxX:D

    .line 123
    iput-wide v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinY:D

    .line 124
    iput-wide v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxY:D

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinX:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxX:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinY:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxY:D

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    .line 128
    const v0, -0x333334

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsColor:I

    .line 130
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelFormat:Ljava/text/NumberFormat;

    .line 131
    return-void
.end method

.method public isInitialRangeSet()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxXSet()Z
    .locals 4

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxX:D

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxYSet()Z
    .locals 4

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxY:D

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinXSet()Z
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinX:D

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinYSet()Z
    .locals 4

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinY:D

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXRoundedLabels()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXRoundedLabels:Z

    return v0
.end method

.method public declared-synchronized removeXTextLabel(D)V
    .locals 2
    .parameter "x"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeYTextLabel(D)V
    .locals 2
    .parameter "y"

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAxisTitleTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 210
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mAxisTitleTextSize:F

    .line 211
    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 565
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mGridColor:I

    .line 566
    return-void
.end method

.method public setInitialRange([D)V
    .locals 0
    .parameter "range"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    .line 671
    return-void
.end method

.method public setLabelFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 845
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabelFormat(Ljava/text/NumberFormat;)V

    .line 846
    return-void
.end method

.method public setOrientation(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    .line 150
    return-void
.end method

.method public setPointSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 622
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mPointSize:F

    .line 623
    return-void
.end method

.method public setRange([D)V
    .locals 2
    .parameter "range"

    .prologue
    .line 633
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 634
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    .line 635
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMin(D)V

    .line 636
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMax(D)V

    .line 637
    return-void
.end method

.method public setXAxisMax(D)V
    .locals 2
    .parameter "max"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isMaxXSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 264
    :cond_0
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxX:D

    .line 265
    return-void
.end method

.method public setXAxisMin(D)V
    .locals 0
    .parameter "min"

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinX:D

    .line 230
    return-void
.end method

.method public setXLabelFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelFormat:Ljava/text/NumberFormat;

    .line 865
    return-void
.end method

.method public setXLabels(I)V
    .locals 0
    .parameter "xLabels"

    .prologue
    .line 368
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabels:I

    .line 369
    return-void
.end method

.method public setXLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 730
    return-void
.end method

.method public setXLabelsAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 584
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsAngle:F

    .line 585
    return-void
.end method

.method public setXLabelsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 698
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsColor:I

    .line 699
    return-void
.end method

.method public setXLabelsPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 786
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXLabelsPadding:F

    .line 787
    return-void
.end method

.method public setXRoundedLabels(Z)V
    .locals 0
    .parameter "rounded"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXRoundedLabels:Z

    .line 459
    return-void
.end method

.method public setXTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setYAxisAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 739
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->yAxisAlign:Landroid/graphics/Paint$Align;

    .line 740
    return-void
.end method

.method public setYAxisMax(D)V
    .locals 2
    .parameter "max"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isMaxYSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    .line 338
    :cond_0
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMaxY:D

    .line 339
    return-void
.end method

.method public setYAxisMin(D)V
    .locals 2
    .parameter "min"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->isMinYSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->initialRange:[D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    .line 301
    :cond_0
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mMinY:D

    .line 302
    return-void
.end method

.method public setYInnerLabels(I)V
    .locals 0
    .parameter "yInnerLabels"

    .prologue
    .line 543
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYInnerLabels:I

    .line 544
    return-void
.end method

.method public setYLabelFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 883
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelFormat:Ljava/text/NumberFormat;

    .line 884
    return-void
.end method

.method public setYLabels(I)V
    .locals 0
    .parameter "yLabels"

    .prologue
    .line 528
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabels:I

    .line 529
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 758
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAlign:Landroid/graphics/Paint$Align;

    .line 759
    return-void
.end method

.method public setYLabelsAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 603
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsAngle:F

    .line 604
    return-void
.end method

.method public setYLabelsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 710
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsColor:I

    .line 711
    return-void
.end method

.method public setYLabelsPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 824
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsPadding:F

    .line 825
    return-void
.end method

.method public setYLabelsVerticalPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 805
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYLabelsVerticalPadding:F

    .line 806
    return-void
.end method

.method public setYTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->mYTitle:Ljava/lang/String;

    .line 192
    return-void
.end method
