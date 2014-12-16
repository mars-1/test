.class public Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;
.super Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;
.source "XYSeriesRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    }
.end annotation


# instance fields
.field private mAnnotationsColor:I

.field private mAnnotationsTextAlign:Landroid/graphics/Paint$Align;

.field private mAnnotationsTextSize:F

.field private mChartValuesSpacing:F

.field private mChartValuesTextAlign:Landroid/graphics/Paint$Align;

.field private mChartValuesTextSize:F

.field private mDisplayChartValues:Z

.field private mDisplayChartValuesDistance:I

.field private mFillBelowLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;",
            ">;"
        }
    .end annotation
.end field

.field private mFillPoints:Z

.field private mLineWidth:F

.field private mPointStrokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4120

    const/high16 v1, 0x3f80

    .line 30
    invoke-direct {p0}, Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillPoints:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    .line 36
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mPointStrokeWidth:F

    .line 38
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mLineWidth:F

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mDisplayChartValuesDistance:I

    .line 44
    iput v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextSize:F

    .line 46
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextAlign:Landroid/graphics/Paint$Align;

    .line 48
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesSpacing:F

    .line 50
    iput v2, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextSize:F

    .line 52
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextAlign:Landroid/graphics/Paint$Align;

    .line 54
    const v0, -0x333334

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsColor:I

    .line 30
    return-void
.end method


# virtual methods
.method public addFillOutsideLine(Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;)V
    .locals 1
    .parameter "fill"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public getAnnotationsColor()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsColor:I

    return v0
.end method

.method public getAnnotationsTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getAnnotationsTextSize()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextSize:F

    return v0
.end method

.method public getChartValuesSpacing()F
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesSpacing:F

    return v0
.end method

.method public getChartValuesTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getChartValuesTextSize()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextSize:F

    return v0
.end method

.method public getDisplayChartValuesDistance()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mDisplayChartValuesDistance:I

    return v0
.end method

.method public getFillOutsideLine()[Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mLineWidth:F

    return v0
.end method

.method public getPointStrokeWidth()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mPointStrokeWidth:F

    return v0
.end method

.method public isDisplayChartValues()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mDisplayChartValues:Z

    return v0
.end method

.method public isFillBelowLine()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFillPoints()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillPoints:Z

    return v0
.end method

.method public setAnnotationsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 404
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsColor:I

    .line 405
    return-void
.end method

.method public setAnnotationsTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextAlign:Landroid/graphics/Paint$Align;

    .line 386
    return-void
.end method

.method public setAnnotationsTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 366
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mAnnotationsTextSize:F

    .line 367
    return-void
.end method

.method public setChartValuesSpacing(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 347
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesSpacing:F

    .line 348
    return-void
.end method

.method public setChartValuesTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter "align"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextAlign:Landroid/graphics/Paint$Align;

    .line 329
    return-void
.end method

.method public setChartValuesTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 309
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mChartValuesTextSize:F

    .line 310
    return-void
.end method

.method public setDisplayChartValues(Z)V
    .locals 0
    .parameter "display"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mDisplayChartValues:Z

    .line 272
    return-void
.end method

.method public setDisplayChartValuesDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 290
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mDisplayChartValuesDistance:I

    .line 291
    return-void
.end method

.method public setFillBelowLine(Z)V
    .locals 3
    .parameter "fill"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    sget-object v2, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->BOUNDS_ALL:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-direct {v1, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;-><init>(Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    sget-object v2, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;->NONE:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;

    invoke-direct {v1, v2}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;-><init>(Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine$Type;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFillBelowLineColor(I)V
    .locals 2
    .parameter "color"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillBelowLine:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer$FillOutsideLine;->setColor(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public setFillPoints(Z)V
    .locals 0
    .parameter "fill"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mFillPoints:Z

    .line 200
    return-void
.end method

.method public setLineWidth(F)V
    .locals 0
    .parameter "lineWidth"

    .prologue
    .line 252
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mLineWidth:F

    .line 253
    return-void
.end method

.method public setPointStrokeWidth(F)V
    .locals 0
    .parameter "strokeWidth"

    .prologue
    .line 233
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;->mPointStrokeWidth:F

    .line 234
    return-void
.end method
