.class public Lcom/cnlaunch/newgolo/widget/CornerText;
.super Landroid/widget/TextView;
.source "CornerText.java"


# instance fields
.field protected paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 36
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x8e

    const/16 v3, 0xba

    const/16 v4, 0xc8

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4334

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 50
    .local v2, width:F
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 51
    .local v0, height:F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 52
    .local v1, path:Landroid/graphics/Path;
    invoke-virtual {v1, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    sub-float v3, v2, v0

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, v2, v0

    invoke-direct {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x4387

    invoke-virtual {v1, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 55
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5, v5, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x42b4

    invoke-virtual {v1, v3, v4, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 57
    iget-object v3, p0, Lcom/cnlaunch/newgolo/widget/CornerText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/CornerText;->getTextSize()F

    move-result v1

    float-to-int v0, v1

    .line 43
    .local v0, size:I
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/cnlaunch/newgolo/widget/CornerText;->setPadding(IIII)V

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 45
    return-void
.end method
