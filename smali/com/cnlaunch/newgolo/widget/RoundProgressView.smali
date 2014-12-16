.class public Lcom/cnlaunch/newgolo/widget/RoundProgressView;
.super Landroid/view/View;
.source "RoundProgressView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RoundProgressView"


# instance fields
.field private mCircleColor:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRadius:F

.field private mRingColor:I

.field private mRingPaint:Landroid/graphics/Paint;

.field private mRingRadius:F

.field private mStrokeWidth:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTotalProgress:I

.field private mTxtHeight:F

.field private mTxtWidth:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mTotalProgress:I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->initVariable()V

    .line 53
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x41f0

    const/high16 v3, 0x4120

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 57
    sget-object v2, Lcom/cnlaunch/golo3/message/R$styleable;->roundedimageview:[I

    .line 56
    invoke-virtual {v1, p2, v2, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, typeArray:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRadius:F

    .line 59
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mStrokeWidth:F

    .line 60
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mCircleColor:I

    .line 61
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingColor:I

    .line 62
    iput v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mStrokeWidth:F

    .line 63
    iget v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRadius:F

    iget v2, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mStrokeWidth:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    .line 64
    iput v4, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    .line 66
    return-void
.end method

.method private initVariable()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 95
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mXCenter:I

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mYCenter:I

    .line 100
    const-string/jumbo v0, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RoundProgressViewonDraw mRadius = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRadius:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    const-string/jumbo v3, "mStrokeWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    const-string/jumbo v3, "mRingRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v0, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mProgress:I

    if-lez v0, :cond_0

    .line 107
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 108
    .local v1, oval:Landroid/graphics/RectF;
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mXCenter:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 109
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mYCenter:I

    int-to-float v0, v0

    iget v2, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 110
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 111
    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mYCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingRadius:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 112
    const-string/jumbo v0, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RoundProgressViewonDraw  \noval.left = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\noval.top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    const-string/jumbo v3, "\noval.right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n oval.bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v0, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mProgress:I

    int-to-float v0, v0

    iget v3, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mTotalProgress:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x43b4

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mRingPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    .end local v1           #oval:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 122
    iput p1, p0, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->mProgress:I

    .line 124
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/RoundProgressView;->postInvalidate()V

    .line 125
    return-void
.end method
