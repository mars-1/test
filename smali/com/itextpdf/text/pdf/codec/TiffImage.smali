.class public Lcom/itextpdf/text/pdf/codec/TiffImage;
.super Ljava/lang/Object;
.source "TiffImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePackbits([B[B)V
    .locals 8
    .parameter "data"
    .parameter "dst"

    .prologue
    .line 535
    const/4 v5, 0x0

    .local v5, srcCount:I
    const/4 v1, 0x0

    .local v1, dstCount:I
    move v6, v5

    .line 539
    .end local v5           #srcCount:I
    .local v6, srcCount:I
    :goto_0
    :try_start_0
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v7, :cond_4

    .line 540
    add-int/lit8 v5, v6, 0x1

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :try_start_1
    aget-byte v0, p0, v6

    .line 541
    .local v0, b:B
    if-ltz v0, :cond_1

    const/16 v7, 0x7f

    if-gt v0, v7, :cond_1

    .line 543
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #dstCount:I
    .local v2, dstCount:I
    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :goto_1
    add-int/lit8 v7, v0, 0x1

    if-ge v3, v7, :cond_0

    .line 544
    add-int/lit8 v1, v2, 0x1

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    aget-byte v7, p0, v6

    aput-byte v7, p1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    goto :goto_1

    :cond_0
    move v1, v2

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    goto :goto_0

    .line 547
    .end local v3           #i:I
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :cond_1
    const/4 v7, -0x1

    if-gt v0, v7, :cond_3

    const/16 v7, -0x7f

    if-lt v0, v7, :cond_3

    .line 549
    add-int/lit8 v6, v5, 0x1

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :try_start_2
    aget-byte v4, p0, v5

    .line 550
    .local v4, repeat:B
    const/4 v3, 0x0

    .restart local v3       #i:I
    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    :goto_2
    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_2

    .line 551
    add-int/lit8 v1, v2, 0x1

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    aput-byte v4, p1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 550
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #dstCount:I
    .restart local v2       #dstCount:I
    goto :goto_2

    :cond_2
    move v1, v2

    .end local v2           #dstCount:I
    .restart local v1       #dstCount:I
    goto :goto_0

    .line 555
    .end local v3           #i:I
    .end local v4           #repeat:B
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    goto :goto_0

    .end local v0           #b:B
    :cond_4
    move v5, v6

    .line 562
    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    :goto_3
    return-void

    .line 559
    .end local v5           #srcCount:I
    .restart local v6       #srcCount:I
    :catch_0
    move-exception v7

    move v5, v6

    .end local v6           #srcCount:I
    .restart local v5       #srcCount:I
    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method static getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J
    .locals 6
    .parameter "dir"
    .parameter "tag"

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v0

    .line 519
    .local v0, field:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-nez v0, :cond_1

    .line 520
    const/4 v2, 0x0

    .line 530
    :cond_0
    :goto_0
    return-object v2

    .line 522
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLongs()[J

    move-result-object v2

    .local v2, offset:[J
    goto :goto_0

    .line 525
    .end local v2           #offset:[J
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsChars()[C

    move-result-object v3

    .line 526
    .local v3, temp:[C
    array-length v4, v3

    new-array v2, v4, [J

    .line 527
    .restart local v2       #offset:[J
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 528
    aget-char v4, v3, v1

    int-to-long v4, v4

    aput-wide v4, v2, v1

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I
    .locals 9
    .parameter "fd"
    .parameter "resolutionUnit"

    .prologue
    const-wide/high16 v7, 0x3fe0

    const/4 v0, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsRational(I)[J

    move-result-object v2

    .line 85
    .local v2, res:[J
    aget-wide v3, v2, v0

    long-to-float v3, v3

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    long-to-float v4, v4

    div-float v1, v3, v4

    .line 86
    .local v1, frac:F
    const/4 v0, 0x0

    .line 87
    .local v0, dpi:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    float-to-double v3, v1

    add-double/2addr v3, v7

    double-to-int v0, v3

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    float-to-double v3, v1

    const-wide v5, 0x400451eb851eb852L

    mul-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v0, v3

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNumberOfPages(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getNumDirectories(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;
    .locals 1
    .parameter "s"
    .parameter "page"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;IZ)Lcom/itextpdf/text/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getTiffImage(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;IZ)Lcom/itextpdf/text/Image;
    .locals 55
    .parameter "s"
    .parameter "page"
    .parameter "direct"

    .prologue
    .line 117
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ge v0, v5, :cond_0

    .line 118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "the.page.number.must.be.gt.eq.1"

    invoke-static {v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_0
    :try_start_0
    new-instance v31, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;

    add-int/lit8 v5, p1, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)V

    .line 121
    .local v31, dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    const/16 v5, 0x142

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "tiles.are.not.supported"

    invoke-static {v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v31           #dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    :catch_0
    move-exception v34

    .line 279
    .local v34, e:Ljava/lang/Exception;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 123
    .end local v34           #e:Ljava/lang/Exception;
    .restart local v31       #dir:Lcom/itextpdf/text/pdf/codec/TIFFDirectory;
    :cond_1
    const/16 v5, 0x103

    :try_start_1
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v30, v0

    .line 124
    .local v30, compression:I
    sparse-switch v30, :sswitch_data_0

    .line 131
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getTiffImageColor(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Lcom/itextpdf/text/Image;

    move-result-object v41

    .line 276
    :cond_2
    :goto_0
    return-object v41

    .line 133
    :sswitch_0
    const/16 v49, 0x0

    .line 134
    .local v49, rotation:F
    const/16 v5, 0x112

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    const/16 v5, 0x112

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v48, v0

    .line 136
    .local v48, rot:I
    const/4 v5, 0x3

    move/from16 v0, v48

    if-eq v0, v5, :cond_3

    const/4 v5, 0x4

    move/from16 v0, v48

    if-ne v0, v5, :cond_11

    .line 137
    :cond_3
    const v49, 0x40490fdb

    .line 144
    .end local v48           #rot:I
    :cond_4
    :goto_1
    const/16 v41, 0x0

    .line 145
    .local v41, img:Lcom/itextpdf/text/Image;
    const-wide/16 v14, 0x0

    .line 146
    .local v14, tiffT4Options:J
    const-wide/16 v21, 0x0

    .line 147
    .local v21, tiffT6Options:J
    const/16 v37, 0x1

    .line 148
    .local v37, fillOrder:I
    const/16 v5, 0x101

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v4, v11

    .line 149
    .local v4, h:I
    const/16 v5, 0x100

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v3, v11

    .line 150
    .local v3, w:I
    const/16 v32, 0x0

    .line 151
    .local v32, dpiX:I
    const/16 v33, 0x0

    .line 152
    .local v33, dpiY:I
    const/16 v29, 0x0

    .line 153
    .local v29, XYRatio:F
    const/16 v46, 0x2

    .line 154
    .local v46, resolutionUnit:I
    const/16 v5, 0x128

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    const/16 v5, 0x128

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v46, v0

    .line 156
    :cond_5
    const/16 v5, 0x11a

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v5

    move/from16 v0, v46

    invoke-static {v5, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v32

    .line 157
    const/16 v5, 0x11b

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v5

    move/from16 v0, v46

    invoke-static {v5, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v33

    .line 158
    const/4 v5, 0x1

    move/from16 v0, v46

    if-ne v0, v5, :cond_7

    .line 159
    if-eqz v33, :cond_6

    .line 160
    move/from16 v0, v32

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v11, v0

    div-float v29, v5, v11

    .line 161
    :cond_6
    const/16 v32, 0x0

    .line 162
    const/16 v33, 0x0

    .line 164
    :cond_7
    move/from16 v51, v4

    .line 165
    .local v51, rowsStrip:I
    const/16 v5, 0x116

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 166
    const/16 v5, 0x116

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v11

    long-to-int v0, v11

    move/from16 v51, v0

    .line 167
    :cond_8
    if-lez v51, :cond_9

    move/from16 v0, v51

    if-le v0, v4, :cond_a

    .line 168
    :cond_9
    move/from16 v51, v4

    .line 169
    :cond_a
    const/16 v5, 0x111

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v43

    .line 170
    .local v43, offset:[J
    const/16 v5, 0x117

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v52

    .line 171
    .local v52, size:[J
    if-eqz v52, :cond_b

    move-object/from16 v0, v52

    array-length v5, v0

    const/4 v11, 0x1

    if-ne v5, v11, :cond_c

    const/4 v5, 0x0

    aget-wide v11, v52, v5

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    aget-wide v11, v52, v5

    const/4 v5, 0x0

    aget-wide v16, v43, v5

    add-long v11, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v5, v11, v16

    if-lez v5, :cond_c

    :cond_b
    move/from16 v0, v51

    if-ne v4, v0, :cond_c

    .line 172
    const/4 v5, 0x1

    new-array v0, v5, [J

    move-object/from16 v52, v0

    .end local v52           #size:[J
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v11

    const/4 v12, 0x0

    aget-wide v16, v43, v12

    move-wide/from16 v0, v16

    long-to-int v12, v0

    sub-int/2addr v11, v12

    int-to-long v11, v11

    aput-wide v11, v52, v5

    .line 174
    .restart local v52       #size:[J
    :cond_c
    const/16 v47, 0x0

    .line 175
    .local v47, reverse:Z
    const/16 v5, 0x10a

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v38

    .line 176
    .local v38, fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v38, :cond_d

    .line 177
    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v37

    .line 178
    :cond_d
    const/4 v5, 0x2

    move/from16 v0, v37

    if-ne v0, v5, :cond_15

    const/16 v47, 0x1

    .line 179
    :goto_2
    const/4 v7, 0x0

    .line 180
    .local v7, params:I
    const/16 v5, 0x106

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 181
    const/16 v5, 0x106

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v44

    .line 182
    .local v44, photo:J
    const-wide/16 v11, 0x1

    cmp-long v5, v44, v11

    if-nez v5, :cond_e

    .line 183
    or-int/lit8 v7, v7, 0x1

    .line 185
    .end local v44           #photo:J
    :cond_e
    const/4 v6, 0x0

    .line 186
    .local v6, imagecomp:I
    sparse-switch v30, :sswitch_data_1

    .line 211
    :cond_f
    :goto_3
    if-eqz p2, :cond_17

    move/from16 v0, v51

    if-ne v0, v4, :cond_17

    .line 212
    const/4 v5, 0x0

    aget-wide v11, v52, v5

    long-to-int v5, v11

    new-array v8, v5, [B

    .line 213
    .local v8, im:[B
    const/4 v5, 0x0

    aget-wide v11, v43, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 215
    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;

    move-result-object v41

    .line 216
    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Image;->setInverted(Z)V

    .line 260
    .end local v8           #im:[B
    :goto_4
    move-object/from16 v0, v41

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 261
    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setXYRatio(F)V

    .line 262
    const v5, 0x8773

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_10

    .line 264
    const v5, 0x8773

    :try_start_2
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v36

    .line 265
    .local v36, fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v36 .. v36}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v40

    .line 266
    .local v40, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/pdf/ICC_Profile;->getNumComponents()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_10

    .line 267
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 273
    .end local v36           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v40           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :cond_10
    :goto_5
    const/4 v5, 0x5

    :try_start_3
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 274
    const/4 v5, 0x0

    cmpl-float v5, v49, v5

    if-eqz v5, :cond_2

    .line 275
    move-object/from16 v0, v41

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setInitialRotation(F)V

    goto/16 :goto_0

    .line 138
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v6           #imagecomp:I
    .end local v7           #params:I
    .end local v14           #tiffT4Options:J
    .end local v21           #tiffT6Options:J
    .end local v29           #XYRatio:F
    .end local v32           #dpiX:I
    .end local v33           #dpiY:I
    .end local v37           #fillOrder:I
    .end local v38           #fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v41           #img:Lcom/itextpdf/text/Image;
    .end local v43           #offset:[J
    .end local v46           #resolutionUnit:I
    .end local v47           #reverse:Z
    .end local v51           #rowsStrip:I
    .end local v52           #size:[J
    .restart local v48       #rot:I
    :cond_11
    const/4 v5, 0x5

    move/from16 v0, v48

    if-eq v0, v5, :cond_12

    const/16 v5, 0x8

    move/from16 v0, v48

    if-ne v0, v5, :cond_13

    .line 139
    :cond_12
    const v49, 0x3fc90fdb

    goto/16 :goto_1

    .line 140
    :cond_13
    const/4 v5, 0x6

    move/from16 v0, v48

    if-eq v0, v5, :cond_14

    const/4 v5, 0x7

    move/from16 v0, v48

    if-ne v0, v5, :cond_4

    .line 141
    :cond_14
    const v49, -0x4036f025

    goto/16 :goto_1

    .line 178
    .end local v48           #rot:I
    .restart local v3       #w:I
    .restart local v4       #h:I
    .restart local v14       #tiffT4Options:J
    .restart local v21       #tiffT6Options:J
    .restart local v29       #XYRatio:F
    .restart local v32       #dpiX:I
    .restart local v33       #dpiY:I
    .restart local v37       #fillOrder:I
    .restart local v38       #fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v41       #img:Lcom/itextpdf/text/Image;
    .restart local v43       #offset:[J
    .restart local v46       #resolutionUnit:I
    .restart local v47       #reverse:Z
    .restart local v51       #rowsStrip:I
    .restart local v52       #size:[J
    :cond_15
    const/16 v47, 0x0

    goto/16 :goto_2

    .line 189
    .restart local v6       #imagecomp:I
    .restart local v7       #params:I
    :sswitch_1
    const/16 v6, 0x101

    .line 190
    or-int/lit8 v7, v7, 0xa

    .line 191
    goto/16 :goto_3

    .line 193
    :sswitch_2
    const/16 v6, 0x101

    .line 194
    or-int/lit8 v7, v7, 0xc

    .line 195
    const/16 v5, 0x124

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v53

    .line 196
    .local v53, t4OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v53, :cond_f

    .line 197
    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLong(I)J

    move-result-wide v14

    .line 198
    const-wide/16 v11, 0x1

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_16

    .line 199
    const/16 v6, 0x102

    .line 200
    :cond_16
    const-wide/16 v11, 0x4

    and-long/2addr v11, v14

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_f

    .line 201
    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_3

    .line 205
    .end local v53           #t4OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    :sswitch_3
    const/16 v6, 0x100

    .line 206
    const/16 v5, 0x125

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v54

    .line 207
    .local v54, t6OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v54, :cond_f

    .line 208
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsLong(I)J

    move-result-wide v21

    goto/16 :goto_3

    .line 219
    .end local v54           #t6OptionsField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    :cond_17
    move/from16 v50, v4

    .line 220
    .local v50, rowsLeft:I
    new-instance v39, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;-><init>(I)V

    .line 221
    .local v39, g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    const/16 v42, 0x0

    .local v42, k:I
    :goto_6
    move-object/from16 v0, v43

    array-length v5, v0

    move/from16 v0, v42

    if-ge v0, v5, :cond_18

    .line 222
    aget-wide v11, v52, v42

    long-to-int v5, v11

    new-array v8, v5, [B

    .line 223
    .restart local v8       #im:[B
    aget-wide v11, v43, v42

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 225
    move/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 226
    .local v13, height:I
    new-instance v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;

    move/from16 v0, v37

    invoke-direct {v9, v0, v3, v13}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;-><init>(III)V

    .line 227
    .local v9, decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    add-int/lit8 v5, v3, 0x7

    div-int/lit8 v5, v5, 0x8

    mul-int/2addr v5, v13

    new-array v10, v5, [B

    .line 228
    .local v10, outBuf:[B
    sparse-switch v30, :sswitch_data_2

    .line 255
    :goto_7
    sub-int v50, v50, v51

    .line 221
    add-int/lit8 v42, v42, 0x1

    goto :goto_6

    .line 231
    :sswitch_4
    const/4 v5, 0x0

    invoke-virtual {v9, v10, v8, v5, v13}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode1D([B[BII)V

    .line 232
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 236
    :sswitch_5
    const/4 v12, 0x0

    move-object v11, v8

    :try_start_4
    invoke-virtual/range {v9 .. v15}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 248
    :goto_8
    :try_start_5
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    .line 238
    :catch_1
    move-exception v34

    .line 240
    .local v34, e:Ljava/lang/RuntimeException;
    const-wide/16 v11, 0x4

    xor-long/2addr v14, v11

    .line 242
    const/4 v12, 0x0

    move-object v11, v8

    :try_start_6
    invoke-virtual/range {v9 .. v15}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decode2D([B[BIIJ)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    .line 244
    :catch_2
    move-exception v35

    .line 245
    .local v35, e2:Ljava/lang/RuntimeException;
    :try_start_7
    throw v34

    .line 251
    .end local v34           #e:Ljava/lang/RuntimeException;
    .end local v35           #e2:Ljava/lang/RuntimeException;
    :sswitch_6
    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v8

    move/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeT6([B[BIIJ)V

    .line 252
    move-object/from16 v0, v39

    invoke-virtual {v0, v10, v13}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V

    goto :goto_7

    .line 257
    .end local v8           #im:[B
    .end local v9           #decoder:Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
    .end local v10           #outBuf:[B
    .end local v13           #height:I
    :cond_18
    invoke-virtual/range {v39 .. v39}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->close()[B

    move-result-object v28

    .line 258
    .local v28, g4pic:[B
    const/16 v25, 0x0

    const/16 v26, 0x100

    and-int/lit8 v27, v7, 0x1

    move/from16 v23, v3

    move/from16 v24, v4

    invoke-static/range {v23 .. v28}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v41

    goto/16 :goto_4

    .line 269
    .end local v28           #g4pic:[B
    .end local v39           #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    .end local v42           #k:I
    .end local v50           #rowsLeft:I
    :catch_3
    move-exception v5

    goto/16 :goto_5

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8003 -> :sswitch_0
    .end sparse-switch

    .line 186
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8003 -> :sswitch_1
    .end sparse-switch

    .line 228
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x8003 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static getTiffImageColor(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)Lcom/itextpdf/text/Image;
    .locals 50
    .parameter "dir"
    .parameter "s"

    .prologue
    .line 285
    const/16 v6, 0x103

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v13, v6

    .line 286
    .local v13, compression:I
    const/16 v37, 0x1

    .line 287
    .local v37, predictor:I
    const/16 v31, 0x0

    .line 288
    .local v31, lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    sparse-switch v13, :sswitch_data_0

    .line 298
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "the.compression.1.is.not.supported"

    invoke-static {v7, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v13           #compression:I
    .end local v31           #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    .end local v37           #predictor:I
    :catch_0
    move-exception v16

    .line 513
    .local v16, e:Ljava/lang/Exception;
    new-instance v6, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 300
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v13       #compression:I
    .restart local v31       #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    .restart local v37       #predictor:I
    :sswitch_0
    const/16 v6, 0x106

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v35, v0

    .line 301
    .local v35, photometric:I
    packed-switch v35, :pswitch_data_0

    .line 309
    :pswitch_0
    const/4 v6, 0x6

    if-eq v13, v6, :cond_0

    const/4 v6, 0x7

    if-eq v13, v6, :cond_0

    .line 310
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "the.photometric.1.is.not.supported"

    move/from16 v0, v35

    invoke-static {v7, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 312
    :cond_0
    :pswitch_1
    const/16 v43, 0x0

    .line 313
    .local v43, rotation:F
    const/16 v6, 0x112

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 314
    const/16 v6, 0x112

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v42, v0

    .line 315
    .local v42, rot:I
    const/4 v6, 0x3

    move/from16 v0, v42

    if-eq v0, v6, :cond_1

    const/4 v6, 0x4

    move/from16 v0, v42

    if-ne v0, v6, :cond_3

    .line 316
    :cond_1
    const v43, 0x40490fdb

    .line 322
    .end local v42           #rot:I
    :cond_2
    :goto_0
    const/16 v6, 0x11c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x11c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 324
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "planar.images.are.not.supported"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    .restart local v42       #rot:I
    :cond_3
    const/4 v6, 0x5

    move/from16 v0, v42

    if-eq v0, v6, :cond_4

    const/16 v6, 0x8

    move/from16 v0, v42

    if-ne v0, v6, :cond_5

    .line 318
    :cond_4
    const v43, 0x3fc90fdb

    goto :goto_0

    .line 319
    :cond_5
    const/4 v6, 0x6

    move/from16 v0, v42

    if-eq v0, v6, :cond_6

    const/4 v6, 0x7

    move/from16 v0, v42

    if-ne v0, v6, :cond_2

    .line 320
    :cond_6
    const v43, -0x4036f025

    goto :goto_0

    .line 325
    .end local v42           #rot:I
    :cond_7
    const/16 v6, 0x152

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 326
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "extra.samples.are.not.supported"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 327
    :cond_8
    const/16 v46, 0x1

    .line 328
    .local v46, samplePerPixel:I
    const/16 v6, 0x115

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 329
    const/16 v6, 0x115

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v46, v0

    .line 330
    :cond_9
    const/4 v12, 0x1

    .line 331
    .local v12, bitsPerSample:I
    const/16 v6, 0x102

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 332
    const/16 v6, 0x102

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v12, v6

    .line 333
    :cond_a
    packed-switch v12, :pswitch_data_1

    .line 340
    :pswitch_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bits.per.sample.1.is.not.supported"

    invoke-static {v7, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 342
    :pswitch_3
    const/16 v25, 0x0

    .line 344
    .local v25, img:Lcom/itextpdf/text/Image;
    const/16 v6, 0x101

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v5, v6

    .line 345
    .local v5, h:I
    const/16 v6, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v4, v6

    .line 346
    .local v4, w:I
    const/4 v14, 0x0

    .line 347
    .local v14, dpiX:I
    const/4 v15, 0x0

    .line 348
    .local v15, dpiY:I
    const/16 v39, 0x2

    .line 349
    .local v39, resolutionUnit:I
    const/16 v6, 0x128

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 350
    const/16 v6, 0x128

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v39, v0

    .line 351
    :cond_b
    const/16 v6, 0x11a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v6

    move/from16 v0, v39

    invoke-static {v6, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v14

    .line 352
    const/16 v6, 0x11b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v6

    move/from16 v0, v39

    invoke-static {v6, v0}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getDpi(Lcom/itextpdf/text/pdf/codec/TIFFField;I)I

    move-result v15

    .line 353
    const/16 v18, 0x1

    .line 354
    .local v18, fillOrder:I
    const/16 v40, 0x0

    .line 355
    .local v40, reverse:Z
    const/16 v6, 0x10a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v19

    .line 356
    .local v19, fillOrderField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v19, :cond_c

    .line 357
    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v18

    .line 358
    :cond_c
    const/4 v6, 0x2

    move/from16 v0, v18

    if-ne v0, v6, :cond_12

    const/16 v40, 0x1

    .line 359
    :goto_1
    move/from16 v45, v5

    .line 360
    .local v45, rowsStrip:I
    const/16 v6, 0x116

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 361
    const/16 v6, 0x116

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v45, v0

    .line 362
    :cond_d
    if-lez v45, :cond_e

    move/from16 v0, v45

    if-le v0, v5, :cond_f

    .line 363
    :cond_e
    move/from16 v45, v5

    .line 364
    :cond_f
    const/16 v6, 0x111

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v32

    .line 365
    .local v32, offset:[J
    const/16 v6, 0x117

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/itextpdf/text/pdf/codec/TiffImage;->getArrayLongShort(Lcom/itextpdf/text/pdf/codec/TIFFDirectory;I)[J

    move-result-object v47

    .line 366
    .local v47, size:[J
    if-eqz v47, :cond_10

    move-object/from16 v0, v47

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    const/4 v6, 0x0

    aget-wide v6, v47, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    aget-wide v6, v47, v6

    const/4 v8, 0x0

    aget-wide v8, v32, v8

    add-long/2addr v6, v8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_11

    :cond_10
    move/from16 v0, v45

    if-ne v5, v0, :cond_11

    .line 367
    const/4 v6, 0x1

    new-array v0, v6, [J

    move-object/from16 v47, v0

    .end local v47           #size:[J
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v7

    const/4 v8, 0x0

    aget-wide v8, v32, v8

    long-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-long v7, v7

    aput-wide v7, v47, v6

    .line 369
    .restart local v47       #size:[J
    :cond_11
    const/4 v6, 0x5

    if-ne v13, v6, :cond_15

    .line 370
    const/16 v6, 0x13d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v38

    .line 371
    .local v38, predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    if-eqz v38, :cond_14

    .line 372
    const/4 v6, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsInt(I)I

    move-result v37

    .line 373
    const/4 v6, 0x1

    move/from16 v0, v37

    if-eq v0, v6, :cond_13

    const/4 v6, 0x2

    move/from16 v0, v37

    if-eq v0, v6, :cond_13

    .line 374
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "illegal.value.for.predictor.in.tiff.file"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 358
    .end local v32           #offset:[J
    .end local v38           #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v45           #rowsStrip:I
    .end local v47           #size:[J
    :cond_12
    const/16 v40, 0x0

    goto/16 :goto_1

    .line 376
    .restart local v32       #offset:[J
    .restart local v38       #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v45       #rowsStrip:I
    .restart local v47       #size:[J
    :cond_13
    const/4 v6, 0x2

    move/from16 v0, v37

    if-ne v0, v6, :cond_14

    const/16 v6, 0x8

    if-eq v12, v6, :cond_14

    .line 377
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "1.bit.samples.are.not.supported.for.horizontal.differencing.predictor"

    invoke-static {v7, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    :cond_14
    new-instance v31, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;

    .end local v31           #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v46

    invoke-direct {v0, v4, v1, v2}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;-><init>(III)V

    .line 383
    .end local v38           #predictorField:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v31       #lzwDecoder:Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;
    :cond_15
    move/from16 v44, v5

    .line 384
    .local v44, rowsLeft:I
    const/16 v48, 0x0

    .line 385
    .local v48, stream:Ljava/io/ByteArrayOutputStream;
    const/16 v49, 0x0

    .line 386
    .local v49, zip:Ljava/util/zip/DeflaterOutputStream;
    const/16 v20, 0x0

    .line 387
    .local v20, g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    const/4 v6, 0x1

    if-ne v12, v6, :cond_17

    const/4 v6, 0x1

    move/from16 v0, v46

    if-ne v0, v6, :cond_17

    .line 388
    new-instance v20, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;

    .end local v20           #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;-><init>(I)V

    .line 395
    .restart local v20       #g4:Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;
    :cond_16
    :goto_2
    const/4 v6, 0x6

    if-ne v13, v6, :cond_1b

    .line 400
    const/16 v6, 0x201

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 401
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "missing.tag.s.for.ojpeg.compression"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_17
    new-instance v48, Ljava/io/ByteArrayOutputStream;

    .end local v48           #stream:Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v48 .. v48}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    .restart local v48       #stream:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x6

    if-eq v13, v6, :cond_16

    const/4 v6, 0x7

    if-eq v13, v6, :cond_16

    .line 393
    new-instance v49, Ljava/util/zip/DeflaterOutputStream;

    .end local v49           #zip:Ljava/util/zip/DeflaterOutputStream;
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v49       #zip:Ljava/util/zip/DeflaterOutputStream;
    goto :goto_2

    .line 403
    :cond_18
    const/16 v6, 0x201

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v29, v0

    .line 404
    .local v29, jpegOffset:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v6

    sub-int v28, v6, v29

    .line 406
    .local v28, jpegLength:I
    const/16 v6, 0x202

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 407
    const/16 v6, 0x202

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getFieldAsLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    aget-wide v7, v47, v7

    long-to-int v7, v7

    add-int v28, v6, v7

    .line 411
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v6

    sub-int v6, v6, v29

    move/from16 v0, v28

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v0, v6, [B

    move-object/from16 v27, v0

    .line 413
    .local v27, jpeg:[B
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v36

    .line 414
    .local v36, posFilePointer:I
    add-int v36, v36, v29

    .line 415
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 416
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 417
    new-instance v25, Lcom/itextpdf/text/Jpeg;

    .end local v25           #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 471
    .end local v27           #jpeg:[B
    .end local v28           #jpegLength:I
    .end local v29           #jpegOffset:I
    .end local v36           #posFilePointer:I
    .restart local v25       #img:Lcom/itextpdf/text/Image;
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Lcom/itextpdf/text/Image;->setDpi(II)V

    .line 472
    const/4 v6, 0x6

    if-eq v13, v6, :cond_26

    const/4 v6, 0x7

    if-eq v13, v6, :cond_26

    .line 473
    const v6, 0x8773

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_1a

    .line 475
    const v6, 0x8773

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v17

    .line 476
    .local v17, fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v23

    .line 477
    .local v23, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/ICC_Profile;->getNumComponents()I

    move-result v6

    move/from16 v0, v46

    if-ne v0, v6, :cond_1a

    .line 478
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 484
    .end local v17           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v23           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :cond_1a
    :goto_4
    const/16 v6, 0x140

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->isTagPresent(I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 485
    const/16 v6, 0x140

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFDirectory;->getField(I)Lcom/itextpdf/text/pdf/codec/TIFFField;

    move-result-object v17

    .line 486
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/codec/TIFFField;->getAsChars()[C

    move-result-object v41

    .line 487
    .local v41, rgb:[C
    move-object/from16 v0, v41

    array-length v6, v0

    new-array v0, v6, [B

    move-object/from16 v34, v0

    .line 488
    .local v34, palette:[B
    move-object/from16 v0, v41

    array-length v6, v0

    div-int/lit8 v21, v6, 0x3

    .line 489
    .local v21, gColor:I
    mul-int/lit8 v11, v21, 0x2

    .line 490
    .local v11, bColor:I
    const/16 v30, 0x0

    .local v30, k:I
    :goto_5
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_24

    .line 491
    mul-int/lit8 v6, v30, 0x3

    aget-char v7, v41, v30

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v34, v6

    .line 492
    mul-int/lit8 v6, v30, 0x3

    add-int/lit8 v6, v6, 0x1

    add-int v7, v30, v21

    aget-char v7, v41, v7

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v34, v6

    .line 493
    mul-int/lit8 v6, v30, 0x3

    add-int/lit8 v6, v6, 0x2

    add-int v7, v30, v11

    aget-char v7, v41, v7

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v34, v6

    .line 490
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 419
    .end local v11           #bColor:I
    .end local v17           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v21           #gColor:I
    .end local v30           #k:I
    .end local v34           #palette:[B
    .end local v41           #rgb:[C
    :cond_1b
    const/4 v6, 0x7

    if-ne v13, v6, :cond_1d

    .line 420
    move-object/from16 v0, v47

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_1c

    .line 421
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "compression.jpeg.is.only.supported.with.a.single.strip.this.image.has.1.strips"

    move-object/from16 v0, v47

    array-length v8, v0

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 422
    :cond_1c
    const/4 v6, 0x0

    aget-wide v6, v47, v6

    long-to-int v6, v6

    new-array v0, v6, [B

    move-object/from16 v27, v0

    .line 423
    .restart local v27       #jpeg:[B
    const/4 v6, 0x0

    aget-wide v6, v32, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 424
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 425
    new-instance v25, Lcom/itextpdf/text/Jpeg;

    .end local v25           #img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 426
    .restart local v25       #img:Lcom/itextpdf/text/Image;
    goto/16 :goto_3

    .line 428
    .end local v27           #jpeg:[B
    :cond_1d
    const/16 v30, 0x0

    .restart local v30       #k:I
    :goto_6
    move-object/from16 v0, v32

    array-length v6, v0

    move/from16 v0, v30

    if-ge v0, v6, :cond_21

    .line 429
    aget-wide v6, v47, v30

    long-to-int v6, v6

    new-array v0, v6, [B

    move-object/from16 v24, v0

    .line 430
    .local v24, im:[B
    aget-wide v6, v32, v30

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 431
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 432
    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 433
    .local v22, height:I
    const/16 v33, 0x0

    .line 434
    .local v33, outBuf:[B
    const/4 v6, 0x1

    if-eq v13, v6, :cond_1e

    .line 435
    mul-int v6, v4, v12

    mul-int v6, v6, v46

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    mul-int v6, v6, v22

    new-array v0, v6, [B

    move-object/from16 v33, v0

    .line 436
    :cond_1e
    if-eqz v40, :cond_1f

    .line 437
    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 438
    :cond_1f
    sparse-switch v13, :sswitch_data_1

    .line 453
    :goto_7
    const/4 v6, 0x1

    if-ne v12, v6, :cond_20

    const/4 v6, 0x1

    move/from16 v0, v46

    if-ne v0, v6, :cond_20

    .line 454
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->fax4Encode([BI)V

    .line 459
    :goto_8
    sub-int v44, v44, v45

    .line 428
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 441
    :sswitch_1
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/codec/TiffImage;->inflate([B[B)V

    goto :goto_7

    .line 444
    :sswitch_2
    move-object/from16 v33, v24

    .line 445
    goto :goto_7

    .line 447
    :sswitch_3
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/codec/TiffImage;->decodePackbits([B[B)V

    goto :goto_7

    .line 450
    :sswitch_4
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/TIFFLZWDecoder;->decode([B[BI)[B

    goto :goto_7

    .line 457
    :cond_20
    move-object/from16 v0, v49

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    goto :goto_8

    .line 461
    .end local v22           #height:I
    .end local v24           #im:[B
    .end local v33           #outBuf:[B
    :cond_21
    const/4 v6, 0x1

    if-ne v12, v6, :cond_23

    const/4 v6, 0x1

    move/from16 v0, v46

    if-ne v0, v6, :cond_23

    .line 462
    const/4 v6, 0x0

    const/16 v7, 0x100

    const/4 v8, 0x1

    move/from16 v0, v35

    if-ne v0, v8, :cond_22

    const/4 v8, 0x1

    :goto_9
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/codec/CCITTG4Encoder;->close()[B

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/itextpdf/text/Image;->getInstance(IIZII[B)Lcom/itextpdf/text/Image;

    move-result-object v25

    goto/16 :goto_3

    :cond_22
    const/4 v8, 0x0

    goto :goto_9

    .line 466
    :cond_23
    invoke-virtual/range {v49 .. v49}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 467
    invoke-virtual/range {v48 .. v48}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move/from16 v0, v46

    invoke-static {v4, v5, v0, v12, v6}, Lcom/itextpdf/text/Image;->getInstance(IIII[B)Lcom/itextpdf/text/Image;

    move-result-object v25

    .line 468
    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Image;->setDeflated(Z)V

    goto/16 :goto_3

    .line 495
    .restart local v11       #bColor:I
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .restart local v21       #gColor:I
    .restart local v34       #palette:[B
    .restart local v41       #rgb:[C
    :cond_24
    new-instance v26, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 496
    .local v26, indexed:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 497
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 498
    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    add-int/lit8 v7, v21, -0x1

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 499
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 500
    new-instance v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 501
    .local v10, additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v10, v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 502
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/Image;->setAdditional(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 504
    .end local v10           #additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #bColor:I
    .end local v17           #fd:Lcom/itextpdf/text/pdf/codec/TIFFField;
    .end local v21           #gColor:I
    .end local v26           #indexed:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v30           #k:I
    .end local v34           #palette:[B
    .end local v41           #rgb:[C
    :cond_25
    const/4 v6, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Image;->setOriginalType(I)V

    .line 506
    :cond_26
    if-nez v35, :cond_27

    .line 507
    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Image;->setInverted(Z)V

    .line 508
    :cond_27
    const/4 v6, 0x0

    cmpl-float v6, v43, v6

    if-eqz v6, :cond_28

    .line 509
    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setInitialRotation(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 510
    :cond_28
    return-object v25

    .line 480
    :catch_1
    move-exception v6

    goto/16 :goto_4

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x8005 -> :sswitch_0
        0x80b2 -> :sswitch_0
    .end sparse-switch

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 333
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 438
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_4
        0x8 -> :sswitch_1
        0x8005 -> :sswitch_3
        0x80b2 -> :sswitch_1
    .end sparse-switch
.end method

.method public static inflate([B[B)V
    .locals 3
    .parameter "deflated"
    .parameter "inflated"

    .prologue
    .line 565
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 566
    .local v1, inflater:Ljava/util/zip/Inflater;
    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 568
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, dfe:Ljava/util/zip/DataFormatException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
