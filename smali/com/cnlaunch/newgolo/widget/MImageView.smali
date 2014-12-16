.class public Lcom/cnlaunch/newgolo/widget/MImageView;
.super Landroid/widget/ImageView;
.source "MImageView.java"


# instance fields
.field private bgShared:Landroid/content/SharedPreferences;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 21
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "chat_bg"

    .line 22
    const/4 v2, 0x2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 27
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "chat_bg"

    .line 28
    const/4 v2, 0x2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 33
    sget-object v0, Lcom/cnlaunch/newgolo/GoloApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "chat_bg"

    .line 34
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 18
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 45
    if-eqz p4, :cond_0

    .line 48
    move/from16 v0, p2

    move/from16 v1, p4

    if-le v0, v1, :cond_3

    .line 49
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/newgolo/widget/MImageView;->id:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, path:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 53
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 55
    .local v5, length:J
    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    const-wide/16 v13, 0x190

    div-long/2addr v11, v13

    long-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 56
    .local v10, size:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .end local v10           #size:I
    :goto_0
    iput v10, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 58
    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 59
    .local v7, map:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 60
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v5           #length:J
    .end local v7           #map:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #path:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 104
    return-void

    .line 57
    .restart local v5       #length:J
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 64
    .end local v5           #length:J
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #size:I
    :catch_0
    move-exception v2

    .line 65
    .local v2, E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v2           #E:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 71
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    move/from16 v0, p2

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    div-float v4, v11, v12

    .line 73
    .local v4, f:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cnlaunch/newgolo/widget/MImageView;->bgShared:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/newgolo/widget/MImageView;->id:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .restart local v9       #path:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 77
    :try_start_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 79
    .restart local v5       #length:J
    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    const-wide/16 v13, 0x190

    div-long/2addr v11, v13

    long-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 80
    .restart local v10       #size:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .end local v10           #size:I
    :goto_2
    iput v10, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 85
    .restart local v7       #map:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 86
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 89
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    .line 90
    const/4 v15, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v16

    .line 91
    const-string/jumbo v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 90
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 89
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 88
    invoke-static {v7, v11, v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 93
    .local v3, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 95
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v5           #length:J
    .end local v7           #map:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 96
    .restart local v2       #E:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_1

    .line 82
    .end local v2           #E:Ljava/lang/OutOfMemoryError;
    .restart local v5       #length:J
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #size:I
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 99
    .end local v5           #length:J
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #size:I
    :cond_5
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/cnlaunch/newgolo/widget/MImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method

.method public setRomId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/MImageView;->id:Ljava/lang/String;

    .line 39
    return-void
.end method
