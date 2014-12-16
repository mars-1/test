.class Lorg/vudroid/core/PageTreeNode;
.super Ljava/lang/Object;
.source "PageTreeNode.java"


# static fields
.field private static final SLICE_SIZE:I = 0xffff


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapWeakReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private children:[Lorg/vudroid/core/PageTreeNode;

.field private decodingNow:Z

.field private documentView:Lorg/vudroid/core/DocumentView;

.field private invalidateFlag:Z

.field private matrix:Landroid/graphics/Matrix;

.field private final page:Lorg/vudroid/core/Page;

.field private final pageSliceBounds:Landroid/graphics/RectF;

.field private targetRect:Landroid/graphics/Rect;

.field private targetRectF:Landroid/graphics/RectF;

.field private final treeNodeDepthLevel:I


# direct methods
.method constructor <init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V
    .locals 1
    .parameter "documentView"
    .parameter "localPageSliceBounds"
    .parameter "page"
    .parameter "treeNodeDepthLevel"
    .parameter "parent"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapPaint:Landroid/graphics/Paint;

    .line 24
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    .line 25
    invoke-direct {p0, p2, p5}, Lorg/vudroid/core/PageTreeNode;->evaluatePageSliceBounds(Landroid/graphics/RectF;Lorg/vudroid/core/PageTreeNode;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    .line 26
    iput-object p3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    .line 27
    iput p4, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    .line 28
    return-void
.end method

.method static synthetic access$0(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/DocumentView;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/vudroid/core/PageTreeNode;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lorg/vudroid/core/PageTreeNode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    return-void
.end method

.method static synthetic access$3(Lorg/vudroid/core/PageTreeNode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    return-void
.end method

.method static synthetic access$4(Lorg/vudroid/core/PageTreeNode;)Lorg/vudroid/core/Page;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    return-object v0
.end method

.method static synthetic access$5(Lorg/vudroid/core/PageTreeNode;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    return-void
.end method

.method private childrenContainBitmaps()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 249
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->containsBitmaps()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private containsBitmaps()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->childrenContainBitmaps()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decodePageTreeNode()V
    .locals 6

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isDecodingNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    .line 138
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget v2, v1, Lorg/vudroid/core/Page;->index:I

    new-instance v3, Lorg/vudroid/core/PageTreeNode$1;

    invoke-direct {v3, p0}, Lorg/vudroid/core/PageTreeNode$1;-><init>(Lorg/vudroid/core/PageTreeNode;)V

    .line 150
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v1, v1, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v1}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v4

    iget-object v5, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    move-object v1, p0

    .line 138
    invoke-interface/range {v0 .. v5}, Lorg/vudroid/core/DecodeService;->decodePage(Ljava/lang/Object;ILorg/vudroid/core/DecodeService$DecodeCallback;FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private evaluatePageSliceBounds(Landroid/graphics/RectF;Lorg/vudroid/core/PageTreeNode;)Landroid/graphics/RectF;
    .locals 4
    .parameter "localPageSliceBounds"
    .parameter "parent"

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 162
    .end local p1
    :goto_0
    return-object p1

    .line 157
    .restart local p1
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v2, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 159
    iget-object v2, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p2, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 161
    .local v1, sliceBounds:Landroid/graphics/RectF;
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-object p1, v1

    .line 162
    goto :goto_0
.end method

.method private getTargetRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 197
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 199
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v2, v2, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v3, v3, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 200
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v2, v2, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    iget-object v3, v3, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 201
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 202
    .local v0, targetRectF:Landroid/graphics/RectF;
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->pageSliceBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    .line 205
    .end local v0           #targetRectF:Landroid/graphics/RectF;
    :cond_0
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getTargetRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private invalidateChildren()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f40

    const/high16 v11, 0x3f00

    const/high16 v10, 0x3e80

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 103
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    mul-int/lit8 v4, v0, 0x2

    .line 106
    .local v4, newThreshold:I
    const/4 v0, 0x4

    new-array v6, v0, [Lorg/vudroid/core/PageTreeNode;

    const/4 v7, 0x0

    .line 107
    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    .line 108
    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v10, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    .line 109
    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v11, v9, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    .line 110
    new-instance v0, Lorg/vudroid/core/PageTreeNode;

    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8, v12, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/vudroid/core/PageTreeNode;-><init>(Lorg/vudroid/core/DocumentView;Landroid/graphics/RectF;Lorg/vudroid/core/Page;ILorg/vudroid/core/PageTreeNode;)V

    aput-object v0, v6, v7

    .line 105
    iput-object v6, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    .line 113
    .end local v4           #newThreshold:I
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    :cond_2
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->recycleChildren()V

    .line 116
    :cond_3
    return-void
.end method

.method private invalidateRecursive()V
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    .line 60
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 66
    return-void

    .line 61
    :cond_1
    aget-object v0, v2, v1

    .line 62
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->invalidateRecursive()V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isDecodingNow()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    return v0
.end method

.method private isHiddenByChildren()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_2

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 220
    :cond_2
    aget-object v0, v3, v2

    .line 221
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isVisible()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->getPreShowViewRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method private isVisibleAndNotHiddenByChildren()Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isHiddenByChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycle()V
    .locals 4

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 258
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 260
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 264
    :cond_0
    return-void

    .line 260
    :cond_1
    aget-object v0, v2, v1

    .line 261
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->recycle()V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private recycleChildren()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 235
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->childrenContainBitmaps()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    goto :goto_0

    .line 232
    :cond_2
    aget-object v0, v2, v1

    .line 233
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-direct {v0}, Lorg/vudroid/core/PageTreeNode;->recycle()V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restoreBitmapReference()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, -0x1

    .line 166
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 170
    if-eqz p1, :cond_3

    .line 171
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    .line 175
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0}, Lorg/vudroid/core/DocumentView;->postInvalidate()V

    .line 177
    :cond_3
    iput-object p1, p0, Lorg/vudroid/core/PageTreeNode;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setDecodingNow(Z)V
    .locals 1
    .parameter "decodingNow"

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    if-eq v0, p1, :cond_0

    .line 187
    iput-boolean p1, p0, Lorg/vudroid/core/PageTreeNode;->decodingNow:Z

    .line 188
    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/DecodingProgressModel;->increase()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/DecodingProgressModel;->decrease()V

    goto :goto_0
.end method

.method private stopDecodingThisNode()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isDecodingNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v0, v0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v0, p0}, Lorg/vudroid/core/DecodeService;->stopDecoding(Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/vudroid/core/PageTreeNode;->setDecodingNow(Z)V

    goto :goto_0
.end method

.method private thresholdHit()Z
    .locals 6

    .prologue
    .line 119
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v3, v3, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v3}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v2

    .line 120
    .local v2, zoom:F
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v3}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v1

    .line 121
    .local v1, mainWidth:I
    iget-object v3, p0, Lorg/vudroid/core/PageTreeNode;->page:Lorg/vudroid/core/Page;

    invoke-virtual {v3, v1, v2}, Lorg/vudroid/core/Page;->getPageHeight(IF)F

    move-result v0

    .line 122
    .local v0, height:F
    int-to-float v3, v1

    mul-float/2addr v3, v2

    mul-float/2addr v3, v0

    iget v4, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    iget v5, p0, Lorg/vudroid/core/PageTreeNode;->treeNodeDepthLevel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v4}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/vudroid/core/PageTreeNode;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v5}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->getTargetRect()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lorg/vudroid/core/PageTreeNode;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-nez v2, :cond_2

    .line 89
    :cond_1
    return-void

    .line 86
    :cond_2
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 87
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0, p1}, Lorg/vudroid/core/PageTreeNode;->draw(Landroid/graphics/Canvas;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vudroid/core/PageTreeNode;->bitmapWeakReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    .line 54
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateRecursive()V

    .line 55
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->updateVisibility()V

    .line 56
    return-void
.end method

.method invalidateNodeBounds()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRect:Landroid/graphics/Rect;

    .line 70
    iput-object v1, p0, Lorg/vudroid/core/PageTreeNode;->targetRectF:Landroid/graphics/RectF;

    .line 71
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 76
    :cond_0
    return-void

    .line 72
    :cond_1
    aget-object v0, v2, v1

    .line 73
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->invalidateNodeBounds()V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateVisibility()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->invalidateChildren()V

    .line 32
    iget-object v1, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    if-eqz v1, :cond_0

    .line 33
    iget-object v2, p0, Lorg/vudroid/core/PageTreeNode;->children:[Lorg/vudroid/core/PageTreeNode;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_3

    .line 37
    :cond_0
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->thresholdHit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lorg/vudroid/core/PageTreeNode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/vudroid/core/PageTreeNode;->invalidateFlag:Z

    if-nez v1, :cond_4

    .line 40
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->restoreBitmapReference()V

    .line 46
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->isVisibleAndNotHiddenByChildren()Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->stopDecodingThisNode()V

    .line 48
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/PageTreeNode;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    :cond_2
    return-void

    .line 33
    :cond_3
    aget-object v0, v2, v1

    .line 34
    .local v0, child:Lorg/vudroid/core/PageTreeNode;
    invoke-virtual {v0}, Lorg/vudroid/core/PageTreeNode;->updateVisibility()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0           #child:Lorg/vudroid/core/PageTreeNode;
    :cond_4
    invoke-direct {p0}, Lorg/vudroid/core/PageTreeNode;->decodePageTreeNode()V

    goto :goto_1
.end method
