.class public Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final MARGIN_THRESHOLD:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mContentWidth:I

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mMarginThreshold:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTransformer:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

.field private mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x1

    .line 42
    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 41
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    .line 43
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mTransformer:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mTransformer:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 122
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .parameter "content"
    .parameter "canvas"
    .parameter "openPercent"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 339
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 340
    .local v6, alpha:I
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    const/4 v7, 0x0

    .line 342
    .local v7, left:I
    const/4 v8, 0x0

    .line 343
    .local v8, right:I
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 356
    :cond_1
    :goto_1
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 346
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 349
    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 352
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "content"
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    .line 321
    .local v0, left:I
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 333
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 323
    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 325
    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 326
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 2
    .parameter "content"

    .prologue
    .line 256
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 261
    :goto_0
    return v0

    .line 258
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2
    .parameter "content"

    .prologue
    .line 265
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 270
    :goto_0
    return v0

    .line 267
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContentWidth:I

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 2
    .parameter "content"
    .parameter "page"

    .prologue
    .line 240
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 252
    :goto_0
    return v0

    .line 242
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 244
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 245
    packed-switch p2, :pswitch_data_0

    .line 252
    :cond_2
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .parameter "page"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 206
    if-le p1, v3, :cond_1

    move p1, v0

    .line 207
    :cond_0
    :goto_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 212
    :goto_1
    return v1

    .line 206
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 209
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 210
    goto :goto_1

    :cond_3
    move v1, p1

    .line 212
    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .parameter "content"
    .parameter "x"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 275
    .local v0, left:I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 276
    .local v1, right:I
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v4, :cond_2

    .line 277
    if-lt p2, v0, :cond_1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 277
    goto :goto_0

    .line 278
    :cond_2
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_4

    .line 279
    if-gt p2, v1, :cond_3

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 280
    :cond_4
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 281
    if-lt p2, v0, :cond_5

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_0

    .line 282
    :cond_5
    if-gt p2, v1, :cond_6

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    .line 281
    if-ge p2, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    .line 284
    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 297
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 298
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 299
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 300
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 301
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 308
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 309
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0

    .line 310
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 311
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 312
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;II)Z
    .locals 4
    .parameter "content"
    .parameter "currPage"
    .parameter "x"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 288
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_2

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p3, v2, :cond_1

    move v0, v1

    .line 293
    :cond_1
    :goto_0
    return v0

    .line 290
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 291
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt p3, v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 130
    sub-int v1, p4, p2

    .line 131
    .local v1, width:I
    sub-int v0, p5, p3

    .line 132
    .local v0, height:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 133
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-static {v5, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 140
    .local v3, width:I
    invoke-static {v5, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 141
    .local v2, height:I
    invoke-virtual {p0, v3, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setMeasuredDimension(II)V

    .line 142
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 143
    .local v1, contentWidth:I
    invoke-static {p2, v5, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 144
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 145
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 147
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mChildrenEnabled:Z

    return v0
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .parameter "content"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, vis:I
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    if-nez v1, :cond_2

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    const/16 v0, 0x8

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->scrollTo(II)V

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->setVisibility(I)V

    .line 237
    return-void

    .line 221
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_3

    const/16 v0, 0x8

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 224
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 223
    invoke-virtual {p0, v1, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 225
    :cond_4
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    if-nez p2, :cond_7

    move v0, v2

    .line 229
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_8

    .line 230
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 226
    goto :goto_1

    :cond_6
    move v1, v3

    .line 227
    goto :goto_2

    :cond_7
    move v0, v3

    .line 228
    goto :goto_3

    .line 232
    :cond_8
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 233
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 232
    invoke-virtual {p0, v1, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->scrollTo(II)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mTransformer:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->invalidate()V

    .line 105
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mTransformer:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    .line 51
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mChildrenEnabled:Z

    .line 98
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public setCustomViewAbove(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)V
    .locals 0
    .parameter "customViewAbove"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mViewAbove:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;

    .line 47
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 200
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadeDegree:F

    .line 203
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mFadeEnabled:Z

    .line 197
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_2
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mMode:I

    .line 166
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .parameter "scrollScale"

    .prologue
    .line 173
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mScrollScale:F

    .line 174
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->invalidate()V

    .line 188
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->invalidate()V

    .line 183
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 191
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mShadowWidth:I

    .line 192
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->invalidate()V

    .line 193
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 54
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mWidthOffset:I

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 58
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .local v1, width:I
    sub-int v2, v1, p1

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->mContentWidth:I

    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->requestLayout()V

    .line 63
    return-void
.end method
