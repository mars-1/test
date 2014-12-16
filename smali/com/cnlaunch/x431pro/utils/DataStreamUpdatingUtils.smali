.class public abstract Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;
.super Ljava/lang/Object;
.source "DataStreamUpdatingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTextDataItem(Lcom/cnlaunch/achartengineslim/model/XYSeries;Ljava/util/Map;DLjava/lang/String;)V
    .locals 3
    .parameter "dataset"
    .parameter
    .parameter "time"
    .parameter "textValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/achartengineslim/model/XYSeries;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;D",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 312
    .local v0, intValue:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    int-to-double v1, v0

    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V

    .line 317
    .end local v0           #intValue:I
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0, p2, p3, v1, v2}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V

    goto :goto_0
.end method

.method private static caculateInterVal(DD)D
    .locals 10
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .local v0, flagMax:D
    const-wide/high16 v2, 0x3ff0

    .line 70
    .local v2, interVal:D
    const-wide/16 v6, 0x0

    cmpl-double v6, p2, v6

    if-lez v6, :cond_16

    const-wide/16 v6, 0x0

    cmpl-double v6, p0, v6

    if-ltz v6, :cond_16

    .line 71
    const-wide/high16 v6, 0x4024

    rem-double v6, p2, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 72
    const-wide/high16 v6, 0x3ff0

    sub-double v0, p2, v6

    .line 74
    :cond_0
    const-wide v6, 0x41224f8000000000L

    cmpl-double v6, p2, v6

    if-lez v6, :cond_4

    .line 75
    const-wide v6, 0x4136e36000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_2

    .line 76
    const-wide v2, 0x410e848000000000L

    .line 192
    :cond_1
    :goto_0
    return-wide v2

    .line 77
    :cond_2
    const-wide v6, 0x4146e36000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_3

    .line 78
    const-wide v2, 0x411e848000000000L

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const-wide v2, 0x412e848000000000L

    .line 82
    goto :goto_0

    :cond_4
    const-wide v6, 0x40ed4c0000000000L

    cmpl-double v6, p2, v6

    if-lez v6, :cond_7

    .line 83
    const-wide v6, 0x41024f8000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_5

    .line 84
    const-wide v2, 0x40d86a0000000000L

    .line 85
    goto :goto_0

    :cond_5
    const-wide v6, 0x41124f8000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_6

    .line 86
    const-wide v2, 0x40e86a0000000000L

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    const-wide v2, 0x40f86a0000000000L

    .line 90
    goto :goto_0

    :cond_7
    const-wide v6, 0x40b7700000000000L

    cmpl-double v6, p2, v6

    if-lez v6, :cond_a

    .line 91
    const-wide v6, 0x40cd4c0000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_8

    .line 92
    const-wide v2, 0x40a3880000000000L

    .line 93
    goto :goto_0

    :cond_8
    const-wide v6, 0x40dd4c0000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_9

    .line 94
    const-wide v2, 0x40b3880000000000L

    .line 95
    goto :goto_0

    .line 96
    :cond_9
    const-wide v2, 0x40c3880000000000L

    .line 98
    goto :goto_0

    :cond_a
    const-wide v6, 0x4082c00000000000L

    cmpl-double v6, p2, v6

    if-lez v6, :cond_f

    .line 99
    const-wide v6, 0x4097700000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_b

    .line 100
    const-wide v2, 0x406f400000000000L

    .line 101
    goto/16 :goto_0

    :cond_b
    const-wide v6, 0x40a7700000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_c

    .line 102
    const-wide v2, 0x407f400000000000L

    .line 103
    goto/16 :goto_0

    :cond_c
    const-wide v6, 0x40b3880000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_d

    .line 104
    const-wide v2, 0x408f400000000000L

    .line 105
    goto/16 :goto_0

    :cond_d
    const-wide v6, 0x40bd4c0000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_e

    .line 106
    const-wide v2, 0x4093880000000000L

    .line 107
    goto/16 :goto_0

    .line 108
    :cond_e
    const-wide v2, 0x408f400000000000L

    .line 110
    goto/16 :goto_0

    :cond_f
    const-wide/high16 v6, 0x404e

    cmpl-double v6, p2, v6

    if-lez v6, :cond_12

    .line 111
    const-wide v6, 0x4066800000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_10

    .line 112
    const-wide/high16 v2, 0x403e

    .line 113
    goto/16 :goto_0

    :cond_10
    const-wide v6, 0x4072c00000000000L

    cmpg-double v6, p2, v6

    if-gez v6, :cond_11

    .line 114
    const-wide/high16 v2, 0x4049

    .line 115
    goto/16 :goto_0

    .line 116
    :cond_11
    const-wide/high16 v2, 0x4059

    .line 118
    goto/16 :goto_0

    :cond_12
    const-wide/high16 v6, 0x4018

    cmpl-double v6, p2, v6

    if-lez v6, :cond_15

    .line 119
    const-wide/high16 v6, 0x403e

    cmpg-double v6, p2, v6

    if-gez v6, :cond_13

    .line 120
    const-wide/high16 v2, 0x4014

    .line 121
    goto/16 :goto_0

    :cond_13
    const-wide/high16 v6, 0x404e

    cmpg-double v6, p2, v6

    if-gez v6, :cond_14

    .line 122
    const-wide/high16 v2, 0x4024

    .line 123
    goto/16 :goto_0

    .line 124
    :cond_14
    const-wide/high16 v2, 0x4034

    .line 126
    goto/16 :goto_0

    :cond_15
    const-wide/high16 v6, 0x4018

    cmpg-double v6, p2, v6

    if-gez v6, :cond_1

    .line 127
    const-wide/high16 v2, 0x3ff0

    .line 129
    goto/16 :goto_0

    .line 130
    :cond_16
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double v4, v6, v8

    .line 132
    .local v4, maxNumeber:D
    const-wide/high16 v6, 0x4024

    rem-double v6, v4, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_17

    .line 133
    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 136
    :cond_17
    const-wide v6, 0x41224f8000000000L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1a

    .line 137
    const-wide v6, 0x4136e36000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_18

    .line 138
    const-wide v2, 0x410e848000000000L

    .line 139
    goto/16 :goto_0

    :cond_18
    const-wide v6, 0x4146e36000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_19

    .line 140
    const-wide v2, 0x411e848000000000L

    .line 141
    goto/16 :goto_0

    .line 142
    :cond_19
    const-wide v2, 0x412e848000000000L

    .line 144
    goto/16 :goto_0

    :cond_1a
    const-wide v6, 0x40ed4c0000000000L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1d

    .line 145
    const-wide v6, 0x41024f8000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1b

    .line 146
    const-wide v2, 0x40d86a0000000000L

    .line 147
    goto/16 :goto_0

    :cond_1b
    const-wide v6, 0x41124f8000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1c

    .line 148
    const-wide v2, 0x40e86a0000000000L

    .line 149
    goto/16 :goto_0

    .line 150
    :cond_1c
    const-wide v2, 0x40f86a0000000000L

    .line 152
    goto/16 :goto_0

    :cond_1d
    const-wide v6, 0x40b7700000000000L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_20

    .line 153
    const-wide v6, 0x40cd4c0000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1e

    .line 154
    const-wide v2, 0x40a3880000000000L

    .line 155
    goto/16 :goto_0

    :cond_1e
    const-wide v6, 0x40dd4c0000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1f

    .line 156
    const-wide v2, 0x40b3880000000000L

    .line 157
    goto/16 :goto_0

    .line 158
    :cond_1f
    const-wide v2, 0x40c3880000000000L

    .line 160
    goto/16 :goto_0

    :cond_20
    const-wide v6, 0x4082c00000000000L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_25

    .line 161
    const-wide v6, 0x4097700000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_21

    .line 162
    const-wide v2, 0x406f400000000000L

    .line 163
    goto/16 :goto_0

    :cond_21
    const-wide v6, 0x40a7700000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_22

    .line 164
    const-wide v2, 0x407f400000000000L

    .line 165
    goto/16 :goto_0

    :cond_22
    const-wide v6, 0x40b3880000000000L

    cmpg-double v6, p2, v6

    if-gtz v6, :cond_23

    .line 166
    const-wide v2, 0x408f400000000000L

    .line 167
    goto/16 :goto_0

    :cond_23
    const-wide v6, 0x40bd4c0000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_24

    .line 168
    const-wide v2, 0x4093880000000000L

    .line 169
    goto/16 :goto_0

    .line 170
    :cond_24
    const-wide v2, 0x408f400000000000L

    .line 172
    goto/16 :goto_0

    :cond_25
    const-wide/high16 v6, 0x404e

    cmpl-double v6, v4, v6

    if-lez v6, :cond_28

    .line 173
    const-wide v6, 0x4066800000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_26

    .line 174
    const-wide/high16 v2, 0x403e

    .line 175
    goto/16 :goto_0

    :cond_26
    const-wide v6, 0x4072c00000000000L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_27

    .line 176
    const-wide/high16 v2, 0x4049

    .line 177
    goto/16 :goto_0

    .line 178
    :cond_27
    const-wide/high16 v2, 0x4059

    .line 180
    goto/16 :goto_0

    :cond_28
    const-wide/high16 v6, 0x4018

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2b

    .line 181
    const-wide/high16 v6, 0x403e

    cmpg-double v6, v4, v6

    if-gez v6, :cond_29

    .line 182
    const-wide/high16 v2, 0x4014

    .line 183
    goto/16 :goto_0

    :cond_29
    const-wide/high16 v6, 0x404e

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2a

    .line 184
    const-wide/high16 v2, 0x4024

    .line 185
    goto/16 :goto_0

    .line 186
    :cond_2a
    const-wide/high16 v2, 0x4034

    .line 188
    goto/16 :goto_0

    :cond_2b
    const-wide/high16 v6, 0x4018

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 189
    const-wide/high16 v2, 0x3ff0

    goto/16 :goto_0
