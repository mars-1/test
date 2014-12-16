.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;
.source "GridGraphPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridGraphPage"


# instance fields
.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

.field private mCallBack:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mproducttype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "bigPageIndex"
    .parameter "startIndex"
    .parameter "streamCount"
    .parameter "callBack"
    .parameter "strtype"

    .prologue
    .line 38
    invoke-direct {p0, p2, p3, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;-><init>(III)V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mproducttype:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iput-object p5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mCallBack:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->setProductType(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->initGridStyle(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private getCurrentPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->getBigPageIndex()I

    move-result v2

    .line 126
    .local v2, pageIndex:I
    const/4 v3, 0x0

    .line 127
    .local v3, startPosition:I
    const/4 v0, 0x0

    .line 128
    .local v0, endPosition:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 130
    .local v1, inDataCount:I
    if-eqz p5, :cond_1

    .line 131
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    if-ne v1, v4, :cond_0

    .line 132
    invoke-interface {p1, v5, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 150
    :goto_0
    return-object v4

    .line 134
    :cond_0
    if-ne p2, v1, :cond_3

    .line 135
    mul-int v3, v2, p3

    .line 136
    add-int v0, v3, p4

    .line 137
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 140
    :cond_1
    if-ne v1, p2, :cond_2

    .line 141
    mul-int v3, v2, p3

    .line 142
    add-int v0, v3, p4

    .line 143
    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 145
    :cond_2
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    if-ne v1, v4, :cond_3

    .line 146
    invoke-interface {p1, v5, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 150
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private initGridStyle(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v10, 0x7f0b00cc

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 56
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 58
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    .local v2, containerWidth:I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit16 v1, v8, -0xc8

    .line 60
    .local v1, containerHeight:I
    const v8, 0x7f0b00a4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 61
    .local v6, itemWidth:I
    const v8, 0x7f0b00a5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 63
    .local v5, itemHeihgt:I
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getGraphColumnNum()I

    move-result v0

    .line 64
    .local v0, colums:I
    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getGraphColumnNum()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 65
    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 66
    const/4 v0, 0x1

    .line 67
    move v6, v2

    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, iNeedDecValue:I
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mproducttype:Ljava/lang/String;

    const-string/jumbo v9, "MaxGo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    const/16 v4, 0xa

    .line 78
    :cond_0
    :goto_0
    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    div-int v8, v1, v8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    sub-int v5, v8, v4

    .line 88
    .end local v4           #iNeedDecValue:I
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 89
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 91
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    const v9, 0x7f0d0017

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const v10, 0x7f0d0018

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v11, 0x7f0d0019

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 92
    const v12, 0x7f0d001a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 91
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 93
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    const v9, 0x7f0d0015

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 94
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    const v9, 0x7f0d0016

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 95
    new-instance v8, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-direct {v8, p1, v6, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    .line 96
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    return-void

    .line 75
    .restart local v4       #iNeedDecValue:I
    :cond_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mproducttype:Ljava/lang/String;

    const-string/jumbo v9, "ScanPad071"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mproducttype:Ljava/lang/String;

    const-string/jumbo v9, "X431Pro"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    :cond_3
    const/16 v4, 0x6e

    goto :goto_0

    .line 80
    .end local v4           #iNeedDecValue:I
    :cond_4
    const/4 v0, 0x2

    .line 81
    div-int/lit8 v6, v2, 0x2

    .line 85
    div-int/lit8 v8, v1, 0x2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v5, v8, v9

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getGraphView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->getGraphView()Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getGraphView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "GridGraphPage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onItemClick position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->getItem(I)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, itemData:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mCallBack:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mCallBack:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStartIndex:I

    invoke-interface {v1, v2, p3, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;->onGridGraphItemClick(IILjava/util/List;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setProductType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mproducttype:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->clear()V

    .line 220
    return-void
.end method

.method public updateDataStream(Ljava/util/List;J)V
    .locals 5
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
    .line 105
    .local p1, dataAllList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStartIndex:I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_1

    .line 109
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStartIndex:I

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStartIndex:I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    add-int/2addr v3, v4

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isChanngelChanged()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->setChanngelChanged(Z)V

    .line 117
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v2, v1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->refreshDataStream(Ljava/util/List;J)V

    goto :goto_0

    .line 111
    .end local v0           #i:I
    .end local v1           #pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    :cond_1
    move-object v1, p1

    .restart local v1       #pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    goto :goto_1

    .line 114
    .restart local v0       #i:I
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public updatePageDataStream(Ljava/util/List;J)V
    .locals 6
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
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v5, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, ptmpData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    .line 202
    .local v3, subEnd:I
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isChanngelChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->setChanngelChanged(Z)V

    .line 214
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v4, v2, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->refreshDataStream(Ljava/util/List;J)V

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 206
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, e2:Ljava/lang/Exception;
    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public updatePageDataStream(Ljava/util/List;JIIZ)V
    .locals 10
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
    .line 154
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    if-nez p1, :cond_1

    .line 155
    const-string/jumbo v0, "GridGraphPage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updatePageDataStream - No data come................."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v9, ptmpData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mStreamCount:I

    .local v4, subEnd:I
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move/from16 v5, p6

    .line 162
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->getCurrentPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 183
    :goto_1
    if-eqz v9, :cond_0

    .line 186
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isChanngelChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->setChanngelChanged(Z)V

    .line 190
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-virtual {v0, v9, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->refreshDataStream(Ljava/util/List;J)V

    goto :goto_0

    .line 167
    .end local v8           #i:I
    :catch_0
    move-exception v6

    .line 168
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move/from16 v5, p6

    .line 170
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->getCurrentPageDataStream(Ljava/util/List;IIIZ)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_1

    .line 175
    :catch_1
    move-exception v7

    .line 176
    .local v7, e2:Ljava/lang/Exception;
    const-string/jumbo v0, "GridGraphPage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "updatePageDataStream - Get Current page data error................."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #e2:Ljava/lang/Exception;
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method
