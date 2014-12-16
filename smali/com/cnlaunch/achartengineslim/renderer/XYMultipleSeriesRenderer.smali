.class public Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;
.super Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
.source "XYMultipleSeriesRenderer.java"


# instance fields
.field private initialRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private mAxisTitleTextSize:F

.field private mBarSpacing:D

.field private mBarWidth:F

.field private mGridColors:[I

.field private mMarginsColor:I

.field private mMaxX:[D

.field private mMaxY:[D

.field private mMinX:[D

.field private mMinY:[D

.field private mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

.field private mPanLimits:[D

.field private mPanXEnabled:Z

.field private mPanYEnabled:Z

.field private mPointSize:F

.field private mXInnerLabels:I

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

.field private mYInnerLabels:[I

.field private mYLabelFormat:[Ljava/text/NumberFormat;

.field private mYLabelMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mYLabels:I

.field private mYLabelsAngle:F

.field private mYLabelsColor:[I

.field private mYLabelsPadding:F

.field private mYLabelsVerticalPadding:F

.field private mYTextLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mYTitle:[Ljava/lang/String;

.field private mZoomInLimitX:D

.field private mZoomInLimitY:D

.field private mZoomLimits:[D

.field private mZoomXEnabled:Z

.field private mZoomYEnabled:Z

.field private scalesCount:I

.field private xLabelsAlign:Landroid/graphics/Paint$Align;

.field private yAxisAlign:[Landroid/graphics/Paint$Align;

.field private yLabelsAlign:[Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;-><init>(I)V

    .line 131
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter "scaleNumber"

    .prologue
    const/4 v6, 0x0

    const v5, -0x333334

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 133
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelMaps:Ljava/util/Map;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 55
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXInnerLabels:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 64
    sget-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;->HORIZONTAL:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    .line 70
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 72
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 74
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 76
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 78
    iput-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 80
    iput v6, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    .line 92
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 98
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 102
    iput v4, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsPadding:F

    .line 104
    iput v4, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsPadding:F

    .line 106
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsVerticalPadding:F

    .line 110
    iput v5, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsColor:I

    .line 112
    new-array v0, v1, [I

    aput v5, v0, v6

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsColor:[I

    .line 117
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXRoundedLabels:Z

    .line 123
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarWidth:F

    .line 125
    iput-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitX:D

    .line 127
    iput-wide v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitY:D

    .line 134
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->scalesCount:I

    .line 135
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initAxesRange(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public addTextLabel(DLjava/lang/String;)V
    .locals 0
    .parameter "x"
    .parameter "text"

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 581
    return-void
.end method

.method public declared-synchronized addXTextLabel(DLjava/lang/String;)V
    .locals 2
    .parameter "x"
    .parameter "text"

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addYTextLabel(DLjava/lang/String;)V
    .locals 1
    .parameter "y"
    .parameter "text"

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;I)V

    .line 670
    return-void
.end method

.method public declared-synchronized addYTextLabel(DLjava/lang/String;I)V
    .locals 2
    .parameter "y"
    .parameter "text"
    .parameter "scale"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTextLabels()V
    .locals 0

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->clearXTextLabels()V

    .line 632
    return-void
.end method

.method public declared-synchronized clearXTextLabels()V
    .locals 1

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearYTextLabels()V
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->clearYTextLabels(I)V

    .line 757
    return-void
.end method

.method public declared-synchronized clearYTextLabels(I)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAxisTitleTextSize()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    return v0
.end method

.method public getBarSpacing()D
    .locals 2

    .prologue
    .line 945
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    return-wide v0
.end method

.method public getBarWidth()F
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarWidth:F

    return v0
.end method

.method public getBarsSpacing()D
    .locals 2

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getBarSpacing()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGridColor(I)I
    .locals 1
    .parameter "scale"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mGridColors:[I

    aget v0, v0, p1

    return v0
.end method

.method public getInitialRange()[D
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getInitialRange(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInitialRange(I)[D
    .locals 2
    .parameter "scale"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getInnerXLabels()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXInnerLabels:I

    return v0
.end method

.method public getLabelFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 1349
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXLabelFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMarginsColor()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    return v0
.end method

.method public getOrientation()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    return-object v0
.end method

.method public getPanLimits()[D
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    return-object v0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 1099
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    return v0
.end method

.method public getScalesCount()I
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->scalesCount:I

    return v0
.end method

.method public getXAxisMax()D
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXAxisMax(I)D
    .locals 2
    .parameter "scale"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getXAxisMin()D
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXAxisMin(I)D
    .locals 2
    .parameter "scale"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getXLabelFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getXLabels()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    return v0
.end method

.method public getXLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getXLabelsAngle()F
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    return v0
.end method

.method public getXLabelsColor()I
    .locals 1

    .prologue
    .line 1199
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsColor:I

    return v0
.end method

.method public getXLabelsPadding()F
    .locals 1

    .prologue
    .line 1291
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsPadding:F

    return v0
.end method

.method public declared-synchronized getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

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
    .line 622
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

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
    .line 198
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYAxisAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter "scale"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getYAxisMax(I)D
    .locals 2
    .parameter "scale"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getYAxisMin()D
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getYAxisMin(I)D
    .locals 2
    .parameter "scale"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getYInnerLabels()I
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYInnerLabels(I)I

    move-result v0

    return v0
.end method

.method public getYInnerLabels(I)I
    .locals 1
    .parameter "scale"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYInnerLabels:[I

    aget v0, v0, p1

    return v0
.end method

.method public getYLabelFormat(I)Ljava/text/NumberFormat;
    .locals 1
    .parameter "scale"

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelFormat:[Ljava/text/NumberFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYLabelMap(I)Ljava/util/Map;
    .locals 2
    .parameter "scale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getYLabels()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    return v0
.end method

.method public getYLabelsAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter "scale"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYLabelsAngle()F
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    return v0
.end method

.method public getYLabelsColor(I)I
    .locals 1
    .parameter "scale"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsColor:[I

    aget v0, v0, p1

    return v0
.end method

.method public getYLabelsPadding()F
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsPadding:F

    return v0
.end method

.method public getYLabelsVerticalPadding()F
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsVerticalPadding:F

    return v0
.end method

.method public getYTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter "y"

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;
    .locals 2
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

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

.method public getYTextLabelLocations()[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getYTextLabelLocations(I)[Ljava/lang/Double;
    .locals 2
    .parameter "scale"

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

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
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "scale"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getZoomInLimitX()D
    .locals 2

    .prologue
    .line 1413
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitX:D

    return-wide v0
.end method

.method public getZoomInLimitY()D
    .locals 2

    .prologue
    .line 1439
    iget-wide v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitY:D

    return-wide v0
.end method

.method public getZoomLimits()[D
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    return-object v0
.end method

.method public initAxesRange(I)V
    .locals 4
    .parameter "scales"

    .prologue
    const/16 v3, 0xc8

    .line 139
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    .line 140
    new-array v1, p1, [Landroid/graphics/Paint$Align;

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    .line 141
    new-array v1, p1, [Landroid/graphics/Paint$Align;

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    .line 142
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsColor:[I

    .line 143
    new-array v1, p1, [Ljava/text/NumberFormat;

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelFormat:[Ljava/text/NumberFormat;

    .line 144
    new-array v1, p1, [D

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    .line 145
    new-array v1, p1, [D

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    .line 146
    new-array v1, p1, [D

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    .line 147
    new-array v1, p1, [D

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    .line 148
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mGridColors:[I

    .line 149
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYInnerLabels:[I

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 157
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsColor:[I

    const v2, -0x333334

    aput v2, v1, v0

    .line 152
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelFormat:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    aput-object v2, v1, v0

    .line 153
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mGridColors:[I

    const/16 v2, 0x4b

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v1, v0

    .line 154
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYInnerLabels:[I

    const/4 v2, 0x5

    aput v2, v1, v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initAxesRangeForScale(I)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initAxesRangeForScale(I)V
    .locals 6
    .parameter "i"

    .prologue
    const-wide v4, 0x7fefffffffffffffL

    const-wide v2, -0x10000000000001L

    .line 160
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aput-wide v4, v1, p1

    .line 161
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aput-wide v2, v1, p1

    .line 162
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aput-wide v4, v1, p1

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aput-wide v2, v1, p1

    .line 164
    const/4 v1, 0x4

    new-array v0, v1, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    .line 165
    .local v0, range:[D
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, p1

    .line 167
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v2, v1, p1

    .line 170
    iget-object v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v2, v1, p1

    .line 171
    return-void
.end method

.method public isInitialRangeSet()Z
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet(I)Z

    move-result v0

    return v0
.end method

.method public isInitialRangeSet(I)Z
    .locals 2
    .parameter "scale"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxXSet()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v0

    return v0
.end method

.method public isMaxXSet(I)Z
    .locals 4
    .parameter "scale"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v0, v0, p1

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
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v0

    return v0
.end method

.method public isMaxYSet(I)Z
    .locals 4
    .parameter "scale"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v0, v0, p1

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
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v0

    return v0
.end method

.method public isMinXSet(I)Z
    .locals 4
    .parameter "scale"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v0, v0, p1

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
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v0

    return v0
.end method

.method public isMinYSet(I)Z
    .locals 4
    .parameter "scale"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v0, v0, p1

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

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanXEnabled()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    return v0
.end method

.method public isPanYEnabled()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    return v0
.end method

.method public isXRoundedLabels()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXRoundedLabels:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomXEnabled()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    return v0
.end method

.method public isZoomYEnabled()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    return v0
.end method

.method public declared-synchronized removeXTextLabel(D)V
    .locals 2
    .parameter "x"

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeYTextLabel(D)V
    .locals 1
    .parameter "y"

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->removeYTextLabel(DI)V

    .line 680
    return-void
.end method

.method public declared-synchronized removeYTextLabel(DI)V
    .locals 2
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAxisTitleTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 269
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 270
    return-void
.end method

.method public setBarSpacing(D)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 957
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 958
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 836
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mBarWidth:F

    .line 837
    return-void
.end method

.method public setGridColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setGridColor(II)V

    .line 999
    return-void
.end method

.method public setGridColor(II)V
    .locals 1
    .parameter "color"
    .parameter "scale"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mGridColors:[I

    aput p1, v0, p2

    .line 1011
    return-void
.end method

.method public setInitialRange([D)V
    .locals 1
    .parameter "range"

    .prologue
    .line 1176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setInitialRange([DI)V

    .line 1177
    return-void
.end method

.method public setInitialRange([DI)V
    .locals 2
    .parameter "range"
    .parameter "scale"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    return-void
.end method

.method public setInnerXLabels(I)V
    .locals 0
    .parameter "xInnerLabels"

    .prologue
    .line 567
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXInnerLabels:I

    .line 568
    return-void
.end method

.method public setLabelFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 1360
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXLabelFormat(Ljava/text/NumberFormat;)V

    .line 1361
    return-void
.end method

.method public setMarginsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 976
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 977
    return-void
.end method

.method public setOrientation(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mOrientation:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;

    .line 190
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 886
    invoke-virtual {p0, p1, p1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 887
    return-void
.end method

.method public setPanEnabled(ZZ)V
    .locals 0
    .parameter "enabledX"
    .parameter "enabledY"

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 877
    iput-boolean p2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 878
    return-void
.end method

.method public setPanLimits([D)V
    .locals 0
    .parameter "panLimits"

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    .line 1032
    return-void
.end method

.method public setPointSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1109
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 1110
    return-void
.end method

.method public setRange([D)V
    .locals 1
    .parameter "range"

    .prologue
    .line 1113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 1114
    return-void
.end method

.method public setRange([DI)V
    .locals 2
    .parameter "range"
    .parameter "scale"

    .prologue
    .line 1126
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 1127
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 1128
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 1129
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 1130
    return-void
.end method

.method public setXAxisMax(D)V
    .locals 1
    .parameter "max"

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 317
    return-void
.end method

.method public setXAxisMax(DI)V
    .locals 2
    .parameter "max"
    .parameter "scale"

    .prologue
    .line 441
    invoke-virtual {p0, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aput-wide p1, v0, p3

    .line 445
    return-void
.end method

.method public setXAxisMin(D)V
    .locals 1
    .parameter "min"

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 289
    return-void
.end method

.method public setXAxisMin(DI)V
    .locals 2
    .parameter "min"
    .parameter "scale"

    .prologue
    .line 404
    invoke-virtual {p0, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aput-wide p1, v0, p3

    .line 408
    return-void
.end method

.method public setXLabelFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelFormat:Ljava/text/NumberFormat;

    .line 1380
    return-void
.end method

.method public setXLabels(I)V
    .locals 0
    .parameter "xLabels"

    .prologue
    .line 548
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 549
    return-void
.end method

.method public setXLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 1250
    return-void
.end method

.method public setXLabelsAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 1071
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    .line 1072
    return-void
.end method

.method public setXLabelsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 1218
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsColor:I

    .line 1219
    return-void
.end method

.method public setXLabelsPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 1301
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXLabelsPadding:F

    .line 1302
    return-void
.end method

.method public setXRoundedLabels(Z)V
    .locals 0
    .parameter "rounded"

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXRoundedLabels:Z

    .line 658
    return-void
.end method

.method public setXTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setYAxisAlign(Landroid/graphics/Paint$Align;I)V
    .locals 1
    .parameter "align"
    .parameter "scale"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    aput-object p1, v0, p2

    .line 1273
    return-void
.end method

.method public setYAxisMax(D)V
    .locals 1
    .parameter "max"

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 373
    return-void
.end method

.method public setYAxisMax(DI)V
    .locals 2
    .parameter "max"
    .parameter "scale"

    .prologue
    .line 515
    invoke-virtual {p0, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aput-wide p1, v0, p3

    .line 519
    return-void
.end method

.method public setYAxisMin(D)V
    .locals 1
    .parameter "min"

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 345
    return-void
.end method

.method public setYAxisMin(DI)V
    .locals 2
    .parameter "min"
    .parameter "scale"

    .prologue
    .line 478
    invoke-virtual {p0, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aput-wide p1, v0, p3

    .line 482
    return-void
.end method

.method public setYInnerLabels(I)V
    .locals 2
    .parameter "yInnerLabels"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYInnerLabels:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 810
    return-void
.end method

.method public setYInnerLabels(II)V
    .locals 1
    .parameter "yInnerLabels"
    .parameter "scale"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYInnerLabels:[I

    aput p1, v0, p2

    .line 818
    return-void
.end method

.method public setYLabelFormat(Ljava/text/NumberFormat;I)V
    .locals 1
    .parameter "format"
    .parameter "scale"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelFormat:[Ljava/text/NumberFormat;

    aput-object p1, v0, p2

    .line 1403
    return-void
.end method

.method public setYLabels(I)V
    .locals 0
    .parameter "yLabels"

    .prologue
    .line 789
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 790
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .parameter "align"

    .prologue
    .line 1264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;I)V

    .line 1265
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;I)V
    .locals 1
    .parameter "align"
    .parameter "scale"

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    aput-object p1, v0, p2

    .line 1283
    return-void
.end method

.method public setYLabelsAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 1090
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    .line 1091
    return-void
.end method

.method public setYLabelsColor(II)V
    .locals 1
    .parameter "scale"
    .parameter "color"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsColor:[I

    aput p2, v0, p1

    .line 1231
    return-void
.end method

.method public setYLabelsPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 1339
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsPadding:F

    .line 1340
    return-void
.end method

.method public setYLabelsVerticalPadding(F)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 1320
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYLabelsVerticalPadding:F

    .line 1321
    return-void
.end method

.method public setYTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;I)V

    .line 239
    return-void
.end method

.method public setYTitle(Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "scale"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 251
    return-void
.end method

.method public setZoomEnabled(ZZ)V
    .locals 0
    .parameter "enabledX"
    .parameter "enabledY"

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 926
    iput-boolean p2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 927
    return-void
.end method

.method public setZoomInLimitX(D)V
    .locals 0
    .parameter "zoomInLimitX"

    .prologue
    .line 1428
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitX:D

    .line 1429
    return-void
.end method

.method public setZoomInLimitY(D)V
    .locals 0
    .parameter "zoomInLimitY"

    .prologue
    .line 1454
    iput-wide p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomInLimitY:D

    .line 1455
    return-void
.end method

.method public setZoomLimits([D)V
    .locals 0
    .parameter "zoomLimits"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    .line 1053
    return-void
.end method
