.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;
.super Ljava/lang/Object;
.source "SingleLargeGraph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;
    }
.end annotation


# instance fields
.field private bSetMaxMin:Z

.field private fromOneGraph:Z

.field private mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

.field private mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

.field private mGraphMargin:[I

.field private mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

.field private mIsTextDataStream:Z

.field private mLastestRendererYMax:D

.field private mLastestRendererYMin:D

.field private mMaxLineValue:D

.field private mMinLineValue:D

.field private mPosition:I

.field private mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

.field private mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

.field private mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

.field private mShowMaxMin:Landroid/widget/TextView;

.field private mTimes:J

.field private mTitle:Landroid/widget/TextView;

.field private mUnit:Landroid/widget/TextView;

.field private mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

.field private mcontext:Landroid/content/Context;

.field private mmediaPlayer:Landroid/media/MediaPlayer;

.field private mtimer:Ljava/util/Timer;

.field private final no_maxLine:I

.field private final no_minLine:I

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 12
    .parameter "context"
    .parameter "container"

    .prologue
    const/16 v11, 0x13

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->fromOneGraph:Z

    .line 47
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    .line 52
    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    .line 69
    iput v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->no_maxLine:I

    .line 70
    const/4 v4, 0x2

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->no_minLine:I

    .line 290
    iput v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mPosition:I

    .line 152
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "productType"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, strType:Ljava/lang/String;
    const-string/jumbo v4, "ScanPad071"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .local v0, currentapiVersion:I
    if-ge v0, v11, :cond_2

    .line 160
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    const/16 v5, 0x2d

    aput v5, v4, v7

    .line 166
    .end local v0           #currentapiVersion:I
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mtimer:Ljava/util/Timer;

    .line 169
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0d017e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    aget v6, v6, v10

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 170
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0d017f

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    .line 171
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0d0180

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    .line 174
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const v5, 0x7f0d0181

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    .line 175
    new-instance v4, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-direct {v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    .line 176
    new-instance v4, Lcom/cnlaunch/achartengineslim/model/XYSeries;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Lcom/cnlaunch/achartengineslim/model/XYSeries;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    .line 178
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->initRenderer()V

    .line 180
    new-instance v4, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;-><init>(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    .line 182
    new-instance v4, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-direct {v4, p1, v5}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;-><init>(Landroid/content/Context;Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    .line 183
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;-><init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    .line 185
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v4, 0x7f0d017e

    invoke-virtual {v2, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 190
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300cd

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    .line 191
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    aget v5, v5, v9

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    aget v6, v6, v10

    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setPadding(IIII)V

    .line 192
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->setMeasureSubject(Lcom/cnlaunch/android/widget/MeasureSubject;)V

    .line 195
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineGaugeLaout:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;-><init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    .line 196
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    invoke-virtual {v4, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->setOnLineLayerCursorChangeListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer$OnLineLayerCursorChangeListener;)V

    .line 198
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    const v5, 0x7f060004

    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mmediaPlayer:Landroid/media/MediaPlayer;

    .line 200
    return-void

    .line 161
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0       #currentapiVersion:I
    :cond_2
    if-ne v0, v11, :cond_3

    .line 162
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    const/16 v5, 0x28

    aput v5, v4, v7

    goto/16 :goto_0

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    const/16 v5, 0x28

    aput v5, v4, v7

    goto/16 :goto_0

    .line 52
    nop

    :array_0
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;)Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    return-object v0
.end method

.method private checkNumber(Ljava/lang/String;)V
    .locals 7
    .parameter "strValue"

    .prologue
    const/4 v6, 0x5

    .line 393
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 394
    .local v1, ft:F
    float-to-double v2, v1

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    float-to-double v2, v1

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 395
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->playSounds(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v1           #ft:F
    :cond_1
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->playSounds(I)V

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 403
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 407
    return-void

    .line 403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initRenderer()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x100

    .line 207
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setBackgroundColor(I)V

    .line 208
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 210
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 211
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setChartTitleTextSize(F)V

    .line 212
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setLabelsTextSize(F)V

    .line 213
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setLegendTextSize(F)V

    .line 214
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/high16 v3, 0x40a0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setPointSize(F)V

    .line 215
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setMargins([I)V

    .line 217
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setDynamicShowOverrideText(Z)V

    .line 218
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setAxesColor(I)V

    .line 219
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setLabelsColor(I)V

    .line 220
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setGridColor(I)V

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsColor(I)V

    .line 222
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabelsColor(I)V

    .line 224
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setShowGrid(Z)V

    .line 225
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 226
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabels(I)V

    .line 227
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYInnerLabels(I)V

    .line 228
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsAngle(F)V

    .line 229
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 230
    .local v0, format:Ljava/text/NumberFormat;
    invoke-virtual {v0, v5}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 231
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelFormat(Ljava/text/NumberFormat;)V

    .line 233
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabels(I)V

    .line 234
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v9}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabelsAngle(F)V

    .line 236
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v7, v8}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 237
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const-wide v3, 0x4066800000000000L

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    .line 238
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v7, v8}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMin(D)V

    .line 239
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    const-wide v3, 0x4097700000000000L

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMax(D)V

    .line 241
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setShowLegend(Z)V

    .line 243
    new-instance v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

    invoke-direct {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;-><init>()V

    .line 244
    .local v1, r:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    invoke-virtual {v1, v5}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setShowLegendItem(Z)V

    .line 245
    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 246
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->addSeriesRenderer(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V

    .line 247
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMin:D

    .line 248
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMax:D

    .line 249
    return-void
.end method

.method private refreshText()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method private showTitleByWidth()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v6, -0x2

    .line 309
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 310
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 312
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 313
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 314
    .local v3, widthTile:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 315
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 316
    .local v4, widthUnit:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v6}, Landroid/widget/TextView;->measure(II)V

    .line 317
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 318
    .local v2, widthMinMax:I
    add-int v5, v3, v4

    add-int/2addr v5, v2

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphMargin:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_0

    .line 319
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public IsSettingMaxMin()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    return v0
.end method

.method public OnLineLayerCursorChanged(ID)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 411
    if-ne p1, v1, :cond_1

    .line 412
    invoke-virtual {p0, p2, p3, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setMaxLineValue(DZ)V

    .line 416
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->refreshText()V

    .line 417
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 414
    invoke-virtual {p0, p2, p3, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setMinLineValue(DZ)V

    goto :goto_0
.end method

.method public SetMaxMin(DD)V
    .locals 7
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    const/4 v6, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mIsTextDataStream:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->resetReferenceLine(Z)V

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setMaxLineValue(DZ)V

    .line 141
    invoke-virtual {p0, p3, p4, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setMinLineValue(DZ)V

    .line 142
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->SetMaxMin(Lcom/cnlaunch/android/widget/MeasureSubject;DD)V

    .line 143
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    .line 144
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->refreshText()V

    .line 146
    return-void
.end method

.method public getMaxLineValue()D
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    return-wide v0
.end method

.method public getMinLineValue()D
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    return-wide v0
.end method

.method public getPositon()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mPosition:I

    return v0
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMax()D

    move-result-wide v0

    return-wide v0
.end method

.method public getYAxisMin()D
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYAxisMin()D

    move-result-wide v0

    return-wide v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;->onSingleLargeGraphVisibleChanged(Z)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->clear()V

    .line 278
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 279
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->stopRefreshTimer()V

    .line 281
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->fromOneGraph:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->hide()V

    goto :goto_0
.end method

.method public playSounds(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mmediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 204
    return-void
.end method

.method public resetGraphStyle(IIZ)V
    .locals 3
    .parameter "position"
    .parameter "color"
    .parameter "isTextDataStream"

    .prologue
    const/4 v2, 0x0

    .line 293
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mPosition:I

    .line 294
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getSeriesRendererAt(I)Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 295
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 296
    iput-boolean p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mIsTextDataStream:Z

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->resetReferenceLine(Z)V

    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mShowMaxMin:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    .line 300
    return-void
.end method

.method public setFromOneGraph(Z)V
    .locals 0
    .parameter "IsOne"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->fromOneGraph:Z

    .line 84
    return-void
.end method

.method public setMaxLineValue(DZ)V
    .locals 7
    .parameter "value"
    .parameter "bNeedSetLine"

    .prologue
    const/4 v4, 0x1

    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, strValue:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->stringToDouble(Ljava/text/NumberFormat;Ljava/lang/String;)D

    move-result-wide v2

    .line 101
    .local v2, dbSetValue:D
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    .line 104
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    .line 105
    if-eqz p3, :cond_1

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->checkValueCanShow(Lcom/cnlaunch/android/widget/MeasureSubject;ID)Z

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->setReferenceLineValue(Lcom/cnlaunch/android/widget/MeasureSubject;DIZ)V

    .line 109
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    goto :goto_0
.end method

.method public setMinLineValue(DZ)V
    .locals 7
    .parameter "value"
    .parameter "bNeedSetLine"

    .prologue
    const/4 v4, 0x2

    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->mDF:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, strValue:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->stringToDouble(Ljava/text/NumberFormat;Ljava/lang/String;)D

    move-result-wide v2

    .line 120
    .local v2, dbSetValue:D
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    if-eqz v0, :cond_0

    .line 121
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_2

    .line 123
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    .line 124
    if-eqz p3, :cond_1

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->checkValueCanShow(Lcom/cnlaunch/android/widget/MeasureSubject;ID)Z

    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRefLineLayer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChartWrapper:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ChartWrapper;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReferenceLineLayer;->setReferenceLineValue(Lcom/cnlaunch/android/widget/MeasureSubject;DIZ)V

    .line 128
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    goto :goto_0
.end method

.method public setOnGraphVisibleChangedListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

    .line 253
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mVisibleListener:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;->onSingleLargeGraphVisibleChanged(Z)V

    .line 260
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->timerTask:Ljava/util/TimerTask;

    .line 267
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mtimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 268
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->startTimer()V

    .line 269
    return-void
.end method

.method public stringToDouble(Ljava/text/NumberFormat;Ljava/lang/String;)D
    .locals 3
    .parameter "nf"
    .parameter "s"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 93
    :goto_0
    return-wide v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 93
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public updateData(Ljava/util/List;J)V
    .locals 19
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, dataListSrc:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    monitor-enter v13

    .line 330
    :try_start_0
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTimes:J

    .line 331
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v9

    .line 332
    .local v9, timeRange:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTimes:J

    int-to-long v0, v9

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-lez v12, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTimes:J

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 334
    .local v6, startTime:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-virtual {v12}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 336
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 337
    :cond_0
    monitor-exit v13

    .line 382
    :goto_1
    return-void

    .line 332
    .end local v6           #startTime:J
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 342
    .restart local v6       #startTime:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mcontext:Landroid/content/Context;

    invoke-static {v12}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 346
    .local v3, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v12}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, unit:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "("

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 349
    :cond_3
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v12}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mUnit:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v12}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v8

    .line 354
    .local v8, textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lt v5, v12, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTimes:J

    move-wide v0, v15

    invoke-static {v12, v14, v0, v1}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V

    .line 329
    .end local v8           #textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :goto_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->showTitleByWidth()V

    .line 381
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v12}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    goto/16 :goto_1

    .line 355
    .restart local v8       #textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v15, v5

    add-long/2addr v15, v6

    long-to-double v15, v15

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v12}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v12

    move-wide v0, v15

    invoke-static {v14, v8, v0, v1, v12}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->addTextDataItem(Lcom/cnlaunch/achartengineslim/model/XYSeries;Ljava/util/Map;DLjava/lang/String;)V

    .line 354
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 359
    .end local v5           #i:I
    .end local v8           #textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lt v5, v12, :cond_9

    .line 366
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    if-eqz v12, :cond_7

    .line 368
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v12}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->checkNumber(Ljava/lang/String;)V

    .line 370
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mTimes:J

    move-wide v0, v15

    invoke-static {v12, v14, v0, v1}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->bSetMaxMin:Z

    if-eqz v12, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMax:D

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getYAxisMax()D

    move-result-wide v16

    cmpl-double v12, v14, v16

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMin:D

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getYAxisMin()D

    move-result-wide v16

    cmpl-double v12, v14, v16

    if-eqz v12, :cond_4

    .line 373
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMaxLineValue:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mMinLineValue:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->SetMaxMin(DD)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getYAxisMax()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMax:D

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getYAxisMin()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mLastestRendererYMin:D

    goto/16 :goto_3

    .line 329
    .end local v3           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .end local v5           #i:I
    .end local v6           #startTime:J
    .end local v9           #timeRange:I
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #unit:Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 361
    .restart local v3       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .restart local v5       #i:I
    .restart local v6       #startTime:J
    .restart local v9       #timeRange:I
    .restart local v10       #title:Ljava/lang/String;
    .restart local v11       #unit:Ljava/lang/String;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v15, v5

    add-long/2addr v15, v6

    long-to-double v15, v15

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v12}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-virtual/range {v14 .. v18}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 359
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 362
    :catch_0
    move-exception v4

    .line 363
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mDataset:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v14, v5

    add-long/2addr v14, v6

    long-to-double v14, v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method
