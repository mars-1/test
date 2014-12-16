.class public Lcom/itextpdf/text/pdf/ByteBuffer;
.super Ljava/io/OutputStream;
.source "ByteBuffer.java"


# static fields
.field public static HIGH_PRECISION:Z = false

.field public static final ZERO:B = 0x30t

.field private static byteCache:[[B

.field private static byteCacheSize:I

.field private static final bytes:[B

.field private static final chars:[C

.field private static final dfs:Ljava/text/DecimalFormatSymbols;


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    sput v1, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    .line 70
    sget v0, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    new-array v0, v0, [[B

    sput-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    .line 78
    sput-boolean v1, Lcom/itextpdf/text/pdf/ByteBuffer;->HIGH_PRECISION:Z

    .line 79
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->dfs:Ljava/text/DecimalFormatSymbols;

    return-void

    .line 72
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    .line 73
    :array_1
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 91
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 92
    const/16 p1, 0x80

    .line 93
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    .line 94
    return-void
.end method

.method private static convertToBytes(I)[B
    .locals 11
    .parameter "i"

    .prologue
    const/16 v10, 0x64

    const-wide/high16 v8, 0x4024

    .line 144
    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 145
    .local v2, size:I
    rem-int/lit8 v4, p0, 0x64

    if-eqz v4, :cond_0

    .line 146
    add-int/lit8 v2, v2, 0x2

    .line 148
    :cond_0
    rem-int/lit8 v4, p0, 0xa

    if-eqz v4, :cond_1

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 151
    :cond_1
    if-ge p0, v10, :cond_2

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    const/16 v4, 0xa

    if-ge p0, v4, :cond_2

    .line 154
    add-int/lit8 v2, v2, 0x1

    .line 157
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 158
    new-array v1, v2, [B

    .line 159
    .local v1, cache:[B
    add-int/lit8 v2, v2, -0x1

    .line 160
    if-ge p0, v10, :cond_3

    .line 161
    const/4 v4, 0x0

    const/16 v5, 0x30

    aput-byte v5, v1, v4

    .line 163
    :cond_3
    rem-int/lit8 v4, p0, 0xa

    if-eqz v4, :cond_4

    .line 164
    add-int/lit8 v3, v2, -0x1

    .end local v2           #size:I
    .local v3, size:I
    sget-object v4, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    rem-int/lit8 v5, p0, 0xa

    aget-byte v4, v4, v5

    aput-byte v4, v1, v2

    move v2, v3

    .line 166
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_4
    rem-int/lit8 v4, p0, 0x64

    if-eqz v4, :cond_5

    .line 167
    add-int/lit8 v3, v2, -0x1

    .end local v2           #size:I
    .restart local v3       #size:I
    sget-object v4, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit8 v5, p0, 0xa

    rem-int/lit8 v5, v5, 0xa

    aget-byte v4, v4, v5

    aput-byte v4, v1, v2

    .line 168
    add-int/lit8 v2, v3, -0x1

    .end local v3           #size:I
    .restart local v2       #size:I
    const/16 v4, 0x2e

    aput-byte v4, v1, v3

    .line 170
    :cond_5
    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, add:I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 173
    sget-object v4, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    div-int v5, p0, v5

    rem-int/lit8 v5, v5, 0xa

    aget-byte v4, v4, v5

    aput-byte v4, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_6
    return-object v1
.end method

.method public static fillCache(I)V
    .locals 4
    .parameter "decimals"

    .prologue
    .line 121
    const/4 v1, 0x1

    .line 122
    .local v1, step:I
    packed-switch p0, :pswitch_data_0

    .line 130
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    sget v2, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    if-ge v0, v2, :cond_1

    .line 131
    sget-object v2, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 130
    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    .line 124
    .end local v0           #i:I
    :pswitch_0
    const/16 v1, 0x64

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    const/16 v1, 0xa

    goto :goto_0

    .line 132
    .restart local v0       #i:I
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    invoke-static {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->convertToBytes(I)[B

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2

    .line 134
    :cond_1
    return-void

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 1
    .parameter "d"

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(DLcom/itextpdf/text/pdf/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDouble(DLcom/itextpdf/text/pdf/ByteBuffer;)Ljava/lang/String;
    .locals 19
    .parameter "d"
    .parameter "buf"

    .prologue
    .line 316
    sget-boolean v15, Lcom/itextpdf/text/pdf/ByteBuffer;->HIGH_PRECISION:Z

    if-eqz v15, :cond_1

    .line 317
    new-instance v6, Ljava/text/DecimalFormat;

    const-string/jumbo v15, "0.######"

    sget-object v16, Lcom/itextpdf/text/pdf/ByteBuffer;->dfs:Ljava/text/DecimalFormatSymbols;

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 318
    .local v6, dn:Ljava/text/DecimalFormat;
    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, sform:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 531
    .end local v6           #dn:Ljava/text/DecimalFormat;
    .end local v9           #sform:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 322
    .restart local v6       #dn:Ljava/text/DecimalFormat;
    .restart local v9       #sform:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 323
    const/4 v9, 0x0

    goto :goto_0

    .line 326
    .end local v6           #dn:Ljava/text/DecimalFormat;
    .end local v9           #sform:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 327
    .local v7, negative:Z
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3eef75104d551d69L

    cmpg-double v15, v15, v17

    if-gez v15, :cond_3

    .line 328
    if-eqz p2, :cond_2

    .line 329
    const/16 v15, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 330
    const/4 v9, 0x0

    goto :goto_0

    .line 332
    :cond_2
    const-string/jumbo v9, "0"

    goto :goto_0

    .line 335
    :cond_3
    const-wide/16 v15, 0x0

    cmpg-double v15, p0, v15

    if-gez v15, :cond_4

    .line 336
    const/4 v7, 0x1

    .line 337
    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    .line 339
    :cond_4
    const-wide/high16 v15, 0x3ff0

    cmpg-double v15, p0, v15

    if-gez v15, :cond_f

    .line 340
    const-wide v15, 0x3ed4f8b588e368f1L

    add-double p0, p0, v15

    .line 341
    const-wide/high16 v15, 0x3ff0

    cmpl-double v15, p0, v15

    if-ltz v15, :cond_8

    .line 342
    if-eqz v7, :cond_6

    .line 343
    if-eqz p2, :cond_5

    .line 344
    const/16 v15, 0x2d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 345
    const/16 v15, 0x31

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 346
    const/4 v9, 0x0

    goto :goto_0

    .line 348
    :cond_5
    const-string/jumbo v9, "-1"

    goto :goto_0

    .line 351
    :cond_6
    if-eqz p2, :cond_7

    .line 352
    const/16 v15, 0x31

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 353
    const/4 v9, 0x0

    goto :goto_0

    .line 355
    :cond_7
    const-string/jumbo v9, "1"

    goto :goto_0

    .line 359
    :cond_8
    if-eqz p2, :cond_b

    .line 360
    const-wide v15, 0x40f86a0000000000L

    mul-double v15, v15, p0

    double-to-int v12, v15

    .line 362
    .local v12, v:I
    if-eqz v7, :cond_9

    const/16 v15, 0x2d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 363
    :cond_9
    const/16 v15, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 364
    const/16 v15, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 366
    div-int/lit16 v15, v12, 0x2710

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 367
    rem-int/lit16 v15, v12, 0x2710

    if-eqz v15, :cond_a

    .line 368
    div-int/lit16 v15, v12, 0x3e8

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 369
    rem-int/lit16 v15, v12, 0x3e8

    if-eqz v15, :cond_a

    .line 370
    div-int/lit8 v15, v12, 0x64

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 371
    rem-int/lit8 v15, v12, 0x64

    if-eqz v15, :cond_a

    .line 372
    div-int/lit8 v15, v12, 0xa

    rem-int/lit8 v15, v15, 0xa

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 373
    rem-int/lit8 v15, v12, 0xa

    if-eqz v15, :cond_a

    .line 374
    rem-int/lit8 v15, v12, 0xa

    add-int/lit8 v15, v15, 0x30

    int-to-byte v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 379
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 381
    .end local v12           #v:I
    :cond_b
    const v14, 0x186a0

    .line 382
    .local v14, x:I
    int-to-double v15, v14

    mul-double v15, v15, p0

    double-to-int v12, v15

    .line 384
    .restart local v12       #v:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v8, res:Ljava/lang/StringBuffer;
    if-eqz v7, :cond_c

    const/16 v15, 0x2d

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    :cond_c
    const-string/jumbo v15, "0."

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :goto_1
    div-int/lit8 v15, v14, 0xa

    if-ge v12, v15, :cond_d

    .line 389
    const/16 v15, 0x30

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    div-int/lit8 v14, v14, 0xa

    goto :goto_1

    .line 392
    :cond_d
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .line 394
    .local v5, cut:I
    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 395
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 397
    :cond_e
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 398
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 400
    .end local v5           #cut:I
    .end local v8           #res:Ljava/lang/StringBuffer;
    .end local v12           #v:I
    .end local v14           #x:I
    :cond_f
    const-wide v15, 0x40dfffc000000000L

    cmpg-double v15, p0, v15

    if-gtz v15, :cond_2f

    .line 401
    const-wide v15, 0x3f747ae147ae147bL

    add-double p0, p0, v15

    .line 402
    const-wide/high16 v15, 0x4059

    mul-double v15, v15, p0

    double-to-int v12, v15

    .line 404
    .restart local v12       #v:I
    sget v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    if-ge v12, v15, :cond_13

    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    aget-object v15, v15, v12

    if-eqz v15, :cond_13

    .line 405
    if-eqz p2, :cond_11

    .line 406
    if-eqz v7, :cond_10

    const/16 v15, 0x2d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 407
    :cond_10
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    aget-object v15, v15, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 408
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 410
    :cond_11
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    aget-object v15, v15, v12

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, tmp:Ljava/lang/String;
    if-eqz v7, :cond_12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_12
    move-object v9, v11

    .line 412
    goto/16 :goto_0

    .line 415
    .end local v11           #tmp:Ljava/lang/String;
    :cond_13
    if-eqz p2, :cond_27

    .line 416
    sget v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    if-ge v12, v15, :cond_1b

    .line 419
    const/4 v10, 0x0

    .line 420
    .local v10, size:I
    const v15, 0xf4240

    if-lt v12, v15, :cond_23

    .line 422
    add-int/lit8 v10, v10, 0x5

    .line 438
    :cond_14
    :goto_3
    rem-int/lit8 v15, v12, 0x64

    if-eqz v15, :cond_15

    .line 440
    add-int/lit8 v10, v10, 0x2

    .line 442
    :cond_15
    rem-int/lit8 v15, v12, 0xa

    if-eqz v15, :cond_16

    .line 443
    add-int/lit8 v10, v10, 0x1

    .line 445
    :cond_16
    new-array v4, v10, [B

    .line 446
    .local v4, cache:[B
    const/4 v2, 0x0

    .line 447
    .local v2, add:I
    const v15, 0xf4240

    if-lt v12, v15, :cond_32

    .line 448
    add-int/lit8 v3, v2, 0x1

    .end local v2           #add:I
    .local v3, add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    const v16, 0xf4240

    div-int v16, v12, v16

    aget-byte v15, v15, v16

    aput-byte v15, v4, v2

    .line 450
    :goto_4
    const v15, 0x186a0

    if-lt v12, v15, :cond_17

    .line 451
    add-int/lit8 v2, v3, 0x1

    .end local v3           #add:I
    .restart local v2       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    const v16, 0x186a0

    div-int v16, v12, v16

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v3

    move v3, v2

    .line 453
    .end local v2           #add:I
    .restart local v3       #add:I
    :cond_17
    const/16 v15, 0x2710

    if-lt v12, v15, :cond_18

    .line 454
    add-int/lit8 v2, v3, 0x1

    .end local v3           #add:I
    .restart local v2       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit16 v0, v12, 0x2710

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v3

    move v3, v2

    .line 456
    .end local v2           #add:I
    .restart local v3       #add:I
    :cond_18
    const/16 v15, 0x3e8

    if-lt v12, v15, :cond_19

    .line 457
    add-int/lit8 v2, v3, 0x1

    .end local v3           #add:I
    .restart local v2       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit16 v0, v12, 0x3e8

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v3

    move v3, v2

    .line 459
    .end local v2           #add:I
    .restart local v3       #add:I
    :cond_19
    const/16 v15, 0x64

    if-lt v12, v15, :cond_31

    .line 460
    add-int/lit8 v2, v3, 0x1

    .end local v3           #add:I
    .restart local v2       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit8 v16, v12, 0x64

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v3

    .line 463
    :goto_5
    rem-int/lit8 v15, v12, 0x64

    if-eqz v15, :cond_1a

    .line 464
    add-int/lit8 v3, v2, 0x1

    .end local v2           #add:I
    .restart local v3       #add:I
    const/16 v15, 0x2e

    aput-byte v15, v4, v2

    .line 465
    add-int/lit8 v2, v3, 0x1

    .end local v3           #add:I
    .restart local v2       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit8 v16, v12, 0xa

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v3

    .line 466
    rem-int/lit8 v15, v12, 0xa

    if-eqz v15, :cond_1a

    .line 467
    add-int/lit8 v3, v2, 0x1

    .end local v2           #add:I
    .restart local v3       #add:I
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    rem-int/lit8 v16, v12, 0xa

    aget-byte v15, v15, v16

    aput-byte v15, v4, v2

    move v2, v3

    .line 470
    .end local v3           #add:I
    .restart local v2       #add:I
    :cond_1a
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    aput-object v4, v15, v12

    .line 473
    .end local v2           #add:I
    .end local v4           #cache:[B
    .end local v10           #size:I
    :cond_1b
    if-eqz v7, :cond_1c

    const/16 v15, 0x2d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 474
    :cond_1c
    const v15, 0xf4240

    if-lt v12, v15, :cond_1d

    .line 475
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    const v16, 0xf4240

    div-int v16, v12, v16

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 477
    :cond_1d
    const v15, 0x186a0

    if-lt v12, v15, :cond_1e

    .line 478
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    const v16, 0x186a0

    div-int v16, v12, v16

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 480
    :cond_1e
    const/16 v15, 0x2710

    if-lt v12, v15, :cond_1f

    .line 481
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit16 v0, v12, 0x2710

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 483
    :cond_1f
    const/16 v15, 0x3e8

    if-lt v12, v15, :cond_20

    .line 484
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit16 v0, v12, 0x3e8

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 486
    :cond_20
    const/16 v15, 0x64

    if-lt v12, v15, :cond_21

    .line 487
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit8 v16, v12, 0x64

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 490
    :cond_21
    rem-int/lit8 v15, v12, 0x64

    if-eqz v15, :cond_22

    .line 491
    const/16 v15, 0x2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 492
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    div-int/lit8 v16, v12, 0xa

    rem-int/lit8 v16, v16, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 493
    rem-int/lit8 v15, v12, 0xa

    if-eqz v15, :cond_22

    .line 494
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    rem-int/lit8 v16, v12, 0xa

    aget-byte v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 497
    :cond_22
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 423
    .restart local v10       #size:I
    :cond_23
    const v15, 0x186a0

    if-lt v12, v15, :cond_24

    .line 425
    add-int/lit8 v10, v10, 0x4

    goto/16 :goto_3

    .line 426
    :cond_24
    const/16 v15, 0x2710

    if-lt v12, v15, :cond_25

    .line 428
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_3

    .line 429
    :cond_25
    const/16 v15, 0x3e8

    if-lt v12, v15, :cond_26

    .line 431
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_3

    .line 432
    :cond_26
    const/16 v15, 0x64

    if-lt v12, v15, :cond_14

    .line 434
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 499
    .end local v10           #size:I
    :cond_27
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 500
    .restart local v8       #res:Ljava/lang/StringBuffer;
    if-eqz v7, :cond_28

    const/16 v15, 0x2d

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 501
    :cond_28
    const v15, 0xf4240

    if-lt v12, v15, :cond_29

    .line 502
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    const v16, 0xf4240

    div-int v16, v12, v16

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 504
    :cond_29
    const v15, 0x186a0

    if-lt v12, v15, :cond_2a

    .line 505
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    const v16, 0x186a0

    div-int v16, v12, v16

    rem-int/lit8 v16, v16, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 507
    :cond_2a
    const/16 v15, 0x2710

    if-lt v12, v15, :cond_2b

    .line 508
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    div-int/lit16 v0, v12, 0x2710

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    :cond_2b
    const/16 v15, 0x3e8

    if-lt v12, v15, :cond_2c

    .line 511
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    div-int/lit16 v0, v12, 0x3e8

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    :cond_2c
    const/16 v15, 0x64

    if-lt v12, v15, :cond_2d

    .line 514
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    div-int/lit8 v16, v12, 0x64

    rem-int/lit8 v16, v16, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 517
    :cond_2d
    rem-int/lit8 v15, v12, 0x64

    if-eqz v15, :cond_2e

    .line 518
    const/16 v15, 0x2e

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    div-int/lit8 v16, v12, 0xa

    rem-int/lit8 v16, v16, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    rem-int/lit8 v15, v12, 0xa

    if-eqz v15, :cond_2e

    .line 521
    sget-object v15, Lcom/itextpdf/text/pdf/ByteBuffer;->chars:[C

    rem-int/lit8 v16, v12, 0xa

    aget-char v15, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_2e
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 527
    .end local v8           #res:Ljava/lang/StringBuffer;
    .end local v12           #v:I
    :cond_2f
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    .restart local v8       #res:Ljava/lang/StringBuffer;
    if-eqz v7, :cond_30

    const/16 v15, 0x2d

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 529
    :cond_30
    const-wide/high16 v15, 0x3fe0

    add-double p0, p0, v15

    .line 530
    move-wide/from16 v0, p0

    double-to-long v12, v0

    .line 531
    .local v12, v:J
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .end local v8           #res:Ljava/lang/StringBuffer;
    .restart local v3       #add:I
    .restart local v4       #cache:[B
    .restart local v10       #size:I
    .local v12, v:I
    :cond_31
    move v2, v3

    .end local v3           #add:I
    .restart local v2       #add:I
    goto/16 :goto_5

    :cond_32
    move v3, v2

    .end local v2           #add:I
    .restart local v3       #add:I
    goto/16 :goto_4
.end method

.method public static setCacheSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 106
    const v1, 0x31ff9c

    if-le p0, v1, :cond_0

    const p0, 0x31ff9c

    .line 107
    :cond_0
    sget v1, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    if-gt p0, v1, :cond_1

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_1
    new-array v0, p0, [[B

    .line 109
    .local v0, tmpCache:[[B
    sget-object v1, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    sget v2, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    sput-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCache:[[B

    .line 111
    sput p0, Lcom/itextpdf/text/pdf/ByteBuffer;->byteCacheSize:I

    goto :goto_0
.end method


# virtual methods
.method public append(B)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1
    .parameter "b"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1
    .parameter "c"

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(D)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1
    .parameter "d"

    .prologue
    .line 294
    invoke-static {p1, p2, p0}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(DLcom/itextpdf/text/pdf/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 295
    return-object p0
.end method

.method public append(F)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 2
    .parameter "i"

    .prologue
    .line 284
    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 2
    .parameter "i"

    .prologue
    .line 265
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 3
    .parameter "buf"

    .prologue
    .line 256
    iget-object v0, p1, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p1, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1
    .parameter "str"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-static {p1}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object p0

    .line 237
    .end local p0
    :cond_0
    return-object p0
.end method

.method public append([B)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 2
    .parameter "b"

    .prologue
    .line 225
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 205
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    if-nez p3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    add-int v1, v2, p3

    .line 209
    .local v1, newcount:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 211
    .local v0, newbuf:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    .line 214
    .end local v0           #newbuf:[B
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iput v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    goto :goto_0
.end method

.method public appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 2
    .parameter "b"

    .prologue
    .line 273
    sget-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 274
    sget-object v0, Lcom/itextpdf/text/pdf/ByteBuffer;->bytes:[B

    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 185
    iget v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    add-int/lit8 v1, v2, 0x1

    .line 186
    .local v1, newcount:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 188
    .local v0, newbuf:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iput-object v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    .line 191
    .end local v0           #newbuf:[B
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 192
    iput v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    .line 193
    return-object p0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    .line 540
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 565
    iget v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "the.new.size.must.be.positive.and.lt.eq.of.the.current.size"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    .line 568
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    iget v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    new-array v0, v1, [B

    .line 551
    .local v0, newbuf:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 607
    return-void
.end method

.method public write([BII)V
    .locals 0
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 610
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 611
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/text/pdf/ByteBuffer;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 603
    return-void
.end method