.end method

.method private static getTextDataStreamInterval(I)I
    .locals 3
    .parameter "maxY"

    .prologue
    const/16 v1, 0xa

    .line 236
    rem-int/lit8 v2, p0, 0x6

    if-lez v2, :cond_1

    .line 237
    div-int/lit8 v2, p0, 0x6

    add-int/lit8 v0, v2, 0x1

    .line 239
    .local v0, interVal:I
    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    .end local v0           #interVal:I
    :cond_0
    return v0

    .line 238
    :cond_1
    div-int/lit8 v0, p0, 0x6

    goto :goto_0
.end method

.method public static initSingleDataStreamRenderer(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;I)V
    .locals 8
    .parameter "renderer"
    .parameter "graphColor"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4040

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x100

    .line 23
    invoke-virtual {p0, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setInScroll(Z)V

    .line 24
    invoke-virtual {p0, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setAntialiasing(Z)V

    .line 25
    invoke-virtual {p0, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p0, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 27
    const/high16 v2, 0x4140

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setAxisTitleTextSize(F)V

    .line 28
    const/high16 v2, 0x4160

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setChartTitleTextSize(F)V

    .line 29
    const/high16 v2, 0x4130

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setLabelsTextSize(F)V

    .line 30
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setMargins([I)V

    .line 32
    invoke-virtual {p0, v5}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setShowGrid(Z)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setGridColor(I)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setAxesColor(I)V

    .line 35
    invoke-virtual {p0, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setLabelsColor(I)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabelsColor(I)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsColor(I)V

    .line 39
    invoke-virtual {p0, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsPadding(F)V

    .line 40
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabels(I)V

    .line 42
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYInnerLabels(I)V

    .line 43
    invoke-virtual {p0, v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelsAngle(F)V

    .line 44
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 45
    .local v0, format:Ljava/text/NumberFormat;
    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYLabelFormat(Ljava/text/NumberFormat;)V

    .line 48
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabels(I)V

    .line 49
    invoke-virtual {p0, v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXLabelsAngle(F)V

    .line 51
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 52
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    .line 54
    invoke-virtual {p0, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setPointSize(F)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setShowLegend(Z)V

    .line 57
    new-instance v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

    invoke-direct {v1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;-><init>()V

    .line 58
    .local v1, seriesRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
    invoke-virtual {v1, p1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setColor(I)V

    .line 59
    invoke-virtual {v1, v6}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 60
    invoke-virtual {v1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setDisplayChartValues(Z)V

    .line 61
    invoke-virtual {v1, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->addSeriesRenderer(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V

    .line 64
    return-void

    .line 30
    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static resetAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V
    .locals 18
    .parameter "renderer"
    .parameter "dataset"
    .parameter "times"

    .prologue
    .line 196
    monitor-enter p1

    .line 197
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v13

    .line 198
    .local v13, timeRange:I
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMinY()D

    move-result-wide v11

    .line 199
    .local v11, minY:D
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMaxY()D

    move-result-wide v7

    .line 202
    .local v7, maxY:D
    int-to-long v14, v13

    cmp-long v14, p2, v14

    if-lez v14, :cond_1

    .line 203
    int-to-long v14, v13

    sub-long v14, p2, v14

    long-to-double v14, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 204
    move-wide/from16 v0, p2

    long-to-double v14, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    .line 210
    :goto_0
    invoke-static {v11, v12, v7, v8}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->caculateInterVal(DD)D

    move-result-wide v3

    .line 211
    .local v3, interVal:D
    const-wide/16 v14, 0x0

    cmpl-double v14, v7, v14

    if-lez v14, :cond_2

    const-wide/16 v14, 0x0

    cmpl-double v14, v11, v14

    if-ltz v14, :cond_2

    .line 212
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMin(D)V

    .line 213
    const-wide/high16 v14, 0x4018

    mul-double/2addr v14, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMax(D)V

    .line 231
    :cond_0
    :goto_1
    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYInnerLabels(I)V

    .line 196
    monitor-exit p1

    .line 233
    return-void

    .line 206
    .end local v3           #interVal:D
    :cond_1
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 207
    int-to-double v14, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    goto :goto_0

    .line 196
    .end local v7           #maxY:D
    .end local v11           #minY:D
    .end local v13           #timeRange:I
    :catchall_0
    move-exception v14

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 215
    .restart local v3       #interVal:D
    .restart local v7       #maxY:D
    .restart local v11       #minY:D
    .restart local v13       #timeRange:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v14, 0x6

    if-gt v2, v14, :cond_0

    .line 216
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v16, v16, v3

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_4

    .line 217
    int-to-double v14, v2

    mul-double/2addr v14, v3

    neg-double v9, v14

    .line 218
    .local v9, min:D
    const-wide/high16 v14, 0x4018

    mul-double/2addr v14, v3

    add-double v5, v14, v9

    .line 219
    .local v5, max:D
    cmpg-double v14, v5, v7

    if-gez v14, :cond_3

    .line 221
    const-wide/high16 v14, 0x4008

    mul-double/2addr v14, v3

    add-double/2addr v5, v14

    .line 222
    const-wide/high16 v14, 0x4008

    mul-double/2addr v14, v3

    sub-double/2addr v9, v14

    .line 224
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMin(D)V

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMax(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 215
    .end local v5           #max:D
    .end local v9           #min:D
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static resetAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;DI)V
    .locals 20
    .parameter "renderer"
    .parameter "dataset"
    .parameter "times"
    .parameter "index"

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v15

    .line 273
    .local v15, timeRange:I
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMinY()D

    move-result-wide v13

    .line 274
    .local v13, minY:D
    invoke-virtual/range {p1 .. p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMaxY()D

    move-result-wide v9

    .line 276
    .local v9, maxY:D
    int-to-double v0, v15

    move-wide/from16 v16, v0

    cmpl-double v16, p2, v16

    if-lez v16, :cond_1

    .line 277
    int-to-double v0, v15

    move-wide/from16 v16, v0

    sub-double v16, p2, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 278
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 284
    :goto_0
    invoke-static {v13, v14, v9, v10}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->caculateInterVal(DD)D

    move-result-wide v5

    .line 285
    .local v5, interVal:D
    const-wide/16 v16, 0x0

    cmpl-double v16, v9, v16

    if-lez v16, :cond_2

    const-wide/16 v16, 0x0

    cmpl-double v16, v13, v16

    if-ltz v16, :cond_2

    .line 286
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 287
    const-wide/high16 v16, 0x4018

    mul-double v16, v16, v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 271
    :cond_0
    :goto_1
    monitor-exit p0

    .line 306
    return-void

    .line 280
    .end local v5           #interVal:D
    :cond_1
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 281
    int-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    goto :goto_0

    .line 271
    .end local v9           #maxY:D
    .end local v13           #minY:D
    .end local v15           #timeRange:I
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 289
    .restart local v5       #interVal:D
    .restart local v9       #maxY:D
    .restart local v13       #minY:D
    .restart local v15       #timeRange:I
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/16 v16, 0x6

    move/from16 v0, v16

    if-gt v4, v0, :cond_0

    .line 290
    :try_start_1
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v5

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_4

    .line 291
    int-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v16, v16, v5

    move-wide/from16 v0, v16

    neg-double v11, v0

    .line 292
    .local v11, min:D
    const-wide/high16 v16, 0x4018

    mul-double v16, v16, v5

    add-double v7, v16, v11

    .line 294
    .local v7, max:D
    cmpg-double v16, v7, v9

    if-gez v16, :cond_3

    .line 296
    const-wide/high16 v16, 0x4008

    mul-double v16, v16, v5

    add-double v7, v7, v16

    .line 297
    const-wide/high16 v16, 0x4008

    mul-double v16, v16, v5

    sub-double v11, v11, v16

    .line 299
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v11, v12, v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v7, v8, v1}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    .end local v7           #max:D
    .end local v11           #min:D
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V
    .locals 6
    .parameter "renderer"
    .parameter "dataset"
    .parameter "times"

    .prologue
    const-wide/16 v4, 0xb4

    .line 243
    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 244
    sub-long v3, p2, v4

    long-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMin(D)V

    .line 245
    long-to-double v3, p2

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setXAxisMax(D)V

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMaxY()D

    move-result-wide v1

    .line 249
    .local v1, maxY:D
    double-to-int v3, v1

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->getTextDataStreamInterval(I)I

    move-result v0

    .line 250
    .local v0, interVal:I
    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYInnerLabels(I)V

    .line 251
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMin(D)V

    .line 252
    mul-int/lit8 v3, v0, 0x6

    int-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->setYAxisMax(D)V

    .line 253
    return-void
.end method

.method public static resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;JI)V
    .locals 6
    .parameter "renderer"
    .parameter "dataset"
    .parameter "times"
    .parameter "index"

    .prologue
    const-wide/16 v4, 0xb4

    .line 257
    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 258
    sub-long v3, p2, v4

    long-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 259
    long-to-double v3, p2

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->getMaxY()D

    move-result-wide v1

    .line 263
    .local v1, maxY:D
    double-to-int v3, v1

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->getTextDataStreamInterval(I)I

    move-result v0

    .line 264
    .local v0, interVal:I
    invoke-virtual {p0, v0, p4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYInnerLabels(II)V

    .line 265
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4, p4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 266
    mul-int/lit8 v3, v0, 0x6

    int-to-double v3, v3

    invoke-virtual {p0, v3, v4, p4}, Lcom/cnlaunch/achartengineslim/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 267
    return-void
.end method
