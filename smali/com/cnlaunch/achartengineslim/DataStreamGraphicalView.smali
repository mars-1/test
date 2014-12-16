.class public Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
.super Landroid/view/View;
.source "DataStreamGraphicalView.java"


# instance fields
.field private mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

.field private mDrawn:Z

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mPaint:Landroid/graphics/Paint;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mPaint:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V
    .locals 1
    .parameter "context"
    .parameter "chart"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mHandler:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->getRenderer()Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;

    .line 51
    return-void
.end method


# virtual methods
.method public getChart()Lcom/cnlaunch/achartengineslim/chart/AbstractChart;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    return-object v0
.end method

.method public isChartDrawn()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mDrawn:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 121
    .local v3, top:I
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 122
    .local v2, left:I
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 123
    .local v4, width:I
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 124
    .local v5, height:I
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isInScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getMeasuredWidth()I

    move-result v4

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getMeasuredHeight()I

    move-result v5

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mChart:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    iget-object v6, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mDrawn:Z

    .line 134
    return-void
.end method

.method public repaint()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$1;-><init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public repaint(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 90
    iget-object v6, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$2;-><init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->setDrawingCacheEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->setDrawingCacheEnabled(Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->isApplyBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->setDrawingCacheBackgroundColor(I)V

    .line 110
    :cond_1
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->setDrawingCacheQuality(I)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
