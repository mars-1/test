.class public Lcom/cnlaunch/newgolo/Tool/BitmapTool;
.super Ljava/lang/Object;
.source "BitmapTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapTool"

.field public static final UNCONSTRAINED:I = -0x1

.field private static options:Landroid/graphics/BitmapFactory$Options;

.field private static options1:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    .line 760
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BitmapCreateAssignThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "path"

    .prologue
    .line 189
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 190
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 192
    .local v3, bmp:Landroid/graphics/Bitmap;
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v14, v14, 0x64

    iget v15, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v7, v14, v15

    .line 193
    .local v7, height:I
    const/16 v14, 0x64

    iput v14, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 194
    iput v7, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 197
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v9, v14, v16

    .line 199
    .local v9, length:J
    const/16 v6, 0xf

    .line 203
    .local v6, flag:I
    const-wide/16 v14, 0xc8

    cmp-long v14, v9, v14

    if-lez v14, :cond_0

    .line 204
    const/16 v6, 0xc8

    .line 206
    :cond_0
    int-to-long v14, v6

    cmp-long v14, v9, v14

    if-lez v14, :cond_3

    .line 208
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 209
    .local v13, options2:Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 210
    int-to-long v14, v6

    div-long v14, v9, v14

    long-to-int v14, v14

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 211
    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 212
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 213
    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 214
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 217
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    array-length v14, v14

    div-int/lit16 v14, v14, 0x400

    if-le v14, v6, :cond_1

    .line 218
    const/16 v11, 0x64

    .line 219
    .local v11, option:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    array-length v14, v14

    div-int/lit16 v14, v14, 0x400

    if-gt v14, v6, :cond_2

    .line 225
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 226
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 225
    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v8, isBm:Ljava/io/ByteArrayInputStream;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v14, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 235
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

    .line 220
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #flag:I
    .restart local v9       #length:J
    .restart local v11       #option:I
    .restart local v13       #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 221
    add-int/lit8 v11, v11, -0x5

    .line 222
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v14, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 234
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #flag:I
    .end local v9           #length:J
    .end local v11           #option:I
    .end local v13           #options2:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 235
    .local v4, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 232
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
    .line 143
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 144
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 145
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 146
    .local v3, bmp:Landroid/graphics/Bitmap;
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v13, v13, 0x64

    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v6, v13, v14

    .line 147
    .local v6, height:I
    const/16 v13, 0x64

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 148
    iput v6, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long v8, v13, v15

    .line 154
    .local v8, length:J
    move/from16 v0, p1

    int-to-long v13, v0

    cmp-long v13, v8, v13

    if-lez v13, :cond_2

    .line 156
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v12, options2:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    move/from16 v0, p1

    int-to-long v13, v0

    div-long v13, v8, v13

    long-to-int v13, v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 159
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 161
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 162
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 163
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v2, v13, v14, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 165
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    array-length v13, v13

    div-int/lit16 v13, v13, 0x400

    move/from16 v0, p1

    if-le v13, v0, :cond_0

    .line 166
    const/16 v10, 0x64

    .line 167
    .local v10, option:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    array-length v13, v13

    div-int/lit16 v13, v13, 0x400

    move/from16 v0, p1

    if-gt v13, v0, :cond_1

    .line 173
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 173
    invoke-direct {v7, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 175
    .local v7, isBm:Ljava/io/ByteArrayInputStream;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
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

    .line 168
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #length:J
    .restart local v10       #option:I
    .restart local v12       #options2:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 169
    add-int/lit8 v10, v10, -0x5

    .line 170
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v13, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 182
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #length:J
    .end local v10           #option:I
    .end local v12           #options2:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v4

    .line 183
    .local v4, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 180
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
    .line 443
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 444
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 445
    .local v2, image:[B
    const/16 v1, 0x64

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 453
    if-eqz v4, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v4, 0x0

    :cond_0
    :goto_1
    move-object v3, v2

    .line 461
    .end local v2           #image:[B
    .local v3, image:[B
    :goto_2
    return-object v3

    .line 446
    .end local v3           #image:[B
    .restart local v2       #image:[B
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 448
    array-length v5, v2

    div-int/lit16 v5, v5, 0x400

    if-ge v5, p1, :cond_2

    move-object v3, v2

    .line 449
    .end local v2           #image:[B
    .restart local v3       #image:[B
    goto :goto_2

    .line 445
    .end local v3           #image:[B
    .restart local v2       #image:[B
    :cond_2
    add-int/lit8 v1, v1, -0x5

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static compressShareBitmap(Landroid/graphics/Bitmap;I)[B
    .locals 5
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, image:[B
    const/16 v1, 0x64

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 483
    :cond_0
    return-object v2

    .line 468
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 470
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 471
    if-eqz v3, :cond_2

    .line 473
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    const/4 v3, 0x0

    .line 479
    :cond_2
    :goto_1
    array-length v4, v2

    div-int/lit16 v4, v4, 0x400

    if-lt v4, p1, :cond_0

    .line 467
    add-int/lit8 v1, v1, -0xf

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 644
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 645
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 647
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 649
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 653
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 664
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 648
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 650
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 651
    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    .line 650
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 658
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    .line 659
    if-ne p1, v11, :cond_4

    move v2, v6

    .line 660
    goto :goto_2

    .line 661
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 664
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 624
    invoke-static {p0, p1, p2}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 628
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 629
    const/4 v1, 0x1

    .line 630
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 637
    :goto_1
    return v1

    .line 631
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static createThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmap"
    .parameter "maxLength"

    .prologue
    const/4 v12, 0x1

    .line 240
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 241
    .local v9, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 242
    .local v2, height:I
    if-le v9, v2, :cond_0

    move v3, v9

    .line 243
    .local v3, length:I
    :goto_0
    int-to-float v10, p1

    int-to-float v11, v3

    div-float v6, v10, v11

    .line 244
    .local v6, scale:F
    int-to-float v10, v9

    mul-float/2addr v10, v6

    float-to-int v8, v10

    .line 245
    .local v8, w:I
    int-to-float v10, v2

    mul-float/2addr v10, v6

    float-to-int v1, v10

    .line 246
    .local v1, h:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 247
    .local v7, thumb:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 249
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 250
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    .local v4, matrix:Landroid/graphics/Matrix;
    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    int-to-float v11, v1

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 253
    invoke-virtual {v0, p0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 254
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

    .line 242
    goto :goto_0
.end method

.method public static cutThumb(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, 0x1

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 259
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 260
    .local v1, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 261
    .local v4, thumb:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 263
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 265
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    .local v2, matrix:Landroid/graphics/Matrix;
    sub-int v6, p1, v5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, p2, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 267
    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 268
    return-object v4
.end method

.method public static decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    if-eqz v1, :cond_0

    .line 74
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 68
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 69
    .local v0, E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0           #E:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v5, 0x1

    .line 418
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 419
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 420
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 421
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 422
    .local v4, width:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 424
    .local v1, height:I
    if-le v4, v1, :cond_0

    .line 425
    div-int v3, v4, p1

    .line 429
    .local v3, scale:I
    :goto_0
    if-le v3, v5, :cond_1

    .line 430
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 431
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 433
    :try_start_0
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 437
    :goto_2
    return-object v5

    .line 427
    .end local v3           #scale:I
    :cond_0
    div-int v3, v1, p2

    .restart local v3       #scale:I
    goto :goto_0

    :cond_1
    move v3, v5

    .line 429
    goto :goto_1

    .line 434
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 437
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"
    .parameter "maxKB"

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v1

    .line 89
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v4, v6, v8

    .line 93
    .local v4, length:J
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "source data size -------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "maxKb size--------------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    int-to-long v6, p1

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 98
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v6, :cond_2

    .line 99
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    :goto_1
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "inSampleSize-------------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    sget-object v8, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const-string/jumbo v6, "jh"

    const-string/jumbo v7, "bitmap is return-------------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    const-string/jumbo v6, "jh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "zip source data size ---------------------"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    array-length v8, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #length:J
    :catch_0
    move-exception v2

    .line 134
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

    .line 135
    invoke-static {p0, p1}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 101
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #length:J
    :cond_2
    :try_start_1
    sget-object v6, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_1

    .line 131
    :cond_3
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 762
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 778
    :goto_0
    return-object v0

    .line 766
    :cond_1
    :try_start_0
    sget-object v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v3, :cond_2

    .line 767
    sget-object v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 771
    :goto_1
    sget-object v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 772
    const/4 v3, 0x0

    array-length v4, p0

    sget-object v5, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 773
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 776
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {p0}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 778
    goto :goto_0

    .line 769
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->options1:Landroid/graphics/BitmapFactory$Options;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decodeCircleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    if-eqz v1, :cond_0

    .line 61
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 42
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 43
    .local v0, E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #E:Ljava/lang/OutOfMemoryError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static decodeSdcard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "context"
    .parameter "sdPath"

    .prologue
    .line 593
    if-eqz p1, :cond_0

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 594
    :cond_0
    const/4 v12, 0x0

    .line 618
    :goto_0
    return-object v12

    .line 598
    :cond_1
    :try_start_0
    const-string/jumbo v12, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 597
    check-cast v11, Landroid/view/WindowManager;

    .line 599
    .local v11, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 600
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 602
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 603
    .local v7, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 604
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 605
    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 606
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 607
    .local v10, w:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 608
    .local v4, h:I
    if-le v10, v4, :cond_2

    move v6, v10

    .line 609
    .local v6, maxSize:I
    :goto_1
    mul-int v12, v10, v4

    invoke-static {v7, v6, v12}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    .line 610
    .local v5, inSimpleSize:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 611
    .local v8, o2:Landroid/graphics/BitmapFactory$Options;
    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 612
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 613
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    goto :goto_0

    .end local v5           #inSimpleSize:I
    .end local v6           #maxSize:I
    .end local v8           #o2:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    move v6, v4

    .line 608
    goto :goto_1

    .line 614
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v4           #h:I
    .end local v7           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #r:Landroid/graphics/Rect;
    .end local v10           #w:I
    .end local v11           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 615
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 616
    const/4 v12, 0x0

    goto :goto_0

    .line 617
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 618
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static extractVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "path"

    .prologue
    .line 272
    .line 273
    const/4 v12, 0x1

    .line 272
    invoke-static {p0, v12}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 275
    .local v9, thumb:Landroid/graphics/Bitmap;
    sget-object v12, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 276
    sget v13, Lcom/cnlaunch/golo3/message/R$drawable;->video_thumb_logo:I

    .line 274
    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 277
    .local v3, logo:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 278
    .local v11, width:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 279
    .local v2, height:I
    if-ge v11, v2, :cond_0

    move v6, v11

    .line 280
    .local v6, minLength:I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 281
    .local v10, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 282
    .local v1, h:I
    if-ge v10, v1, :cond_1

    move v5, v10

    .line 283
    .local v5, minL:I
    :goto_1
    int-to-float v12, v6

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    int-to-float v13, v5

    div-float v8, v12, v13

    .line 284
    .local v8, scale:F
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 286
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 288
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 289
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 290
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

    .line 291
    invoke-virtual {v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 292
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
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

    .line 279
    goto :goto_0

    .restart local v1       #h:I
    .restart local v6       #minLength:I
    .restart local v10       #w:I
    :cond_1
    move v5, v1

    .line 282
    goto :goto_1
.end method

.method public static getImageFromWebUri(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;)Ljava/lang/String;
    .locals 21
    .parameter "url"
    .parameter "uid"
    .parameter "it"

    .prologue
    .line 684
    if-eqz p0, :cond_0

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 685
    :cond_0
    const/4 v9, 0x0

    .line 757
    :cond_1
    :goto_0
    return-object v9

    .line 688
    :cond_2
    const-string/jumbo v19, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 689
    .local v10, fileNames:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 690
    .local v12, fos:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 693
    .local v15, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/cnlaunch/newgolo/data/dao/sharelog/ShareData;->SavePath:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "/share/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "image/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 694
    .local v11, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    .local v8, fileDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 696
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 698
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v10

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Lcom/cnlaunch/golo3/utils/SignatureTool;->signByMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 700
    .local v9, fileName:Ljava/lang/String;
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 702
    .local v18, webUri:Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 703
    .local v5, conn:Ljava/net/HttpURLConnection;
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 705
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 706
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 707
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 708
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->length:Ljava/lang/Integer;

    .line 709
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 710
    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 711
    .local v4, buffer:[B
    const/16 v16, 0x0

    .line 712
    .local v16, len:I
    :goto_1
    invoke-virtual {v15, v4}, Ljava/io/InputStream;->read([B)I

    move-result v16

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 716
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 717
    .local v6, data:[B
    invoke-static {v6}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 718
    .local v17, mBitmap:Landroid/graphics/Bitmap;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .local v14, imageFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 720
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 721
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    if-eqz v17, :cond_4

    .line 722
    :try_start_1
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 723
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 726
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 727
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    .line 743
    if-eqz v15, :cond_5

    .line 744
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 750
    :cond_5
    :goto_2
    if-eqz v13, :cond_1

    .line 751
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 753
    :catch_0
    move-exception v7

    .line 754
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 713
    .end local v6           #data:[B
    .end local v7           #e:Ljava/io/IOException;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v17           #mBitmap:Landroid/graphics/Bitmap;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :cond_6
    :try_start_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->progress:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int v19, v19, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/cnlaunch/newgolo/Tool/BitmapTool$PInteger;->progress:Ljava/lang/Integer;

    .line 714
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    goto :goto_1

    .line 730
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #conn:Ljava/net/HttpURLConnection;
    .end local v8           #fileDir:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v11           #filePath:Ljava/lang/String;
    .end local v16           #len:I
    .end local v18           #webUri:Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 731
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 743
    if-eqz v15, :cond_7

    .line 744
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 750
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_7
    :goto_4
    if-eqz v12, :cond_8

    .line 751
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 757
    :cond_8
    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 746
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #conn:Ljava/net/HttpURLConnection;
    .restart local v6       #data:[B
    .restart local v8       #fileDir:Ljava/io/File;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v11       #filePath:Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #imageFile:Ljava/io/File;
    .restart local v16       #len:I
    .restart local v17       #mBitmap:Landroid/graphics/Bitmap;
    .restart local v18       #webUri:Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 747
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 746
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #data:[B
    .end local v8           #fileDir:Ljava/io/File;
    .end local v9           #fileName:Ljava/lang/String;
    .end local v11           #filePath:Ljava/lang/String;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v16           #len:I
    .end local v17           #mBitmap:Landroid/graphics/Bitmap;
    .end local v18           #webUri:Ljava/net/URL;
    .local v7, e:Ljava/lang/OutOfMemoryError;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 747
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 753
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 754
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 732
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 734
    .local v7, e:Ljava/net/MalformedURLException;
    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 743
    if-eqz v15, :cond_9

    .line 744
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 750
    .end local v7           #e:Ljava/net/MalformedURLException;
    :cond_9
    :goto_7
    if-eqz v12, :cond_8

    .line 751
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    .line 753
    :catch_6
    move-exception v7

    .line 754
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 746
    .local v7, e:Ljava/net/MalformedURLException;
    :catch_7
    move-exception v7

    .line 747
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 735
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 737
    .restart local v7       #e:Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 743
    if-eqz v15, :cond_a

    .line 744
    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 750
    :cond_a
    :goto_9
    if-eqz v12, :cond_8

    .line 751
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_5

    .line 753
    :catch_9
    move-exception v7

    .line 754
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 746
    :catch_a
    move-exception v7

    .line 747
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 738
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 740
    .local v7, e:Ljava/lang/Exception;
    :goto_a
    :try_start_e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 743
    if-eqz v15, :cond_b

    .line 744
    :try_start_f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 750
    .end local v7           #e:Ljava/lang/Exception;
    :cond_b
    :goto_b
    if-eqz v12, :cond_8

    .line 751
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_5

    .line 753
    :catch_c
    move-exception v7

    .line 754
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 746
    .local v7, e:Ljava/lang/Exception;
    :catch_d
    move-exception v7

    .line 747
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 741
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 743
    :goto_c
    if-eqz v15, :cond_c

    .line 744
    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 750
    :cond_c
    :goto_d
    if-eqz v12, :cond_d

    .line 751
    :try_start_12
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 756
    :cond_d
    :goto_e
    throw v19

    .line 746
    :catch_e
    move-exception v7

    .line 747
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 753
    .end local v7           #e:Ljava/io/IOException;
    :catch_f
    move-exception v7

    .line 754
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 741
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #conn:Ljava/net/HttpURLConnection;
    .restart local v6       #data:[B
    .restart local v8       #fileDir:Ljava/io/File;
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v11       #filePath:Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #imageFile:Ljava/io/File;
    .restart local v16       #len:I
    .restart local v17       #mBitmap:Landroid/graphics/Bitmap;
    .restart local v18       #webUri:Ljava/net/URL;
    :catchall_1
    move-exception v19

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 738
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v7

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 735
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v7

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 732
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v7

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 730
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v7

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 7
    .parameter "bitmap"
    .parameter "file"

    .prologue
    .line 297
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 300
    .local v3, save:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 301
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 302
    .local v0, data:[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v3           #save:Ljava/io/FileOutputStream;
    .local v4, save:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 308
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 312
    :goto_0
    if-eqz v4, :cond_2

    .line 314
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 320
    .end local v0           #data:[B
    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 312
    :goto_3
    if-eqz v3, :cond_0

    .line 314
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 315
    :catch_1
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 309
    :catch_2
    move-exception v1

    .line 310
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 306
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 308
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 312
    :goto_5
    if-eqz v3, :cond_1

    .line 314
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 319
    :cond_1
    :goto_6
    throw v5

    .line 309
    :catch_3
    move-exception v1

    .line 310
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 316
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 309
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v0       #data:[B
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 310
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 316
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 306
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 304
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static yasuoBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 498
    if-eqz p0, :cond_0

    .line 510
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static yasuoBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 525
    if-nez p0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static yasuoBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "stream"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 580
    if-nez p0, :cond_0

    .line 581
    const/4 v0, 0x0

    .line 583
    :goto_0
    return-object v0

    .line 582
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static yasuoBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 546
    :goto_0
    return-object v0

    .line 545
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 546
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public compressAsBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "maxKB"

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->compressAsByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    .line 365
    .local v0, data:[B
    if-eqz v0, :cond_0

    .line 366
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
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
    .line 340
    if-eqz p1, :cond_1

    .line 341
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x64

    .line 346
    .local v3, quality:I
    :cond_0
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v4, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 348
    .local v0, data:[B
    add-int/lit8 v3, v3, -0x14

    .line 349
    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-gt v4, p2, :cond_0

    .line 353
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 360
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #quality:I
    :goto_1
    return-object v0

    .line 354
    .restart local v0       #data:[B
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #quality:I
    :catch_0
    move-exception v1

    .line 355
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 353
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 357
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    throw v4

    .line 354
    :catch_1
    move-exception v1

    .line 355
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 360
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

    .line 372
    const/16 v7, 0x400

    invoke-static {p1, v7}, Lcom/cnlaunch/newgolo/Tool/BitmapTool;->decodeBitmapBySize(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 375
    .local v4, oldWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 377
    .local v3, oldHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 376
    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 378
    .local v6, thumb:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 379
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 380
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 381
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 382
    .local v2, matrix:Landroid/graphics/Matrix;
    sub-int v7, p2, v4

    int-to-float v7, v7

    sub-int v8, p3, v3

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 383
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 384
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 385
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 388
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

    .line 323
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 325
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 327
    .local v5, width:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 328
    .local v1, height:I
    if-le v5, v1, :cond_0

    move v2, v5

    .line 329
    .local v2, max:I
    :goto_0
    if-eqz v0, :cond_2

    .line 330
    int-to-float v7, v2

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 331
    .local v4, scale:I
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    if-le v4, v6, :cond_1

    .end local v4           #scale:I
    :goto_1
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 334
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 336
    :goto_2
    return-object v6

    .end local v2           #max:I
    :cond_0
    move v2, v1

    .line 328
    goto :goto_0

    .restart local v2       #max:I
    .restart local v4       #scale:I
    :cond_1
    move v4, v6

    .line 332
    goto :goto_1

    .line 336
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
    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, save:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 396
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 397
    .local v0, data:[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3           #save:Ljava/io/FileOutputStream;
    .local v4, save:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 403
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 407
    :goto_0
    if-eqz v4, :cond_2

    .line 409
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 415
    .end local v0           #data:[B
    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 407
    :goto_3
    if-eqz v3, :cond_0

    .line 409
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 410
    :catch_1
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 404
    :catch_2
    move-exception v1

    .line 405
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 401
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 403
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 407
    :goto_5
    if-eqz v3, :cond_1

    .line 409
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 414
    :cond_1
    :goto_6
    throw v5

    .line 404
    :catch_3
    move-exception v1

    .line 405
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 410
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 411
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 404
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v0       #data:[B
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 405
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 411
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 401
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 399
    .end local v3           #save:Ljava/io/FileOutputStream;
    .restart local v4       #save:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #save:Ljava/io/FileOutputStream;
    .restart local v3       #save:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
