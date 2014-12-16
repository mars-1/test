.class public Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;
    }
.end annotation


# instance fields
.field private final roundPixels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "roundPixels"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    .line 42
    return-void
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "roundPixels"
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 175
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 179
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 181
    .local v1, destRectF:Landroid/graphics/RectF;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 183
    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    int-to-float v4, p1

    int-to-float v5, p1

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    invoke-virtual {v0, p0, p2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    return-object v2
.end method

.method public static roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;I)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "bitmap"
    .parameter "imageAware"
    .parameter "roundPixels"

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v14

    .line 67
    .local v14, imageView:Landroid/widget/ImageView;
    if-nez v14, :cond_1

    .line 68
    const-string/jumbo v2, "View is collected probably. Can\'t round bitmap corners without view properties."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 74
    .restart local p0
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 75
    .local v10, bw:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 76
    .local v9, bh:I
    invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWidth()I

    move-result v21

    .line 77
    .local v21, vw:I
    invoke-virtual/range {p1 .. p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getHeight()I

    move-result v20

    .line 78
    .local v20, vh:I
    if-gtz v21, :cond_2

    move/from16 v21, v10

    .line 79
    :cond_2
    if-gtz v20, :cond_3

    move/from16 v20, v9

    .line 81
    :cond_3
    invoke-virtual {v14}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v16

    .line 82
    .local v16, scaleType:Landroid/widget/ImageView$ScaleType;
    if-eqz v16, :cond_0

    .line 89
    sget-object v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 113
    :pswitch_0
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 114
    .local v19, vRation:F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 115
    .local v8, bRation:F
    cmpl-float v2, v19, v8

    if-lez v2, :cond_5

    .line 116
    int-to-float v2, v10

    int-to-float v3, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v3, v3, v24

    div-float/2addr v2, v3

    float-to-int v6, v2

    .line 117
    .local v6, width:I
    move/from16 v7, v20

    .line 122
    .local v7, height:I
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .local v4, srcRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v8           #bRation:F
    .end local v19           #vRation:F
    .local v5, destRect:Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v2, p0

    move/from16 v3, p2

    .line 164
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .local v15, roundBitmap:Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 p0, v15

    .line 170
    goto :goto_0

    .line 91
    .end local v4           #srcRect:Landroid/graphics/Rect;
    .end local v5           #destRect:Landroid/graphics/Rect;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v15           #roundBitmap:Landroid/graphics/Bitmap;
    :pswitch_1
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 92
    .restart local v19       #vRation:F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 95
    .restart local v8       #bRation:F
    cmpl-float v2, v19, v8

    if-lez v2, :cond_4

    .line 96
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 97
    .local v11, destHeight:I
    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v0, v11

    move/from16 v24, v0

    div-float v3, v3, v24

    div-float/2addr v2, v3

    float-to-int v12, v2

    .line 102
    .local v12, destWidth:I
    :goto_4
    sub-int v2, v21, v12

    div-int/lit8 v22, v2, 0x2

    .line 103
    .local v22, x:I
    sub-int v2, v20, v11

    div-int/lit8 v23, v2, 0x2

    .line 104
    .local v23, y:I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .restart local v4       #srcRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    add-int v2, v22, v12

    add-int v3, v23, v11

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .restart local v5       #destRect:Landroid/graphics/Rect;
    move/from16 v6, v21

    .line 107
    .restart local v6       #width:I
    move/from16 v7, v20

    .line 108
    .restart local v7       #height:I
    goto :goto_2

    .line 99
    .end local v4           #srcRect:Landroid/graphics/Rect;
    .end local v5           #destRect:Landroid/graphics/Rect;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v11           #destHeight:I
    .end local v12           #destWidth:I
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_4
    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 100
    .restart local v12       #destWidth:I
    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v0, v12

    move/from16 v24, v0

    div-float v3, v3, v24

    div-float/2addr v2, v3

    float-to-int v11, v2

    .restart local v11       #destHeight:I
    goto :goto_4

    .line 119
    .end local v11           #destHeight:I
    .end local v12           #destWidth:I
    :cond_5
    move/from16 v6, v21

    .line 120
    .restart local v6       #width:I
    int-to-float v2, v9

    int-to-float v3, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v3, v3, v24

    div-float/2addr v2, v3

    float-to-int v7, v2

    .restart local v7       #height:I
    goto :goto_1

    .line 126
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v8           #bRation:F
    .end local v19           #vRation:F
    :pswitch_2
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    div-float v19, v2, v3

    .line 127
    .restart local v19       #vRation:F
    int-to-float v2, v10

    int-to-float v3, v9

    div-float v8, v2, v3

    .line 130
    .restart local v8       #bRation:F
    cmpl-float v2, v19, v8

    if-lez v2, :cond_6

    .line 131
    move/from16 v18, v10

    .line 132
    .local v18, srcWidth:I
    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v3, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v3, v3, v24

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    .line 133
    .local v17, srcHeight:I
    const/16 v22, 0x0

    .line 134
    .restart local v22       #x:I
    sub-int v2, v9, v17

    div-int/lit8 v23, v2, 0x2

    .line 141
    .restart local v23       #y:I
    :goto_5
    move/from16 v6, v18

    .line 142
    .restart local v6       #width:I
    move/from16 v7, v17

    .line 143
    .restart local v7       #height:I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v22, v18

    add-int v3, v23, v17

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .restart local v4       #srcRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .restart local v5       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 136
    .end local v4           #srcRect:Landroid/graphics/Rect;
    .end local v5           #destRect:Landroid/graphics/Rect;
    .end local v6           #width:I
    .end local v7           #height:I
    .end local v17           #srcHeight:I
    .end local v18           #srcWidth:I
    .end local v22           #x:I
    .end local v23           #y:I
    :cond_6
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v3, v3, v24

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 137
    .restart local v18       #srcWidth:I
    move/from16 v17, v9

    .line 138
    .restart local v17       #srcHeight:I
    sub-int v2, v10, v18

    div-int/lit8 v22, v2, 0x2

    .line 139
    .restart local v22       #x:I
    const/16 v23, 0x0

    .restart local v23       #y:I
    goto :goto_5

    .line 147
    .end local v8           #bRation:F
    .end local v17           #srcHeight:I
    .end local v18           #srcWidth:I
    .end local v19           #vRation:F
    .end local v22           #x:I
    .end local v23           #y:I
    :pswitch_3
    move/from16 v6, v21

    .line 148
    .restart local v6       #width:I
    move/from16 v7, v20

    .line 149
    .restart local v7       #height:I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .restart local v4       #srcRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .restart local v5       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 154
    .end local v4           #srcRect:Landroid/graphics/Rect;
    .end local v5           #destRect:Landroid/graphics/Rect;
    .end local v6           #width:I
    .end local v7           #height:I
    :pswitch_4
    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 155
    .restart local v6       #width:I
    move/from16 v0, v20

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 156
    .restart local v7       #height:I
    sub-int v2, v10, v6

    div-int/lit8 v22, v2, 0x2

    .line 157
    .restart local v22       #x:I
    sub-int v2, v9, v7

    div-int/lit8 v23, v2, 0x2

    .line 158
    .restart local v23       #y:I
    new-instance v4, Landroid/graphics/Rect;

    add-int v2, v22, v6

    add-int v3, v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .restart local v4       #srcRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5       #destRect:Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 165
    .end local v22           #x:I
    .end local v23           #y:I
    :catch_0
    move-exception v13

    .line 166
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const-string/jumbo v2, "Can\'t create bitmap with rounded corners. Not enough memory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v13, v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    move-object/from16 v15, p0

    .restart local v15       #roundBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "imageAware"
    .parameter "loadedFrom"

    .prologue
    .line 46
    instance-of v1, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p2

    .line 49
    check-cast v1, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundPixels:I

    invoke-static {p1, v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;->roundCorners(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, roundedBitmap:Landroid/graphics/Bitmap;
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    .line 51
    return-object v0
.end method
