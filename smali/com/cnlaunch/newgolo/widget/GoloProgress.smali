.class public Lcom/cnlaunch/newgolo/widget/GoloProgress;
.super Landroid/widget/ImageView;
.source "GoloProgress.java"


# instance fields
.field protected degree:I

.field protected lastTime:J

.field protected paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->lastTime:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    .line 16
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->lastTime:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    .line 21
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->lastTime:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    .line 26
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->init()V

    .line 27
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->paint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 34
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 40
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->lastTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x28

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->lastTime:J

    .line 44
    iget v1, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    .line 46
    :cond_0
    iget v1, p0, Lcom/cnlaunch/newgolo/widget/GoloProgress;->degree:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 47
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/GoloProgress;->invalidate()V

    .line 51
    :cond_1
    return-void
.end method
