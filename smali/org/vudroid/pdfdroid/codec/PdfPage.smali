.class public Lorg/vudroid/pdfdroid/codec/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.java"

# interfaces
.implements Lorg/vudroid/core/codec/CodecPage;


# instance fields
.field private docHandle:J

.field private pageHandle:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0
    .parameter "pageHandle"
    .parameter "docHandle"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    .line 18
    iput-wide p3, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    .line 19
    return-void
.end method

.method static createPage(JI)Lorg/vudroid/pdfdroid/codec/PdfPage;
    .locals 3
    .parameter "dochandle"
    .parameter "pageno"

    .prologue
    .line 57
    new-instance v0, Lorg/vudroid/pdfdroid/codec/PdfPage;

    invoke-static {p0, p1, p2}, Lorg/vudroid/pdfdroid/codec/PdfPage;->open(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/vudroid/pdfdroid/codec/PdfPage;-><init>(JJ)V

    return-object v0
.end method

.method private static native free(JJ)V
.end method

.method private static native getBounds(JJ[F)V
.end method

.method private getMediaBox()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 74
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 75
    .local v0, box:[F
    iget-wide v1, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    iget-wide v3, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    invoke-static {v1, v2, v3, v4, v0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getBounds(JJ[F)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private static native open(JI)J
.end method

.method private static native renderPage(JJ[I[F[III)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->recycle()V

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isDecoding()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    invoke-static {v0, v1, v2, v3}, Lorg/vudroid/pdfdroid/codec/PdfPage;->free(JJ)V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public render(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "viewbox"
    .parameter "matrix"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    new-array v4, v3, [I

    .line 81
    .local v4, mRect:[I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    aput v0, v4, v7

    .line 82
    iget v0, p1, Landroid/graphics/Rect;->top:I

    aput v0, v4, v8

    .line 83
    iget v0, p1, Landroid/graphics/Rect;->right:I

    aput v0, v4, v1

    .line 84
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    aput v0, v4, v2

    .line 86
    const/16 v0, 0x9

    new-array v10, v0, [F

    .line 87
    .local v10, matrixSource:[F
    const/4 v0, 0x6

    new-array v5, v0, [F

    .line 88
    .local v5, matrixArray:[F
    invoke-virtual {p2, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 89
    aget v0, v10, v7

    aput v0, v5, v7

    .line 90
    aget v0, v10, v2

    aput v0, v5, v8

    .line 91
    aget v0, v10, v8

    aput v0, v5, v1

    .line 92
    aget v0, v10, v3

    aput v0, v5, v2

    .line 93
    aget v0, v10, v1

    aput v0, v5, v3

    .line 94
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, v10, v1

    aput v1, v5, v0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 97
    .local v11, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 98
    .local v9, height:I
    mul-int v0, v11, v9

    new-array v6, v0, [I

    .line 99
    .local v6, bufferarray:[I
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->docHandle:J

    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->pageHandle:J

    invoke-static/range {v0 .. v8}, Lorg/vudroid/pdfdroid/codec/PdfPage;->renderPage(JJ[I[F[III)V

    .line 101
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 100
    invoke-static {v6, v11, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public renderBitmap(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "pageSliceBounds"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v0, matrix:Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    .line 48
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 49
    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    .line 50
    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 51
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v4, v1

    .line 52
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v4, v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1, v0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->render(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public waitForDecode()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
