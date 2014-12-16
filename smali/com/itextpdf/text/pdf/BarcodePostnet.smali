.class public Lcom/itextpdf/text/pdf/BarcodePostnet;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "BarcodePostnet.java"


# static fields
.field private static final BARS:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->BARS:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 83
    const v0, 0x4051745d

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->n:F

    .line 84
    const v0, 0x3fb851eb

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->x:F

    .line 85
    const/high16 v0, 0x4110

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->barHeight:F

    .line 86
    const v0, 0x40666667

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->size:F

    .line 87
    const/4 v0, 0x7

    iput v0, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->codeType:I

    .line 88
    return-void
.end method

.method public static getBarsPostnet(Ljava/lang/String;)[B
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, total:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, k:I
    :goto_0
    if-ltz v2, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    .line 98
    .local v3, n:I
    add-int/2addr v4, v3

    .line 96
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 100
    .end local v3           #n:I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rem-int/lit8 v6, v4, 0xa

    rsub-int/lit8 v6, v6, 0xa

    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 102
    .local v0, bars:[B
    aput-byte v7, v0, v8

    .line 103
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aput-byte v7, v0, v5

    .line 104
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v5, -0x30

    .line 106
    .local v1, c:I
    sget-object v5, Lcom/itextpdf/text/pdf/BarcodePostnet;->BARS:[[B

    aget-object v5, v5, v1

    mul-int/lit8 v6, v2, 0x5

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    invoke-static {v5, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v1           #c:I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 22
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 183
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v14

    .line 184
    .local v14, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v16

    .line 185
    .local v16, g:I
    new-instance v12, Ljava/awt/Canvas;

    invoke-direct {v12}, Ljava/awt/Canvas;-><init>()V

    .line 186
    .local v12, canvas:Ljava/awt/Canvas;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->x:F

    float-to-int v10, v2

    .line 187
    .local v10, barWidth:I
    if-gtz v10, :cond_0

    .line 188
    const/4 v10, 0x1

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->n:F

    float-to-int v8, v2

    .line 190
    .local v8, barDistance:I
    if-gt v8, v10, :cond_1

    .line 191
    add-int/lit8 v8, v10, 0x1

    .line 192
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->size:F

    float-to-int v9, v2

    .line 193
    .local v9, barShort:I
    if-gtz v9, :cond_2

    .line 194
    const/4 v9, 0x1

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->barHeight:F

    float-to-int v4, v2

    .line 196
    .local v4, barTall:I
    if-gt v4, v9, :cond_3

    .line 197
    add-int/lit8 v4, v9, 0x1

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v8

    add-int v3, v2, v10

    .line 199
    .local v3, width:I
    mul-int v2, v3, v4

    new-array v5, v2, [I

    .line 200
    .local v5, pix:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/text/pdf/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v11

    .line 201
    .local v11, bars:[B
    const/4 v15, 0x1

    .line 202
    .local v15, flip:B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/BarcodePostnet;->codeType:I

    const/16 v6, 0x8

    if-ne v2, v6, :cond_4

    .line 203
    const/4 v15, 0x0

    .line 204
    const/4 v2, 0x0

    const/4 v6, 0x0

    aput-byte v6, v11, v2

    .line 205
    array-length v2, v11

    add-int/lit8 v2, v2, -0x1

    const/4 v6, 0x0

    aput-byte v6, v11, v2

    .line 207
    :cond_4
    const/16 v17, 0x0

    .line 208
    .local v17, idx:I
    const/16 v20, 0x0

    .local v20, k:I
    :goto_0
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 209
    aget-byte v2, v11, v20

    if-ne v2, v15, :cond_5

    const/4 v13, 0x1

    .line 210
    .local v13, dot:Z
    :goto_1
    const/16 v19, 0x0

    .local v19, j:I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v8, :cond_7

    .line 211
    add-int v6, v17, v19

    if-eqz v13, :cond_6

    move/from16 v0, v19

    if-ge v0, v10, :cond_6

    move v2, v14

    :goto_3
    aput v2, v5, v6

    .line 210
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 209
    .end local v13           #dot:Z
    .end local v19           #j:I
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .restart local v13       #dot:Z
    .restart local v19       #j:I
    :cond_6
    move/from16 v2, v16

    .line 211
    goto :goto_3

    .line 213
    :cond_7
    add-int v17, v17, v8

    .line 208
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 215
    .end local v13           #dot:Z
    .end local v19           #j:I
    :cond_8
    sub-int v2, v4, v9

    mul-int v21, v3, v2

    .line 216
    .local v21, limit:I
    move/from16 v20, v3

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 217
    const/4 v2, 0x0

    move/from16 v0, v20

    invoke-static {v5, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    add-int v20, v20, v3

    goto :goto_4

    .line 218
    :cond_9
    move/from16 v17, v21

    .line 219
    const/16 v20, 0x0

    :goto_5
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_c

    .line 220
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_6
    move/from16 v0, v19

    if-ge v0, v8, :cond_b

    .line 221
    add-int v6, v17, v19

    move/from16 v0, v19

    if-ge v0, v10, :cond_a

    move v2, v14

    :goto_7
    aput v2, v5, v6

    .line 220
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_a
    move/from16 v2, v16

    .line 221
    goto :goto_7

    .line 223
    :cond_b
    add-int v17, v17, v8

    .line 219
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 225
    .end local v19           #j:I
    :cond_c
    add-int v20, v21, v3

    :goto_8
    array-length v2, v5

    move/from16 v0, v20

    if-ge v0, v2, :cond_d

    .line 226
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v5, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    add-int v20, v20, v3

    goto :goto_8

    .line 227
    :cond_d
    new-instance v2, Ljava/awt/image/MemoryImageSource;

    const/4 v6, 0x0

    move v7, v3

    invoke-direct/range {v2 .. v7}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v12, v2}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v18

    .line 229
    .local v18, img:Ljava/awt/Image;
    return-object v18
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->n:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->x:F

    add-float v0, v1, v2

    .line 117
    .local v0, width:F
    new-instance v1, Lcom/itextpdf/text/Rectangle;

    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->barHeight:F

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v1
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 7
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    const/4 v6, 0x0

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->code:Ljava/lang/String;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/BarcodePostnet;->getBarsPostnet(Ljava/lang/String;)[B

    move-result-object v0

    .line 160
    .local v0, bars:[B
    const/4 v1, 0x1

    .line 161
    .local v1, flip:B
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->codeType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 162
    const/4 v1, 0x0

    .line 163
    aput-byte v6, v0, v6

    .line 164
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v0, v4

    .line 166
    :cond_1
    const/4 v3, 0x0

    .line 167
    .local v3, startX:F
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 168
    const/4 v5, 0x0

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->x:F

    iget v6, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->inkSpreading:F

    sub-float v6, v4, v6

    aget-byte v4, v0, v2

    if-ne v4, v1, :cond_2

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->barHeight:F

    :goto_1
    invoke-virtual {p1, v3, v5, v6, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 169
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->n:F

    add-float/2addr v3, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_2
    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodePostnet;->size:F

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 172
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/BarcodePostnet;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v4

    return-object v4
.end method
