.class public Lcom/cnlaunch/newgolo/widget/ChatViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ChatViewPager.java"


# instance fields
.field private measureLock:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->paint:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->measureLock:Z

    .line 22
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->paint:Landroid/graphics/Paint;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->measureLock:Z

    .line 27
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->init()V

    .line 28
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 46
    .local v0, count:I
    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->getWidth()I

    move-result v9

    int-to-float v6, v9

    .line 48
    .local v6, width:F
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .line 49
    .local v1, height:F
    const/high16 v9, 0x42a0

    div-float v5, v1, v9

    .line 50
    .local v5, r:F
    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v5

    mul-float v4, v9, v12

    .line 51
    .local v4, length:F
    const/high16 v9, 0x4220

    div-float v9, v1, v9

    const/high16 v10, 0x4270

    div-float v10, v1, v10

    add-float/2addr v9, v10

    sub-float v8, v1, v9

    .line 52
    .local v8, y:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 70
    .end local v1           #height:F
    .end local v2           #i:I
    .end local v4           #length:F
    .end local v5           #r:F
    .end local v6           #width:F
    .end local v8           #y:F
    :cond_0
    return-void

    .line 53
    .restart local v1       #height:F
    .restart local v2       #i:I
    .restart local v4       #length:F
    .restart local v5       #r:F
    .restart local v6       #width:F
    .restart local v8       #y:F
    :cond_1
    sub-float v9, v6, v4

    div-float/2addr v9, v12

    int-to-float v10, v2

    mul-float/2addr v10, v6

    add-float v7, v9, v10

    .line 55
    .local v7, x:F
    const/4 v9, 0x1

    if-le v0, v9, :cond_2

    .line 56
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-lt v3, v0, :cond_3

    .line 52
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .restart local v3       #j:I
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->getCurrentItem()I

    move-result v9

    if-ne v3, v9, :cond_4

    .line 59
    iget-object v9, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 60
    sget v11, Lcom/cnlaunch/golo3/message/R$color;->login_top_bg:I

    .line 59
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    :goto_2
    const/high16 v9, 0x4080

    mul-float/2addr v9, v5

    int-to-float v10, v3

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    iget-object v10, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_4
    iget-object v9, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->paint:Landroid/graphics/Paint;

    const v10, -0x333334

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->measureLock:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->measureLock:Z

    .line 37
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/cnlaunch/newgolo/widget/ChatViewPager;->setPadding(IIII)V

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 40
    return-void
.end method
