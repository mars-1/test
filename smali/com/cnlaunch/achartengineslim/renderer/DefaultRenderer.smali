.class public Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer$Orientation;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1000000

.field public static final NO_COLOR:I = 0x0

.field private static final REGULAR_TEXT_FONT:Landroid/graphics/Typeface; = null

.field public static final TEXT_COLOR:I = -0x333334


# instance fields
.field private mAntialiasing:Z

.field private mApplyBackgroundColor:Z

.field private mBackgroundColor:I

.field private mChartTitle:Ljava/lang/String;

.field private mChartTitleTextSize:F

.field private mClickEnabled:Z

.field private mDisplayValues:Z

.field private mExternalZoomEnabled:Z

.field private mFitLegend:Z

.field private mInScroll:Z

.field private mLabelsColor:I

.field private mLabelsTextSize:F

.field private mLegendHeight:I

.field private mLegendTextSize:F

.field private mMargins:[I

.field private mOriginalScale:F

.field private mPanEnabled:Z

.field private mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field private mShowAxes:Z

.field private mShowCustomTextGridX:Z

.field private mShowCustomTextGridY:Z

.field private mShowGridX:Z

.field private mShowGridY:Z

.field private mShowLabels:Z

.field private mShowLegend:Z

.field private mShowTickMarks:Z

.field private mStartAngle:F

.field private mTextTypeface:Landroid/graphics/Typeface;

.field private mTextTypefaceName:Ljava/lang/String;

.field private mTextTypefaceStyle:I

.field private mXAxisColor:I

.field private mYAxisColor:I

.field private mZoomButtonsVisible:Z

.field private mZoomEnabled:Z

.field private mZoomRate:F

.field private mbDynamicShowOverrideText:Z

.field private selectableBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, -0x333334

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    .line 33
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitleTextSize:F

    .line 43
    sget-object v0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    .line 53
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowAxes:Z

    .line 55
    iput v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mYAxisColor:I

    .line 57
    iput v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mXAxisColor:I

    .line 59
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLabels:Z

    .line 61
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowTickMarks:Z

    .line 63
    iput v3, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsColor:I

    .line 65
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 67
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLegend:Z

    .line 69
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 71
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mFitLegend:Z

    .line 73
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridX:Z

    .line 75
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridY:Z

    .line 77
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridX:Z

    .line 79
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridY:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    .line 83
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mAntialiasing:Z

    .line 85
    iput v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendHeight:I

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mMargins:[I

    .line 89
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mScale:F

    .line 91
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mPanEnabled:Z

    .line 93
    iput-boolean v2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomEnabled:Z

    .line 95
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    .line 97
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomRate:F

    .line 99
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    .line 101
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mScale:F

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mOriginalScale:F

    .line 103
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mClickEnabled:Z

    .line 105
    const/16 v0, 0xf

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->selectableBuffer:I

    .line 110
    iput-boolean v1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mbDynamicShowOverrideText:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mStartAngle:F

    .line 28
    return-void

    .line 87
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addSeriesRenderer(ILcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "index"
    .parameter "renderer"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method public addSeriesRenderer(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public getAxesColor()I
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mXAxisColor:I

    const v1, -0x333334

    if-eq v0, v1, :cond_0

    .line 333
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mXAxisColor:I

    .line 337
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mYAxisColor:I

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mBackgroundColor:I

    return v0
.end method

.method public getChartTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getChartTitleTextSize()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitleTextSize:F

    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsColor:I

    return v0
.end method

.method public getLabelsTextSize()F
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsTextSize:F

    return v0
.end method

.method public getLegendHeight()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendHeight:I

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendTextSize:F

    return v0
.end method

.method public getMargins()[I
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mMargins:[I

    return-object v0
.end method

.method public getOriginalScale()F
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mOriginalScale:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mScale:F

    return v0
.end method

.method public getSelectableBuffer()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->selectableBuffer:I

    return v0
.end method

.method public getSeriesRendererAt(I)Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;
    .locals 1
    .parameter "index"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getSeriesRendererCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeriesRenderers()[Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mStartAngle:F

    return v0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTextTypefaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypefaceStyle()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    return v0
.end method

.method public getXAxisColor()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mXAxisColor:I

    return v0
.end method

.method public getYAxisColor()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mYAxisColor:I

    return v0
.end method

.method public getZoomRate()F
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomRate:F

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mAntialiasing:Z

    return v0
.end method

.method public isApplyBackgroundColor()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    return v0
.end method

.method public isClickEnabled()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mClickEnabled:Z

    return v0
.end method

.method public isDisplayValues()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mDisplayValues:Z

    return v0
.end method

.method public isDynamicShowOverrideText()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mbDynamicShowOverrideText:Z

    return v0
.end method

.method public isExternalZoomEnabled()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    return v0
.end method

.method public isFitLegend()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mFitLegend:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mInScroll:Z

    return v0
.end method

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mPanEnabled:Z

    return v0
.end method

.method public isShowAxes()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowAxes:Z

    return v0
.end method

.method public isShowCustomTextGridX()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridX:Z

    return v0
.end method

.method public isShowCustomTextGridY()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridY:Z

    return v0
.end method

.method public isShowGridX()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridX:Z

    return v0
.end method

.method public isShowGridY()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridY:Z

    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLabels:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLegend:Z

    return v0
.end method

.method public isShowTickMarks()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowTickMarks:Z

    return v0
.end method

.method public isZoomButtonsVisible()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomEnabled:Z

    return v0
.end method

.method public removeAllRenderers()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    return-void
.end method

.method public removeSeriesRenderer(Lcom/cnlaunch/achartengineslim/renderer/SimpleSeriesRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public setAntialiasing(Z)V
    .locals 0
    .parameter "antialiasing"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mAntialiasing:Z

    .line 745
    return-void
.end method

.method public setApplyBackgroundColor(Z)V
    .locals 0
    .parameter "apply"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mApplyBackgroundColor:Z

    .line 322
    return-void
.end method

.method public setAxesColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setXAxisColor(I)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setYAxisColor(I)V

    .line 351
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 300
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mBackgroundColor:I

    .line 301
    return-void
.end method

.method public setChartTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitle:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setChartTitleTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 184
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mChartTitleTextSize:F

    .line 185
    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mClickEnabled:Z

    .line 903
    return-void
.end method

.method public setDisplayValues(Z)V
    .locals 0
    .parameter "display"

    .prologue
    .line 1035
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mDisplayValues:Z

    .line 1036
    return-void
.end method

.method public setDynamicShowOverrideText(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mbDynamicShowOverrideText:Z

    .line 204
    return-void
.end method

.method public setExternalZoomEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mExternalZoomEnabled:Z

    .line 840
    return-void
.end method

.method public setFitLegend(Z)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mFitLegend:Z

    .line 648
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "inScroll"

    .prologue
    .line 989
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mInScroll:Z

    .line 990
    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 413
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsColor:I

    .line 414
    return-void
.end method

.method public setLabelsTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 434
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLabelsTextSize:F

    .line 435
    return-void
.end method

.method public setLegendHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 944
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendHeight:I

    .line 945
    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 698
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mLegendTextSize:F

    .line 699
    return-void
.end method

.method public setMargins([I)V
    .locals 0
    .parameter "margins"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mMargins:[I

    .line 968
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mPanEnabled:Z

    .line 871
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 776
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mScale:F

    .line 777
    return-void
.end method

.method public setSelectableBuffer(I)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 923
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->selectableBuffer:I

    .line 924
    return-void
.end method

.method public setShowAxes(Z)V
    .locals 0
    .parameter "showAxes"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowAxes:Z

    .line 456
    return-void
.end method

.method public setShowCustomTextGrid(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setShowCustomTextGridX(Z)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setShowCustomTextGridY(Z)V

    .line 606
    return-void
.end method

.method public setShowCustomTextGridX(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridX:Z

    .line 583
    return-void
.end method

.method public setShowCustomTextGridY(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowCustomTextGridY:Z

    .line 594
    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setShowGridX(Z)V

    .line 551
    invoke-virtual {p0, p1}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->setShowGridY(Z)V

    .line 552
    return-void
.end method

.method public setShowGridX(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridX:Z

    .line 529
    return-void
.end method

.method public setShowGridY(Z)V
    .locals 0
    .parameter "showGrid"

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowGridY:Z

    .line 540
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0
    .parameter "showLabels"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLabels:Z

    .line 477
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .parameter "showLegend"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowLegend:Z

    .line 627
    return-void
.end method

.method public setShowTickMarks(Z)V
    .locals 0
    .parameter "mShowTickMarks"

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mShowTickMarks:Z

    .line 498
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .parameter "startAngle"

    .prologue
    .line 1014
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mStartAngle:F

    .line 1015
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeface"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypeface:Landroid/graphics/Typeface;

    .line 724
    return-void
.end method

.method public setTextTypeface(Ljava/lang/String;I)V
    .locals 0
    .parameter "typefaceName"
    .parameter "style"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceName:Ljava/lang/String;

    .line 712
    iput p2, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mTextTypefaceStyle:I

    .line 713
    return-void
.end method

.method public setXAxisColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 392
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mXAxisColor:I

    .line 393
    return-void
.end method

.method public setYAxisColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 371
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mYAxisColor:I

    .line 372
    return-void
.end method

.method public setZoomButtonsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 818
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomButtonsVisible:Z

    .line 819
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomEnabled:Z

    .line 798
    return-void
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 881
    iput p1, p0, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->mZoomRate:F

    .line 882
    return-void
.end method
