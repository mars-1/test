.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;
.source "CombinedGraphPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CombinedGraphPage"

.field private static yAxisAlignTable:[Landroid/graphics/Paint$Align;

.field private static yLabelsAlignTable:[Landroid/graphics/Paint$Align;


# instance fields
.field private mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

.field private mContext:Landroid/content/Context;

.field private mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

.field private mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

.field private mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

.field private mtimer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-array v0, v6, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->yAxisAlignTable:[Landroid/graphics/Paint$Align;

    .line 37
    new-array v0, v6, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    .line 39
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    .line 40
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    .line 41
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    .line 37
    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->yLabelsAlignTable:[Landroid/graphics/Paint$Align;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "bigPageIndex"
    .parameter "startIndex"
    .parameter "streamCount"

    .prologue
    .line 53
    invoke-direct {p0, p2, p3, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;-><init>(III)V

    .line 55
    new-instance v0, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    invoke-direct {v0, v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    .line 56
    new-instance v0, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    .line 57
    new-instance v0, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/achartengineslim/chart/CombineDataStreamChart;-><init>(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    .line 58
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-direct {v0, p1, v1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;-><init>(Landroid/content/Context;Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mtimer:Ljava/util/Timer;

    .line 62
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->timerTask:Ljava/util/TimerTask;

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->initRenderer(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;I)V

    .line 70
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->initSerieses()V

    .line 71
    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    return-object v0
.end method

.method private dowithData(Ljava/util/List;JIIZ)Ljava/util/List;
    .locals 9
    .parameter
    .parameter "times"
    .parameter "streamTotalCount"
    .parameter "perBigPageDataStreamCount"
    .parameter "isRecording"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;JIIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    if-nez p1, :cond_0

    .line 176
    const-string/jumbo v0, "CombinedGraphPage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updatePageDataStream - No data come................."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v8, 0x0

    .line 204
    :goto_0
    return-object v8

    .line 179
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v8, ptmpData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    div-int v0, p4, p5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    move v4, p5

    .local v4, subEnd:I
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v5, p6

    .line 185
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getCurrentBigPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 182
    .end local v4           #subEnd:I
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v0

    mul-int/2addr v0, p5

    sub-int v4, p4, v0

    goto :goto_1

    .line 190
    .restart local v4       #subEnd:I
    :catch_0
    move-exception v6

    .line 191
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v5, p6

    .line 193
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getCurrentBigPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 198
    :catch_1
    move-exception v7

    .line 199
    .local v7, e2:Ljava/lang/Exception;
    const-string/jumbo v0, "CombinedGraphPage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updatePageDataStream - Get Current page data error................."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private getCurrentBigPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    .locals 5
    .parameter
    .parameter "streamTotalCount"
    .parameter "perBigPageDataStreamCount"
    .parameter "subEnd"
    .parameter "isRecording"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;IIIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v2

    .line 146
    .local v2, pageIndex:I
    const/4 v3, 0x0

    .line 147
    .local v3, startPosition:I
    const/4 v0, 0x0

    .line 148
    .local v0, endPosition:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 150
    .local v1, inDataCount:I
    if-eqz p5, :cond_1

    .line 151
    if-ne v1, p4, :cond_0

    .line 152
    invoke-interface {p1, v4, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 170
    :goto_0
    return-object v4

    .line 154
    :cond_0
    if-ne p2, v1, :cond_3

    .line 155
    mul-int v3, v2, p3

    .line 156
    add-int v0, v3, p4

    .line 157
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 160
    :cond_1
    if-ne v1, p2, :cond_2

    .line 161
    mul-int v3, v2, p3

    .line 162
    add-int v0, v3, p4

    .line 163
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 165
    :cond_2
    if-ne v1, p4, :cond_3

    .line 166
    invoke-interface {p1, v4, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 170
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private initRenderer(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;I)V
    .locals 12
    .parameter "renderer"
    .parameter "streamCount"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/high16 v5, 0x4120

    const/4 v8, 0x1

    const/high16 v7, -0x100

    .line 74
    invoke-virtual {p1, v8}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 75
    invoke-virtual {p1, v9}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p1, v8}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 77
    invoke-virtual {p1, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setLegendTextSize(F)V

    .line 78
    const/high16 v4, 0x4140

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 79
    invoke-virtual {p1, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setChartTitleTextSize(F)V

    .line 80
    invoke-virtual {p1, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 81
    const/4 v4, 0x4

    new-array v4, v4, [I

    const/16 v5, 0x5a

    aput v5, v4, v9

    const/16 v5, 0x64

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x64

    aput v6, v4, v5

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 83
    invoke-virtual {p1, v8}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setDynamicShowOverrideText(Z)V

    .line 84
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 85
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisColor(I)V

    .line 86
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisColor(I)V

    .line 87
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setLabelsColor(I)V

    .line 88
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 89
    invoke-virtual {p1, v7}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setGridColor(I)V

    .line 91
    const/16 v4, 0x12

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 92
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setInnerXLabels(I)V

    .line 93
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 94
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYInnerLabels(I)V

    .line 95
    const/high16 v4, 0x40a0

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabelsPadding(F)V

    .line 96
    const/high16 v4, 0x41f0

    invoke-virtual {p1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXLabelsAngle(F)V

    .line 97
    invoke-virtual {p1, v8}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setShowGrid(Z)V

    .line 98
    invoke-virtual {p1, v10, v11}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 99
    const-wide/high16 v4, 0x4018

    invoke-virtual {p1, v4, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 100
    invoke-virtual {p1, v10, v11}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 101
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 103
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 104
    .local v1, format:Ljava/text/NumberFormat;
    invoke-virtual {v1, v9}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 105
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    if-lt v2, v4, :cond_0

    .line 118
    return-void

    .line 106
    :cond_0
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v0

    .line 108
    .local v0, color:I
    new-instance v3, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

    invoke-direct {v3}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;-><init>()V

    .line 109
    .local v3, r:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    invoke-virtual {v3, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setColor(I)V

    .line 110
    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 112
    invoke-virtual {p1, v1, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabelFormat(Ljava/text/NumberFormat;I)V

    .line 113
    invoke-virtual {p1, v2, v0}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabelsColor(II)V

    .line 114
    sget-object v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->yAxisAlignTable:[Landroid/graphics/Paint$Align;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisAlign(Landroid/graphics/Paint$Align;I)V

    .line 115
    sget-object v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->yLabelsAlignTable:[Landroid/graphics/Paint$Align;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;I)V

    .line 116
    invoke-virtual {p1, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initSerieses()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    if-lt v0, v2, :cond_0

    .line 126
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)V

    .line 135
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;->start()V

    .line 136
    return-void

    .line 121
    :cond_0
    new-instance v1, Lcom/cnlaunch/achartengineslim/model/XYSeries;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, series:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->addSeries(Lcom/cnlaunch/achartengineslim/model/XYSeries;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetData(Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V
    .locals 8
    .parameter "dataset"
    .parameter "times"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/achartengineslim/model/XYSeries;",
            "D",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p4, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 280
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v6, p2, v6

    if-ltz v6, :cond_0

    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v6

    int-to-double v6, v6

    sub-double v2, p2, v6

    .line 281
    .local v2, xStart:D
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 288
    return-void

    .line 280
    .end local v1           #i:I
    .end local v2           #xStart:D
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 283
    .restart local v1       #i:I
    .restart local v2       #xStart:D
    :cond_1
    const-wide/high16 v6, 0x3ff0

    add-double v4, v2, v6

    .end local v2           #xStart:D
    .local v4, xStart:D
    :try_start_0
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v2, v3, v6, v7}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    .line 281
    .end local v4           #xStart:D
    .restart local v2       #xStart:D
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    .end local v2           #xStart:D
    .restart local v4       #xStart:D
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-wide/high16 v6, 0x3ff0

    add-double v2, v4, v6

    .end local v4           #xStart:D
    .restart local v2       #xStart:D
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V

    goto :goto_2
.end method

.method private resetTextData(Ljava/util/Map;Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V
    .locals 7
    .parameter
    .parameter "dataset"
    .parameter "times"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/cnlaunch/achartengineslim/model/XYSeries;",
            "D",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p5, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v3

    .line 292
    .local v3, timeRange:I
    int-to-double v4, v3

    cmpl-double v4, p3, v4

    if-lez v4, :cond_0

    int-to-double v4, v3

    sub-double v1, p3, v4

    .line 294
    .local v1, startTime:D
    :goto_0
    invoke-virtual {p2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 298
    return-void

    .line 292
    .end local v0           #i:I
    .end local v1           #startTime:D
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 296
    .restart local v0       #i:I
    .restart local v1       #startTime:D
    :cond_1
    int-to-double v4, v0

    add-double v5, v1, v4

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p1, v5, v6, v4}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->addTextDataItem(Lcom/cnlaunch/achartengineslim/model/XYSeries;Ljava/util/Map;DLjava/lang/String;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetTitleAndUnit(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;ILcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V
    .locals 6
    .parameter "renderer"
    .parameter "dataset"
    .parameter "index"
    .parameter "dataItem"

    .prologue
    .line 301
    invoke-virtual {p4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, unit:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->setTitle(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v2, p3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;I)V

    .line 312
    return-void
.end method


# virtual methods
.method public bridge synthetic getGraphView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getGraphView()Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    move-result-object v0

    return-object v0
.end method

.method public getGraphView()Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    return-object v0
.end method

.method public setVisable(Z)V
    .locals 2
    .parameter "visable"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->setVisibility(I)V

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public declared-synchronized unload()V
    .locals 2

    .prologue
    .line 320
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 324
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 326
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->stopRefreshTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateDataStream(Ljava/util/List;J)V
    .locals 10
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, dataAllList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 210
    :cond_0
    const-string/jumbo v0, "CombinedGraphPage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "The data size is not matched, size:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", start index:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", stream count:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_3

    .line 216
    const/4 v8, 0x0

    :goto_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    if-lt v8, v0, :cond_4

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v8           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    .restart local v8       #i:I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v0, v8}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-result-object v2

    .line 218
    .local v2, dataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 220
    .local v7, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 223
    .local v6, dataItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-direct {p0, v0, v2, v8, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetTitleAndUnit(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;ILcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V

    .line 224
    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, v8}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelMap(I)Ljava/util/Map;

    move-result-object v1

    .line 226
    .local v1, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->isChanngelChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 229
    :cond_5
    long-to-double v3, p2

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetTextData(Ljava/util/Map;Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-static {v0, v2, p2, p3, v8}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;JI)V

    .line 216
    .end local v1           #yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 233
    :cond_6
    long-to-double v3, p2

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetData(Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    long-to-double v3, p2

    invoke-static {v0, v2, v3, v4, v8}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;DI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized updateDataStream(Ljava/util/List;JIIZ)V
    .locals 11
    .parameter
    .parameter "times"
    .parameter "streamTotalCount"
    .parameter "perBigPageDataStreamCount"
    .parameter "isRecording"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;JIIZ)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v6, dataAllList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    invoke-direct/range {p0 .. p6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->dowithData(Ljava/util/List;JIIZ)Ljava/util/List;

    move-result-object v6

    .line 245
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 246
    :cond_0
    const-string/jumbo v0, "CombinedGraphPage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "The data size is not matched, size:, start index:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ", stream count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_3

    .line 253
    const/4 v9, 0x0

    :goto_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStreamCount:I

    if-lt v9, v0, :cond_4

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    .end local v6           #dataAllList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    .restart local v6       #dataAllList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .restart local v9       #i:I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    .line 249
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/achartengineslim/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-result-object v2

    .line 255
    .local v2, dataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 257
    .local v8, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 260
    .local v7, dataItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-direct {p0, v0, v2, v9, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetTitleAndUnit(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;ILcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;)V

    .line 261
    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, v9}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->getYLabelMap(I)Ljava/util/Map;

    move-result-object v1

    .line 263
    .local v1, yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->isChanngelChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 266
    :cond_5
    long-to-double v3, p2

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetTextData(Ljava/util/Map;Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V

    .line 268
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    invoke-static {v0, v2, p2, p3, v9}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;JI)V

    .line 253
    .end local v1           #yLabelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 270
    :cond_6
    long-to-double v3, p2

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mStartIndex:I

    add-int/2addr v0, v9

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->resetData(Lcom/cnlaunch/achartengineslim/model/XYSeries;DLjava/util/List;)V

    .line 271
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;

    long-to-double v3, p2

    invoke-static {v0, v2, v3, v4, v9}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;DI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
