.class public Lcom/itextpdf/text/pdf/codec/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000


# instance fields
.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected fromData:[B

.field protected fromUrl:Ljava/net/URL;

.field protected gctFlag:Z

.field protected height:I

.field protected ih:I

.field protected in:Ljava/io/DataInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected m_bpc:I

.field protected m_curr_table:[B

.field protected m_gbpc:I

.field protected m_global_table:[B

.field protected m_line_stride:I

.field protected m_local_table:[B

.field protected m_out:[B

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->block:[B

    .line 87
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    .line 90
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    .line 91
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    .line 92
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->delay:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/GifImage;->process(Ljava/io/InputStream;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p1}, Lcom/itextpdf/text/Utilities;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/codec/GifImage;-><init>(Ljava/net/URL;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->block:[B

    .line 87
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    .line 90
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    .line 91
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    .line 92
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->delay:I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    .line 121
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->fromUrl:Ljava/net/URL;

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/codec/GifImage;->process(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 132
    :cond_0
    return-void

    .line 128
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->block:[B

    .line 87
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    .line 90
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    .line 91
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    .line 92
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->delay:I

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    .line 147
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->fromData:[B

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/codec/GifImage;->process(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    :cond_0
    return-void

    .line 154
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2

    .line 154
    .end local v0           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0
.end method

.method protected static newBpc(I)I
    .locals 0
    .parameter "bpc"

    .prologue
    .line 284
    packed-switch p0, :pswitch_data_0

    .line 292
    const/16 p0, 0x8

    .line 294
    .end local p0
    :goto_0
    :pswitch_0
    return p0

    .line 290
    .restart local p0
    :pswitch_1
    const/4 p0, 0x4

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected decodeImageData()Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const/4 v4, -0x1

    .line 402
    .local v4, NullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v29, v0

    mul-int v21, v28, v29

    .line 405
    .local v21, npix:I
    const/16 v24, 0x0

    .line 407
    .local v24, skipZero:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->prefix:[S

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 408
    const/16 v28, 0x1000

    move/from16 v0, v28

    new-array v0, v0, [S

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/GifImage;->prefix:[S

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 410
    const/16 v28, 0x1000

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    .line 411
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 412
    const/16 v28, 0x1001

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    .line 414
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    add-int/lit8 v28, v28, 0x7

    div-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/GifImage;->m_line_stride:I

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_line_stride:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v29, v0

    mul-int v28, v28, v29

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/GifImage;->m_out:[B

    .line 416
    const/16 v23, 0x1

    .line 417
    .local v23, pass:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->interlace:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    const/16 v19, 0x8

    .line 418
    .local v19, inc:I
    :goto_0
    const/16 v20, 0x0

    .line 419
    .local v20, line:I
    const/16 v27, 0x0

    .line 423
    .local v27, xpos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->read()I

    move-result v13

    .line 424
    .local v13, data_size:I
    const/16 v28, 0x1

    shl-int v8, v28, v13

    .line 425
    .local v8, clear:I
    add-int/lit8 v15, v8, 0x1

    .line 426
    .local v15, end_of_information:I
    add-int/lit8 v5, v8, 0x2

    .line 427
    .local v5, available:I
    move/from16 v22, v4

    .line 428
    .local v22, old_code:I
    add-int/lit8 v11, v13, 0x1

    .line 429
    .local v11, code_size:I
    const/16 v28, 0x1

    shl-int v28, v28, v11

    add-int/lit8 v10, v28, -0x1

    .line 430
    .local v10, code_mask:I
    const/4 v9, 0x0

    .local v9, code:I
    :goto_1
    if-ge v9, v8, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->prefix:[S

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-short v29, v28, v9

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v28, v0

    int-to-byte v0, v9

    move/from16 v29, v0

    aput-byte v29, v28, v9

    .line 430
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 417
    .end local v5           #available:I
    .end local v8           #clear:I
    .end local v9           #code:I
    .end local v10           #code_mask:I
    .end local v11           #code_size:I
    .end local v13           #data_size:I
    .end local v15           #end_of_information:I
    .end local v19           #inc:I
    .end local v20           #line:I
    .end local v22           #old_code:I
    .end local v27           #xpos:I
    :cond_3
    const/16 v19, 0x1

    goto :goto_0

    .line 437
    .restart local v5       #available:I
    .restart local v8       #clear:I
    .restart local v9       #code:I
    .restart local v10       #code_mask:I
    .restart local v11       #code_size:I
    .restart local v13       #data_size:I
    .restart local v15       #end_of_information:I
    .restart local v19       #inc:I
    .restart local v20       #line:I
    .restart local v22       #old_code:I
    .restart local v27       #xpos:I
    :cond_4
    const/4 v6, 0x0

    .local v6, bi:I
    move/from16 v25, v6

    .local v25, top:I
    move/from16 v16, v6

    .local v16, first:I
    move v12, v6

    .local v12, count:I
    move v7, v6

    .local v7, bits:I
    move v14, v6

    .line 439
    .local v14, datum:I
    const/16 v17, 0x0

    .local v17, i:I
    move/from16 v26, v25

    .end local v25           #top:I
    .local v26, top:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 440
    if-nez v26, :cond_13

    .line 441
    if-ge v7, v11, :cond_7

    .line 443
    if-nez v12, :cond_6

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readBlock()I

    move-result v12

    .line 446
    if-gtz v12, :cond_5

    .line 447
    const/16 v24, 0x1

    move/from16 v25, v26

    .line 548
    .end local v26           #top:I
    .restart local v25       #top:I
    :goto_3
    return v24

    .line 450
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_5
    const/4 v6, 0x0

    .line 452
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->block:[B

    move-object/from16 v28, v0

    aget-byte v28, v28, v6

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    shl-int v28, v28, v7

    add-int v14, v14, v28

    .line 453
    add-int/lit8 v7, v7, 0x8

    .line 454
    add-int/lit8 v6, v6, 0x1

    .line 455
    add-int/lit8 v12, v12, -0x1

    .line 456
    goto :goto_2

    .line 461
    :cond_7
    and-int v9, v14, v10

    .line 462
    shr-int/2addr v14, v11

    .line 463
    sub-int/2addr v7, v11

    .line 467
    if-gt v9, v5, :cond_12

    if-ne v9, v15, :cond_8

    move/from16 v25, v26

    .line 468
    .end local v26           #top:I
    .restart local v25       #top:I
    goto :goto_3

    .line 469
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_8
    if-ne v9, v8, :cond_9

    .line 471
    add-int/lit8 v11, v13, 0x1

    .line 472
    const/16 v28, 0x1

    shl-int v28, v28, v11

    add-int/lit8 v10, v28, -0x1

    .line 473
    add-int/lit8 v5, v8, 0x2

    .line 474
    move/from16 v22, v4

    .line 475
    goto :goto_2

    .line 477
    :cond_9
    move/from16 v0, v22

    if-ne v0, v4, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v29, v0

    aget-byte v29, v29, v9

    aput-byte v29, v28, v26

    .line 479
    move/from16 v22, v9

    .line 480
    move/from16 v16, v9

    move/from16 v26, v25

    .line 481
    .end local v25           #top:I
    .restart local v26       #top:I
    goto :goto_2

    .line 483
    :cond_a
    move/from16 v18, v9

    .line 484
    .local v18, in_code:I
    if-ne v9, v5, :cond_b

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v26

    .line 486
    move/from16 v9, v22

    move/from16 v26, v25

    .line 488
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_b
    :goto_4
    if-le v9, v8, :cond_c

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v29, v0

    aget-byte v29, v29, v9

    aput-byte v29, v28, v26

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->prefix:[S

    move-object/from16 v28, v0

    aget-short v9, v28, v9

    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto :goto_4

    .line 492
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v28, v0

    aget-byte v28, v28, v9

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 496
    const/16 v28, 0x1000

    move/from16 v0, v28

    if-lt v5, v0, :cond_d

    move/from16 v25, v26

    .line 497
    .end local v26           #top:I
    .restart local v25       #top:I
    goto/16 :goto_3

    .line 498
    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    add-int/lit8 v25, v26, 0x1

    .end local v26           #top:I
    .restart local v25       #top:I
    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v26

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->prefix:[S

    move-object/from16 v28, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v29, v0

    aput-short v29, v28, v5

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->suffix:[B

    move-object/from16 v28, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v28, v5

    .line 501
    add-int/lit8 v5, v5, 0x1

    .line 502
    and-int v28, v5, v10

    if-nez v28, :cond_e

    const/16 v28, 0x1000

    move/from16 v0, v28

    if-ge v5, v0, :cond_e

    .line 503
    add-int/lit8 v11, v11, 0x1

    .line 504
    add-int/2addr v10, v5

    .line 506
    :cond_e
    move/from16 v22, v18

    .line 511
    .end local v18           #in_code:I
    :goto_5
    add-int/lit8 v25, v25, -0x1

    .line 512
    add-int/lit8 v17, v17, 0x1

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelStack:[B

    move-object/from16 v28, v0

    aget-byte v28, v28, v25

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v20

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/GifImage;->setPixel(III)V

    .line 515
    add-int/lit8 v27, v27, 0x1

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_11

    .line 517
    const/16 v27, 0x0

    .line 518
    add-int v20, v20, v19

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-lt v0, v1, :cond_11

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->interlace:Z

    move/from16 v28, v0

    if-eqz v28, :cond_10

    .line 522
    :cond_f
    add-int/lit8 v23, v23, 0x1

    .line 523
    packed-switch v23, :pswitch_data_0

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v28, v0

    add-int/lit8 v20, v28, -0x1

    .line 537
    const/16 v19, 0x0

    .line 539
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto/16 :goto_2

    .line 525
    .end local v26           #top:I
    .restart local v25       #top:I
    :pswitch_0
    const/16 v20, 0x4

    .line 526
    goto :goto_6

    .line 528
    :pswitch_1
    const/16 v20, 0x2

    .line 529
    const/16 v19, 0x4

    .line 530
    goto :goto_6

    .line 532
    :pswitch_2
    const/16 v20, 0x1

    .line 533
    const/16 v19, 0x2

    .line 534
    goto :goto_6

    .line 542
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    move/from16 v28, v0

    add-int/lit8 v20, v28, -0x1

    .line 543
    const/16 v19, 0x0

    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto/16 :goto_2

    .end local v26           #top:I
    .restart local v25       #top:I
    :cond_11
    move/from16 v26, v25

    .end local v25           #top:I
    .restart local v26       #top:I
    goto/16 :goto_2

    :cond_12
    move/from16 v25, v26

    .end local v26           #top:I
    .restart local v25       #top:I
    goto/16 :goto_3

    .end local v25           #top:I
    .restart local v26       #top:I
    :cond_13
    move/from16 v25, v26

    .end local v26           #top:I
    .restart local v25       #top:I
    goto/16 :goto_5

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFramePosition(I)[I
    .locals 4
    .parameter "frame"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;

    .line 191
    .local v0, gf:Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->ix:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->iy:I

    aput v3, v1, v2

    return-object v1
.end method

.method public getImage(I)Lcom/itextpdf/text/Image;
    .locals 3
    .parameter "frame"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;

    .line 181
    .local v0, gf:Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->image:Lcom/itextpdf/text/Image;

    return-object v1
.end method

.method public getLogicalScreen()[I
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->width:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->height:I

    aput v2, v0, v1

    return-object v0
.end method

.method process(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readHeader()V

    .line 207
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readContents()V

    .line 208
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "the.file.does.not.contain.any.valid.image"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    return-void
.end method

.method protected readBlock()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    .line 261
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    if-gtz v2, :cond_0

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    .line 270
    :goto_0
    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    if-ge v0, v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 265
    .local v1, v:I
    if-gez v1, :cond_1

    .line 266
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    goto :goto_0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->block:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v1           #v:I
    :cond_2
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    goto :goto_0
.end method

.method protected readColorTable(I)[B
    .locals 5
    .parameter "bpc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 274
    shl-int v1, v3, p1

    .line 275
    .local v1, ncolors:I
    mul-int/lit8 v0, v1, 0x3

    .line 276
    .local v0, nbytes:I
    invoke-static {p1}, Lcom/itextpdf/text/pdf/codec/GifImage;->newBpc(I)I

    move-result p1

    .line 277
    shl-int/2addr v3, p1

    mul-int/lit8 v3, v3, 0x3

    new-array v2, v3, [B

    .line 278
    .local v2, table:[B
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 279
    return-object v2
.end method

.method protected readContents()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, done:Z
    :goto_0
    if-nez v1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 302
    .local v0, code:I
    sparse-switch v0, :sswitch_data_0

    .line 327
    const/4 v1, 0x1

    goto :goto_0

    .line 305
    :sswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readImage()V

    goto :goto_0

    .line 309
    :sswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 310
    sparse-switch v0, :sswitch_data_1

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->skip()V

    goto :goto_0

    .line 313
    :sswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readGraphicControlExt()V

    goto :goto_0

    .line 317
    :sswitch_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readBlock()I

    .line 318
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->skip()V

    goto :goto_0

    .line 331
    .end local v0           #code:I
    :cond_0
    return-void

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch

    .line 310
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_2
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 577
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    .line 578
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 579
    .local v0, packed:I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    .line 580
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    if-nez v2, :cond_0

    .line 581
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->dispose:I

    .line 582
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    .line 583
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->delay:I

    .line 584
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transIndex:I

    .line 585
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    .line 586
    return-void

    .line 582
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const-string/jumbo v1, ""

    .line 217
    .local v1, id:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const-string/jumbo v2, "GIF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "gif.signature.nor.found"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readLSD()V

    .line 224
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->gctFlag:Z

    if-eqz v2, :cond_2

    .line 225
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_gbpc:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/codec/GifImage;->readColorTable(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_global_table:[B

    .line 227
    :cond_2
    return-void
.end method

.method protected readImage()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->ix:I

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->iy:I

    .line 339
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    .line 340
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    .line 342
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v12

    .line 343
    .local v12, packed:I
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->lctFlag:Z

    .line 344
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->interlace:Z

    .line 347
    and-int/lit8 v1, v12, 0x7

    shl-int v1, v5, v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->lctSize:I

    .line 348
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_gbpc:I

    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/GifImage;->newBpc(I)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    .line 349
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->lctFlag:Z

    if-eqz v1, :cond_6

    .line 350
    and-int/lit8 v1, v12, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/codec/GifImage;->readColorTable(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    .line 351
    and-int/lit8 v1, v12, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/codec/GifImage;->newBpc(I)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    .line 356
    :goto_2
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transIndex:I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    array-length v4, v4

    div-int/lit8 v4, v4, 0x3

    if-lt v1, v4, :cond_0

    .line 357
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    .line 358
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    if-ne v1, v2, :cond_1

    .line 359
    const/16 v1, 0xc

    new-array v14, v1, [B

    .line 360
    .local v14, tp:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    const/4 v2, 0x6

    invoke-static {v1, v3, v14, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object v14, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    .line 362
    iput v5, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    .line 364
    .end local v14           #tp:[B
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->decodeImageData()Z

    move-result v13

    .line 365
    .local v13, skipZero:Z
    if-nez v13, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->skip()V

    .line 368
    :cond_2
    const/4 v10, 0x0

    .line 370
    .local v10, img:Lcom/itextpdf/text/Image;
    :try_start_0
    new-instance v0, Lcom/itextpdf/text/ImgRaw;

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->ih:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_out:[B

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/ImgRaw;-><init>(IIII[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v10           #img:Lcom/itextpdf/text/Image;
    .local v0, img:Lcom/itextpdf/text/Image;
    :try_start_1
    new-instance v7, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 372
    .local v7, colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 373
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 374
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    array-length v11, v1

    .line 375
    .local v11, len:I
    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    div-int/lit8 v2, v11, 0x3

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 376
    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 377
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 378
    .local v6, ad:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v1, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 379
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Image;->setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 380
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transparency:Z

    if-eqz v1, :cond_3

    .line 381
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transIndex:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->transIndex:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setTransparency([I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 388
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->fromData:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setOriginalData([B)V

    .line 389
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->fromUrl:Ljava/net/URL;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setUrl(Ljava/net/URL;)V

    .line 390
    new-instance v9, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;-><init>()V

    .line 391
    .local v9, gf:Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;
    iput-object v0, v9, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->image:Lcom/itextpdf/text/Image;

    .line 392
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->ix:I

    iput v1, v9, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->ix:I

    .line 393
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->iy:I

    iput v1, v9, Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;->iy:I

    .line 394
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void

    .end local v0           #img:Lcom/itextpdf/text/Image;
    .end local v6           #ad:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v9           #gf:Lcom/itextpdf/text/pdf/codec/GifImage$GifFrame;
    .end local v11           #len:I
    .end local v13           #skipZero:Z
    :cond_4
    move v1, v3

    .line 343
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 344
    goto/16 :goto_1

    .line 354
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_global_table:[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_curr_table:[B

    goto/16 :goto_2

    .line 384
    .restart local v10       #img:Lcom/itextpdf/text/Image;
    .restart local v13       #skipZero:Z
    :catch_0
    move-exception v8

    move-object v0, v10

    .line 385
    .end local v10           #img:Lcom/itextpdf/text/Image;
    .restart local v0       #img:Lcom/itextpdf/text/Image;
    .local v8, e:Ljava/lang/Exception;
    :goto_3
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v8}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 384
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->width:I

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readShort()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->height:I

    .line 239
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 240
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->gctFlag:Z

    .line 241
    and-int/lit8 v1, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_gbpc:I

    .line 242
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->bgIndex:I

    .line 243
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->pixelAspect:I

    .line 244
    return-void

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method protected setPixel(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    const/16 v4, 0x8

    .line 553
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    if-ne v2, v4, :cond_0

    .line 554
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->iw:I

    mul-int/2addr v2, p2

    add-int v0, p1, v2

    .line 555
    .local v0, pos:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_out:[B

    int-to-byte v3, p3

    aput-byte v3, v2, v0

    .line 562
    :goto_0
    return-void

    .line 558
    .end local v0           #pos:I
    :cond_0
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_line_stride:I

    mul-int/2addr v2, p2

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    div-int v3, v4, v3

    div-int v3, p1, v3

    add-int v0, v2, v3

    .line 559
    .restart local v0       #pos:I
    iget v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    div-int v3, v4, v3

    rem-int v3, p1, v3

    mul-int/2addr v2, v3

    rsub-int/lit8 v2, v2, 0x8

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_bpc:I

    sub-int/2addr v2, v3

    shl-int v1, p3, v2

    .line 560
    .local v1, vout:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->m_out:[B

    aget-byte v3, v2, v0

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_0
.end method

.method protected skip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/GifImage;->readBlock()I

    .line 595
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/GifImage;->blockSize:I

    if-gtz v0, :cond_0

    .line 596
    return-void
.end method
