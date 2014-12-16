.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GraphViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphViewAdapter"

.field private static mShowingType:Ljava/lang/String;


# instance fields
.field private bChanngelChanged:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemParams:Landroid/view/ViewGroup$LayoutParams;

.field private mItemWidth:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeStamp:J

.field private mTimes:J

.field private oldStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mShowingType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->bChanngelChanged:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemWidth:I

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemParams:Landroid/view/ViewGroup$LayoutParams;

    .line 64
    return-void
.end method

.method private getFitText(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "unit"
    .parameter "width"
    .parameter "paint"

    .prologue
    .line 149
    move-object v2, p1

    .line 150
    .local v2, newText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    .local v1, length:I
    const/4 v0, 0x0

    .line 152
    .local v0, diff:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p3

    if-lez v3, :cond_0

    if-lt v0, v1, :cond_2

    .line 156
    :cond_0
    if-ne v0, v1, :cond_1

    .line 157
    const-string/jumbo v2, "..."

    .line 159
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    sub-int v5, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getShowingType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mShowingType:Ljava/lang/String;

    monitor-enter v1

    .line 282
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mShowingType:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setShowingType(Ljava/lang/String;)V
    .locals 2
    .parameter "showType"

    .prologue
    .line 274
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mShowingType:Ljava/lang/String;

    monitor-enter v1

    .line 275
    :try_start_0
    sput-object p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mShowingType:Ljava/lang/String;

    .line 274
    monitor-exit v1

    .line 277
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSeries(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .parameter "viewHolder"
    .parameter
    .parameter "strOldTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v5

    .line 164
    .local v5, timeRange:I
    iget-wide v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-wide v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    int-to-long v8, v5

    sub-long v3, v6, v8

    .line 166
    .local v3, startTime:J
    :goto_0
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, iStartSameName:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 201
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v7, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    iget-wide v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    invoke-static {v6, v7, v8, v9}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V

    .line 202
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mChartView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->invalidate()V

    .line 203
    return-void

    .line 164
    .end local v1           #i:I
    .end local v2           #iStartSameName:I
    .end local v3           #startTime:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 195
    .restart local v1       #i:I
    .restart local v2       #iStartSameName:I
    .restart local v3       #startTime:J
    :cond_1
    :try_start_0
    iget-object v7, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v8, v1

    add-long/2addr v8, v3

    int-to-long v10, v2

    sub-long/2addr v8, v10

    long-to-double v8, v8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v7, v1

    add-long/2addr v7, v3

    int-to-long v9, v2

    sub-long/2addr v7, v9

    long-to-double v7, v7

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->add(DD)V

    goto :goto_2
.end method

.method private updateTextDataStream(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .parameter "viewHolder"
    .parameter
    .parameter "strOldTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v5

    .line 207
    .local v5, timeRange:I
    iget-wide v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-wide v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 209
    .local v2, startTime:J
    :goto_0
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/model/XYSeries;->clear()V

    .line 210
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;->getYLabelMap()Ljava/util/Map;

    move-result-object v4

    .line 211
    .local v4, textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->bChanngelChanged:Z

    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 215
    .local v1, iStartSameName:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_2

    .line 220
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v7, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    iget-wide v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    invoke-static {v6, v7, v8, v9}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->resetTextDataStreamAxis(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;J)V

    .line 221
    iget-object v6, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mChartView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v6}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 222
    return-void

    .line 207
    .end local v0           #i:I
    .end local v1           #iStartSameName:I
    .end local v2           #startTime:J
    .end local v4           #textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 216
    .restart local v0       #i:I
    .restart local v1       #iStartSameName:I
    .restart local v2       #startTime:J
    .restart local v4       #textValueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    iget-object v7, p1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    int-to-long v8, v0

    add-long/2addr v8, v2

    int-to-long v10, v1

    sub-long/2addr v8, v10

    long-to-double v8, v8

    .line 217
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v7, v4, v8, v9, v6}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->addTextDataItem(Lcom/cnlaunch/achartengineslim/model/XYSeries;Ljava/util/Map;DLjava/lang/String;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->getItem(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->getItem(I)Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, item:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, tv:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f070695

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemWidth:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 91
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemParams:Landroid/view/ViewGroup$LayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 92
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_0
    return-object v4

    .line 96
    :cond_1
    const-string/jumbo v3, ""

    .line 98
    .local v3, strOldText:Ljava/lang/String;
    if-eqz p2, :cond_2

    instance-of v7, p2, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->bChanngelChanged:Z

    if-eqz v7, :cond_6

    .line 100
    :cond_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0300bb

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;)V

    .line 102
    .local v6, viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;
    const v7, 0x7f0d0254

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 103
    const v7, 0x7f0d017f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 104
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mUnit:Landroid/widget/TextView;

    .line 106
    new-instance v7, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    invoke-direct {v7}, Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;-><init>()V

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    .line 107
    new-instance v8, Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/cnlaunch/achartengineslim/model/XYSeries;-><init>(Ljava/lang/String;)V

    iput-object v8, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    .line 108
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    .line 109
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v8

    .line 108
    invoke-static {v7, v8}, Lcom/cnlaunch/x431pro/utils/DataStreamUpdatingUtils;->initSingleDataStreamRenderer(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;I)V

    .line 110
    new-instance v0, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;

    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

    iget-object v8, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

    invoke-direct {v0, v7, v8}, Lcom/cnlaunch/achartengineslim/chart/DataStreamChart;-><init>(Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;Lcom/cnlaunch/achartengineslim/model/XYSeries;)V

    .line 111
    .local v0, chart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
    new-instance v7, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;-><init>(Landroid/content/Context;Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mChartView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    .line 112
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    iget-object v8, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mChartView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    .end local v0           #chart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, unit:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, showText:Ljava/lang/String;
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mItemWidth:I

    int-to-float v7, v7

    iget-object v8, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-direct {p0, v2, v5, v7, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->getFitText(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 129
    iput-object v3, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->strTitle:Ljava/lang/String;

    .line 131
    :cond_4
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-wide v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mTimes:J

    iget-wide v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    invoke-direct {p0, v6, v1, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->updateTextDataStream(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;Ljava/util/List;Ljava/lang/String;)V

    .line 144
    :cond_5
    :goto_2
    iget-wide v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    iput-wide v7, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mTimes:J

    move-object v4, p2

    .line 145
    goto/16 :goto_0

    .line 116
    .end local v2           #showText:Ljava/lang/String;
    .end local v5           #unit:Ljava/lang/String;
    .end local v6           #viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;

    .line 117
    .restart local v6       #viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;
    iget-object v3, v6, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->strTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 138
    .restart local v2       #showText:Ljava/lang/String;
    .restart local v5       #unit:Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v6, v1, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->updateSeries(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public refreshDataStream(Ljava/util/List;J)V
    .locals 9
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
    .line 231
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v1

    .line 232
    .local v1, newStyle:I
    iget-wide v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimeStamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->oldStyle:I

    if-ne v5, v1, :cond_0

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimeStamp:J

    sub-long v2, v5, v7

    .line 235
    .local v2, refreshInterval:J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 253
    .end local v2           #refreshInterval:J
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->oldStyle:I

    if-eq v5, v1, :cond_1

    .line 240
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->oldStyle:I

    .line 242
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimeStamp:J

    .line 244
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mTimes:J

    .line 245
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 251
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v6, v5}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 249
    .local v4, templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setChanngelChanged(Z)V
    .locals 0
    .parameter "bChanged"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->bChanngelChanged:Z

    .line 68
    return-void
.end method
