.class public Lcom/cnlaunch/golo3/utils/BitmapTool;
.super Ljava/lang/Object;
.source "BitmapTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapTool"

.field private static options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BitmapCreateAssignThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "path"

    .prologue
    .line 177
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 180
    .local v3, bmp:Landroid/graphics/Bitmap;
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v14, v14, 0x64

    iget v15, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v7, v14, v15

    .line 181
    .local v7, height:I
    const/16 v14, 0x64

    iput v14, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    iput v7, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v9, v14, v16

    .line 187
    .local v9, length:J
    const/16 v6, 0xf

    .line 191
    .local v6, flag:I
    const-wide/16 v14, 0xc8

    cmp-long v14, v9, v14

    if-lez v14, :cond_0

    .line 192
    const/16 v6, 0xc8

    .line 194
    :cond_0
    int-to-long v14, v6

    cmp-long v14, v9, v14

    if-lez v14, :cond_3

    .line 196
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 197
    .local v13, options2:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    int-to-long v14, v6

    div-long v14, v9, v14

    long-to-int v14, v14

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 199
    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 200
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 201
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 202
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 203
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    array-length v14, v14

    div-int/lit16 v14, v14, 0x400

    if-le v14, v6, :cond_1

    .line 206
    const/16 v11, 0x64

    .line 207
    .local v11, option:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    array-length v14, v14

    div-int/lit16 v14, v14, 0x400

    if-gt v14, v6, :cond_2

    .line 212
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 213
    .local v8, isBm:Ljava/io/ByteArrayInputStream;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 221
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #flag:I
    .end local v8           #isBm:Ljava/io/ByteArrayInputStream;
    .end local v9           #length:J
    .end local v11           #option:I
    .end local v13           #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-object v2

    .line 208
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #flag:I
    .restart local v9       #length:J
    .restart local v11       #option:I
    .restart local v13       #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 209
    add-int/lit8 v11, v11, -0x5

    .line 210
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v14, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 220
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #flag:I
    .end local v9           #length:J
    .end local v11           #option:I
    .end local v13           #options2:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 221
    .local v4, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 218
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #flag:I
    .restart local v9       #length:J
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public static BitmapCreateAssignThumbBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "path"
    .parameter "maxKB"

    .prologue
    .line 133
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 136
    .local v3, bmp:Landroid/graphics/Bitmap;
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v6, v13, v14

    .line 137
    .local v6, height:I
    const/16 v13, 0x64

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 138
    iput v6, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 141
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long v8, v13, v15

    .line 144
    .local v8, length:J
    move/from16 v0, p1

    int-to-long v13, v0

    cmp-long v13, v8, v13

    if-lez v13, :cond_2

    .line 146
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    .local v12, options2:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    move/from16 v0, p1

    int-to-long v13, v0

    div-long v13, v8, v13

    long-to-int v13, v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 154
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v2, v13, v14, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    array-length v13, v13

    div-int/lit16 v13, v13, 0x400

    move/from16 v0, p1

    if-le v13, v0, :cond_0

    .line 156
    const/16 v10, 0x64

    .line 157
    .local v10, option:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    array-length v13, v13

    div-int/lit16 v13, v13, 0x400

    move/from16 v0, p1

    if-gt v13, v0, :cond_1

    .line 162
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v7, isBm:Ljava/io/ByteArrayInputStream;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 171
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #isBm:Ljava/io/ByteArrayInputStream;
    .end local v8           #length:J
    .end local v10           #option:I
    .end local v12           #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-object v2

    .line 158
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #length:J
    .restart local v10       #option:I
    .restart local v12       #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 159
    add-int/lit8 v10, v10, -0x5

    .line 160
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v13, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 170
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #length:J
    .end local v10           #option:I
    .end local v12           #options2:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 171
    .local v4, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 168
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #length:J
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 6
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 428
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 430
    .local v2, image:[B
    const/16 v1, 0x64

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 438
    if-eqz v4, :cond_0

    .line 440
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    const/4 v4, 0x0

    :cond_0
    :goto_1
    move-object v3, v2

    .line 446
    .end local v2           #image:[B
    .local v3, image:[B
    :goto_2
    return-object v3

    .line 431
    .end local v3           #image:[B
    .restart local v2       #image:[B
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 432
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 433
    array-length v5, v2

    div-int/lit16 v5, v5, 0x400

    if-ge v5, p1, :cond_2

    move-object v3, v2

    .line 434
    .end local v2           #image:[B
    .restart local v3       #image:[B
    goto :goto_2

    .line 430
    .end local v3           #image:[B
    .restart local v2       #image:[B
    :cond_2
    add-int/lit8 v1, v1, -0x5

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static compressShareBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 5
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, image:[B
    const/16 v1, 0x64

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 467
    :cond_0
    return-object v2

    .line 452
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 453
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 454
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 455
    if-eqz v3, :cond_2

    .line 457
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    const/4 v3, 0x0

    .line 463
    :cond_2
    :goto_1
    array-length v4, v2

    div-int/lit16 v4, v4, 0x400

    if-lt v4, p1, :cond_0

    .line 451
    add-int/lit8 v1, v1, -0xf

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmap"
    .parameter "maxLength"

    .prologue
    const/4 v12, 0x1

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 227
    .local v9, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 228
    .local v2, height:I
    if-le v9, v2, :cond_0

    move v3, v9

    .line 229
    .local v3, length:I
    :goto_0
    int-to-float v10, p1

    int-to-float v11, v3

    div-float v6, v10, v11

    .line 230
    .local v6, scale:F
    int-to-float v10, v9

    mul-float/2addr v10, v6

    float-to-int v8, v10

    .line 231
    .local v8, w:I
    int-to-float v10, v2

    mul-float/2addr v10, v6

    float-to-int v1, v10

    .line 232
    .local v1, h:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 233
    .local v7, thumb:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 235
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 237
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 238
    .local v4, matrix:Landroid/graphics/Matrix;
    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    int-to-float v11, v1

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 239
    invoke-virtual {v0, p0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 240
    return-object v7

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #h:I
    .end local v3           #length:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #scale:F
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #w:I
    :cond_0
    move v3, v2

    .line 228
    goto :goto_0
.end method

.method public static cutThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, 0x1

    .line 244
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 245
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 246
    .local v1, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 247
    .local v4, thumb:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 249
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    .local v2, matrix:Landroid/graphics/Matrix;
    sub-int v6, p1, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, p2, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 253
    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 254
    return-object v4
.end method

.method public static decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    if-eqz v1, :cond_0

    .line 70
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 63
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 64
    .local v0, E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0           #E:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v5, 0x1

    .line 400
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 401
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 402
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 404
    .local v4, width:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 405
    .local v1, height:I
    const-string/jumbo v6, "BitmapTool"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "decodeBitmap:width:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-le v4, v1, :cond_0

    .line 408
    div-int v3, v4, p1

    .line 412
    .local v3, scale:I
    :goto_0
    const-string/jumbo v6, "BitmapTool"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "decodeBitmap scale:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-le v3, v5, :cond_1

    .line 414
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 415
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 417
    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 422
    :goto_2
    return-object v5

    .line 410
    .end local v3           #scale:I
    :cond_0
    div-int v3, v1, p2

    .restart local v3       #scale:I
    goto :goto_0

    :cond_1
    move v3, v5

    .line 413
    goto :goto_1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 421
    const-string/jumbo v5, "BitmapTool"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "outofMemory:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"
    .parameter "maxKB"

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 128
    :goto_0
    return-object v1

    .line 85
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v4, v6, v8

    .line 89
    .local v4, length:J
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "source data size -------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "maxKb size--------------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    int-to-long v6, p1

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 92
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v6, :cond_1

    .line 93
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 97
    :goto_1
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "inSampleSize-------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const-string/jumbo v6, "jh"

    const-string/jumbo v7, "bitmap is return-------------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 103
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "zip source data size ---------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    array-length v8, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 122
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #length:J
    :catch_0
    move-exception v2

    .line 123
    .local v2, e:Ljava/lang/Exception;
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "e---------------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p0, p1}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 95
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #length:J
    :cond_1
    :try_start_1
    sget-object v6, Lcom/cnlaunch/golo3/utils/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_1

    .line 119
    :cond_2
    const-string/jumbo v6, "BitmapTool"

    const-string/jumbo v7, "file.exists() is true < "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 127
    .end local v4           #length:J
    :cond_3
    const-string/jumbo v6, "BitmapTool"

    const-string/jumbo v7, "file.exists() is false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static decodeCircleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    if-eqz v1, :cond_0

    .line 56
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 38
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 39
    .local v0, E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0           #E:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static extractVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "path"

    .prologue
    .line 258
    const/4 v12, 0x1

    invoke-static {p0, v12}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 259
    .local v9, thumb:Landroid/graphics/Bitmap;
    sget-object v12, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/cnlaunch/golo3/message/R$drawable;->video_thumb_logo:I

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 260
    .local v3, logo:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 261
    .local v11, width:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 262
    .local v2, height:I
    if-ge v11, v2, :cond_0

    move v6, v11

    .line 263
    .local v6, minLength:I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 264
    .local v10, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 265
    .local v1, h:I
    if-ge v10, v1, :cond_1

    move v5, v10

    .line 266
    .local v5, minL:I
    :goto_1
    int-to-float v12, v6

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    int-to-float v13, v5

    div-float v8, v12, v13

    .line 267
    .local v8, scale:F
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 269
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 271
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 272
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 273
    int-to-float v12, v11

    int-to-float v13, v10

    mul-float/2addr v13, v8

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    int-to-float v13, v2

    int-to-float v14, v1

    mul-float/2addr v14, v8

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    invoke-virtual {v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    return-object v9

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #h:I
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v5           #minL:I
    .end local v6           #minLength:I
    .end local v7           #paint:Landroid/graphics/Paint;
    .end local v8           #scale:F
    .end local v10           #w:I
    :cond_0
    move v6, v2

    .line 262
    goto :goto_0

    .restart local v1       #h:I
    .restart local v6       #minLength:I
    .restart local v10       #w:I
    :cond_1
    move v5, v1

    .line 265
    goto :goto_1
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 7
    .parameter "bitmap"
    .parameter "file"

    .prologue
    .line 280
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 283
    .local v3, save:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 284
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 285
    .local v0, data:[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v3           #save:Ljava/io/FileOutputStream;
    .local v4, save:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 291
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 295
    :goto_0
    if-eqz v4, :cond_2

    .line 297
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 303
    .end local v0           #data:[B
    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 295
    :goto_3
    if-eqz v3, :cond_0

    .line 297
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 298
    :catch_1
    move-exception v1

    .line 299
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 292
    :catch_2
    move-exception v1

    .line 293
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 289
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 291
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 295
    :goto_5
    if-eqz v3, :cond_1

    .line 297
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 302
    :cond_1
    :goto_6
    throw v5

    .line 292
    :catch_3
    move-exception v1

    .line 293
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 298
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 299
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 292
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v0       #data:[B
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 293
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 299
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 289
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 287
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public compressAsBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "maxKB"

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/golo3/utils/BitmapTool;->compressAsByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    .line 348
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 349
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compressAsByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 5
    .parameter "bitmap"
    .parameter "maxKB"

    .prologue
    .line 323
    if-eqz p1, :cond_1

    .line 324
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x64

    .line 329
    .local v3, quality:I
    :cond_0
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v4, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 330
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 331
    .local v0, data:[B
    add-int/lit8 v3, v3, -0x14

    .line 332
    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    if-gt v4, p2, :cond_0

    .line 336
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #quality:I
    :goto_1
    return-object v0

    .line 337
    .restart local v0       #data:[B
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #quality:I
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 336
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    throw v4

    .line 337
    :catch_1
    move-exception v1

    .line 338
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 343
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #quality:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public cutBitmapCenter(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x1

    .line 355
    const/16 v7, 0x400

    invoke-static {p1, v7}, Lcom/cnlaunch/golo3/utils/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 358
    .local v4, oldWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 359
    .local v3, oldHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 360
    .local v6, thumb:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 361
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 362
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 364
    .local v2, matrix:Landroid/graphics/Matrix;
    sub-int v7, p2, v4

    int-to-float v7, v7

    sub-int v8, p3, v3

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 365
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 367
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #oldHeight:I
    .end local v4           #oldWidth:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #thumb:Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public decodeBitmapByLength(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "path"
    .parameter "maxLength"

    .prologue
    const/4 v6, 0x1

    .line 306
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 310
    .local v5, width:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 311
    .local v1, height:I
    if-le v5, v1, :cond_0

    move v2, v5

    .line 312
    .local v2, max:I
    :goto_0
    if-eqz v0, :cond_2

    .line 313
    int-to-float v7, v2

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 314
    .local v4, scale:I
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 315
    if-le v4, v6, :cond_1

    .end local v4           #scale:I
    :goto_1
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 319
    :goto_2
    return-object v6

    .end local v2           #max:I
    :cond_0
    move v2, v1

    .line 311
    goto :goto_0

    .restart local v2       #max:I
    .restart local v4       #scale:I
    :cond_1
    move v4, v6

    .line 315
    goto :goto_1

    .line 319
    .end local v4           #scale:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "file"
    .parameter "bitmap"

    .prologue
    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, save:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 378
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 379
    .local v0, data:[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v3           #save:Ljava/io/FileOutputStream;
    .local v4, save:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 385
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 389
    :goto_0
    if-eqz v4, :cond_2

    .line 391
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 397
    .end local v0           #data:[B
    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 385
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 389
    :goto_3
    if-eqz v3, :cond_0

    .line 391
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 392
    :catch_1
    move-exception v1

    .line 393
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 386
    :catch_2
    move-exception v1

    .line 387
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 383
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 385
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 389
    :goto_5
    if-eqz v3, :cond_1

    .line 391
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 396
    :cond_1
    :goto_6
    throw v5

    .line 386
    :catch_3
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 392
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 393
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 386
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v0       #data:[B
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 393
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 383
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 381
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
