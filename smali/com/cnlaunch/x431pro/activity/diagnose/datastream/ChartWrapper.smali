.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;
.super Ljava/lang/Object;
.source "ChartWrapper.java"

# interfaces
.implements Lcom/cnlaunch/android/widget/MeasureSubject;


# instance fields
.field private mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

.field private mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;)V
    .locals 0
    .parameter "graphicalView"
    .parameter "renderer"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    .line 17
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    .line 18
    return-void
.end method

.method private getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I
    .locals 3
    .parameter "renderer"
    .parameter "defaultHeight"
    .parameter "extraHeight"

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v0

    .line 57
    .local v0, legendSize:I
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 58
    move v0, p2

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-int v0, v1

    .line 63
    :cond_1
    return v0
.end method


# virtual methods
.method public getCursorYByValue(D)D
    .locals 11
    .parameter "value"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getMeasureBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getMeasureTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 69
    .local v0, chartheight:I
    int-to-double v5, v0

    .line 70
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v7

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 69
    div-double v1, v5, v7

    .line 71
    .local v1, yPixelPerUnit:D
    int-to-double v5, v0

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v7

    sub-double v7, p1, v7

    mul-double/2addr v7, v1

    sub-double v3, v5, v7

    .line 72
    .local v3, yPosition:D
    return-wide v3
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLegendSize()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxMeasureValue()D
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeasureBottom()I
    .locals 4

    .prologue
    .line 27
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getAxisTitleTextSize()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I

    move-result v0

    .line 29
    .local v0, legendSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getMargins()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getMeasureLeft()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getMargins()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMeasureRight()I
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getAxisTitleTextSize()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getLegendSize(Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;IF)I

    move-result v0

    .line 41
    .local v0, legendSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getMargins()[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getMeasureTop()I
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getMargins()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinMeasureValue()D
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueByCursorY(I)D
    .locals 9
    .parameter "cursorY"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getMeasureBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->getMeasureTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 88
    .local v0, chartheight:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v5

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 89
    int-to-double v7, v0

    .line 88
    div-double v1, v5, v7

    .line 90
    .local v1, unitPeryPixel:D
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v5

    sub-int v7, v0, p1

    int-to-double v7, v7

    mul-double/2addr v7, v1

    add-double v3, v5, v7

    .line 92
    .local v3, value:D
    return-wide v3
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getWidth()I

    move-result v0

    return v0
.end method
