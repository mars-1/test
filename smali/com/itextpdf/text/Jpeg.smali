.class public Lcom/itextpdf/text/Jpeg;
.super Lcom/itextpdf/text/Image;
.source "Jpeg.java"


# static fields
.field public static final JFIF_ID:[B = null

.field public static final M_APP0:I = 0xe0

.field public static final M_APP2:I = 0xe2

.field public static final M_APPE:I = 0xee

.field public static final NOPARAM_MARKER:I = 0x2

.field public static final NOPARAM_MARKERS:[I = null

.field public static final NOT_A_MARKER:I = -0x1

.field public static final UNSUPPORTED_MARKER:I = 0x1

.field public static final UNSUPPORTED_MARKERS:[I

.field public static final VALID_MARKER:I

.field public static final VALID_MARKERS:[I


# instance fields
.field private icc:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0xc0t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_1
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 0x4
        0xd0t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 93
    :array_3
    .array-data 0x1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 111
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg;->processParameters()V

    .line 112
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "img"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 124
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    .line 125
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg;->originalData:[B

    .line 126
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg;->processParameters()V

    .line 127
    return-void
.end method

.method public constructor <init>([BFF)V
    .locals 0
    .parameter "img"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Jpeg;-><init>([B)V

    .line 141
    iput p2, p0, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    .line 142
    iput p3, p0, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    .line 143
    return-void
.end method

.method private static final getShort(Ljava/io/InputStream;)I
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static final marker(I)I
    .locals 2
    .parameter "marker"

    .prologue
    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 166
    sget-object v1, Lcom/itextpdf/text/Jpeg;->VALID_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 167
    const/4 v1, 0x0

    .line 180
    :goto_1
    return v1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 171
    sget-object v1, Lcom/itextpdf/text/Jpeg;->NOPARAM_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_2

    .line 172
    const/4 v1, 0x2

    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 176
    sget-object v1, Lcom/itextpdf/text/Jpeg;->UNSUPPORTED_MARKERS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_4

    .line 177
    const/4 v1, 0x1

    goto :goto_1

    .line 175
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 180
    :cond_5
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private processParameters()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/16 v28, 0x20

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->type:I

    .line 192
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->originalType:I

    .line 193
    const/16 v17, 0x0

    .line 196
    .local v17, is:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->url:Ljava/net/URL;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v17

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->url:Ljava/net/URL;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, errorID:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    const/16 v29, 0xff

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    const/16 v29, 0xd8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 205
    :cond_0
    new-instance v28, Lcom/itextpdf/text/BadElementException;

    const-string/jumbo v29, "1.is.not.a.valid.jpeg.file"

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v12           #errorID:Ljava/lang/String;
    :catchall_0
    move-exception v28

    :goto_1
    if-eqz v17, :cond_1

    .line 315
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v28

    .line 201
    :cond_2
    :try_start_1
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->rawData:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v17           #is:Ljava/io/InputStream;
    .local v18, is:Ljava/io/InputStream;
    :try_start_2
    const-string/jumbo v12, "Byte array"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v12       #errorID:Ljava/lang/String;
    move-object/from16 v17, v18

    .end local v18           #is:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 207
    :cond_3
    const/4 v14, 0x1

    .line 210
    .local v14, firstPass:Z
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v27

    .line 211
    .local v27, v:I
    if-gez v27, :cond_5

    .line 212
    new-instance v28, Ljava/io/IOException;

    const-string/jumbo v29, "premature.eof.while.reading.jpg"

    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 213
    :cond_5
    const/16 v28, 0xff

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 214
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v21

    .line 215
    .local v21, marker:I
    if-eqz v14, :cond_d

    const/16 v28, 0xe0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v20

    .line 218
    .local v20, len:I
    const/16 v28, 0x10

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 219
    add-int/lit8 v28, v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto :goto_2

    .line 222
    :cond_6
    sget-object v28, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v6, v0, [B

    .line 223
    .local v6, bcomp:[B
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 224
    .local v24, r:I
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 225
    new-instance v28, Lcom/itextpdf/text/BadElementException;

    const-string/jumbo v29, "1.corrupted.jfif.marker"

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 226
    :cond_7
    const/4 v15, 0x1

    .line 227
    .local v15, found:Z
    const/16 v19, 0x0

    .local v19, k:I
    :goto_3
    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 228
    aget-byte v28, v6, v19

    sget-object v29, Lcom/itextpdf/text/Jpeg;->JFIF_ID:[B

    aget-byte v29, v29, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 229
    const/4 v15, 0x0

    .line 233
    :cond_8
    if-nez v15, :cond_a

    .line 234
    add-int/lit8 v28, v20, -0x2

    array-length v0, v6

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_2

    .line 227
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 237
    :cond_a
    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 238
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v26

    .line 239
    .local v26, units:I
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v10

    .line 240
    .local v10, dx:I
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v11

    .line 241
    .local v11, dy:I
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 242
    move-object/from16 v0, p0

    iput v10, v0, Lcom/itextpdf/text/Jpeg;->dpiX:I

    .line 243
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/Jpeg;->dpiY:I

    .line 249
    :cond_b
    :goto_4
    add-int/lit8 v28, v20, -0x2

    array-length v0, v6

    move/from16 v29, v0

    sub-int v28, v28, v29

    add-int/lit8 v28, v28, -0x7

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_2

    .line 245
    :cond_c
    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 246
    int-to-float v0, v10

    move/from16 v28, v0

    const v29, 0x40228f5c

    mul-float v28, v28, v29

    const/high16 v29, 0x3f00

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->dpiX:I

    .line 247
    int-to-float v0, v11

    move/from16 v28, v0

    const v29, 0x40228f5c

    mul-float v28, v28, v29

    const/high16 v29, 0x3f00

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->dpiY:I

    goto :goto_4

    .line 252
    .end local v6           #bcomp:[B
    .end local v10           #dx:I
    .end local v11           #dy:I
    .end local v15           #found:Z
    .end local v19           #k:I
    .end local v20           #len:I
    .end local v24           #r:I
    .end local v26           #units:I
    :cond_d
    const/16 v28, 0xee

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 253
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v28

    add-int/lit8 v20, v28, -0x2

    .line 254
    .restart local v20       #len:I
    move/from16 v0, v20

    new-array v8, v0, [B

    .line 255
    .local v8, byteappe:[B
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 256
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v8, v19

    .line 255
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 258
    :cond_e
    array-length v0, v8

    move/from16 v28, v0

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    .line 259
    new-instance v5, Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x5

    const-string/jumbo v30, "ISO-8859-1"

    move/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v5, v8, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 260
    .local v5, appe:Ljava/lang/String;
    const-string/jumbo v28, "Adobe"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 261
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/Jpeg;->invert:Z

    goto/16 :goto_2

    .line 266
    .end local v5           #appe:Ljava/lang/String;
    .end local v8           #byteappe:[B
    .end local v19           #k:I
    .end local v20           #len:I
    :cond_f
    const/16 v28, 0xe2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    .line 267
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v28

    add-int/lit8 v20, v28, -0x2

    .line 268
    .restart local v20       #len:I
    move/from16 v0, v20

    new-array v7, v0, [B

    .line 269
    .local v7, byteapp2:[B
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 270
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v7, v19

    .line 269
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 272
    :cond_10
    array-length v0, v7

    move/from16 v28, v0

    const/16 v29, 0xe

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    .line 273
    new-instance v4, Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0xb

    const-string/jumbo v30, "ISO-8859-1"

    move/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v4, v7, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 274
    .local v4, app2:Ljava/lang/String;
    const-string/jumbo v28, "ICC_PROFILE"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 275
    const/16 v28, 0xc

    aget-byte v28, v7, v28

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 276
    .local v23, order:I
    const/16 v28, 0xd

    aget-byte v28, v7, v28

    move/from16 v0, v28

    and-int/lit16 v9, v0, 0xff

    .line 278
    .local v9, count:I
    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 279
    const/16 v23, 0x1

    .line 280
    :cond_11
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ge v9, v0, :cond_12

    .line 281
    const/4 v9, 0x1

    .line 282
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    if-nez v28, :cond_13

    .line 283
    new-array v0, v9, [[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    .line 284
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    add-int/lit8 v29, v23, -0x1

    aput-object v7, v28, v29

    goto/16 :goto_2

    .line 289
    .end local v4           #app2:Ljava/lang/String;
    .end local v7           #byteapp2:[B
    .end local v9           #count:I
    .end local v19           #k:I
    .end local v20           #len:I
    .end local v23           #order:I
    :cond_14
    const/4 v14, 0x0

    .line 290
    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/Jpeg;->marker(I)I

    move-result v22

    .line 291
    .local v22, markertype:I
    if-nez v22, :cond_18

    .line 292
    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 293
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 294
    new-instance v28, Lcom/itextpdf/text/BadElementException;

    const-string/jumbo v29, "1.must.have.8.bits.per.component"

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 296
    :cond_15
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->scaledHeight:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->setTop(F)V

    .line 298
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/Jpeg;->scaledWidth:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->setRight(F)V

    .line 300
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->colorspace:I

    .line 301
    const/16 v28, 0x8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->bpc:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    if-eqz v17, :cond_16

    .line 315
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 318
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/Jpeg;->getWidth()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->plainWidth:F

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/Jpeg;->getHeight()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/Jpeg;->plainHeight:F

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    .line 321
    const/16 v25, 0x0

    .line 322
    .local v25, total:I
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_1b

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    if-nez v28, :cond_1a

    .line 324
    const/16 v28, 0x0

    check-cast v28, [[B

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    .line 344
    .end local v19           #k:I
    .end local v25           #total:I
    :cond_17
    :goto_8
    return-void

    .line 304
    :cond_18
    const/16 v28, 0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 305
    :try_start_4
    new-instance v28, Lcom/itextpdf/text/BadElementException;

    const-string/jumbo v29, "1.unsupported.jpeg.marker.2"

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v12, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 307
    :cond_19
    const/16 v28, 0x2

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 308
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Jpeg;->getShort(Ljava/io/InputStream;)I

    move-result v28

    add-int/lit8 v28, v28, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 327
    .restart local v19       #k:I
    .restart local v25       #total:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0xe

    add-int v25, v25, v28

    .line 322
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 329
    :cond_1b
    move/from16 v0, v25

    new-array v13, v0, [B

    .line 330
    .local v13, ficc:[B
    const/16 v25, 0x0

    .line 331
    const/16 v19, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    const/16 v29, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v30, v0

    aget-object v30, v30, v19

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0xe

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v25

    move/from16 v3, v30

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/Jpeg;->icc:[[B

    move-object/from16 v28, v0

    aget-object v28, v28, v19

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0xe

    add-int v25, v25, v28

    .line 331
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 336
    :cond_1c
    :try_start_5
    invoke-static {v13}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v16

    .line 337
    .local v16, icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Jpeg;->tagICC(Lcom/itextpdf/text/pdf/ICC_Profile;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 342
    .end local v16           #icc_prof:Lcom/itextpdf/text/pdf/ICC_Profile;
    :goto_a
    const/16 v28, 0x0

    check-cast v28, [[B

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/Jpeg;->icc:[[B

    goto/16 :goto_8

    .line 339
    :catch_0
    move-exception v28

    goto :goto_a

    .line 314
    .end local v12           #errorID:Ljava/lang/String;
    .end local v13           #ficc:[B
    .end local v14           #firstPass:Z
    .end local v17           #is:Ljava/io/InputStream;
    .end local v19           #k:I
    .end local v21           #marker:I
    .end local v22           #markertype:I
    .end local v25           #total:I
    .end local v27           #v:I
    .restart local v18       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v28

    move-object/from16 v17, v18

    .end local v18           #is:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/InputStream;
    goto/16 :goto_1
.end method
