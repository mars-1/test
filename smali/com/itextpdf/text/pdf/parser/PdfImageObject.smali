.class public Lcom/itextpdf/text/pdf/parser/PdfImageObject;
.super Ljava/lang/Object;
.source "PdfImageObject.java"


# instance fields
.field protected dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected streamBytes:[B


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRStream;)V
    .locals 4
    .parameter "stream"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 84
    :try_start_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ioe:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1
    .parameter "key"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public getAwtImage()Ljava/awt/image/BufferedImage;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v18

    .line 122
    .local v18, filter:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DCTDECODE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v15

    .line 172
    :cond_0
    :goto_0
    return-object v15

    .line 125
    :cond_1
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 126
    const/4 v15, 0x0

    goto :goto_0

    .line 128
    :cond_2
    const/4 v15, 0x0

    .line 129
    .local v15, bi:Ljava/awt/image/BufferedImage;
    new-instance v1, Ljava/awt/image/DataBufferByte;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    array-length v8, v8

    invoke-direct {v1, v6, v8}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 130
    .local v1, db:Ljava/awt/image/DataBuffer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 131
    .local v2, width:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 133
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v5

    .line 134
    .local v5, bpc:I
    packed-switch v5, :pswitch_data_0

    .line 141
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 142
    .local v16, colorspace:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    mul-int v6, v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    array-length v8, v8

    if-ne v6, v8, :cond_3

    .line 144
    new-instance v15, Ljava/awt/image/BufferedImage;

    .end local v15           #bi:Ljava/awt/image/BufferedImage;
    const/16 v6, 0xd

    invoke-direct {v15, v2, v3, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 145
    .restart local v15       #bi:Ljava/awt/image/BufferedImage;
    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 146
    .local v20, raster:Ljava/awt/image/WritableRaster;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    goto :goto_0

    .line 136
    .end local v16           #colorspace:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v20           #raster:Ljava/awt/image/WritableRaster;
    :pswitch_0
    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v2, v3, v6, v8}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 137
    .restart local v20       #raster:Ljava/awt/image/WritableRaster;
    new-instance v15, Ljava/awt/image/BufferedImage;

    .end local v15           #bi:Ljava/awt/image/BufferedImage;
    const/16 v6, 0xc

    invoke-direct {v15, v2, v3, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 138
    .restart local v15       #bi:Ljava/awt/image/BufferedImage;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    goto/16 :goto_0

    .line 149
    .end local v20           #raster:Ljava/awt/image/WritableRaster;
    .restart local v16       #colorspace:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    new-instance v15, Ljava/awt/image/BufferedImage;

    .end local v15           #bi:Ljava/awt/image/BufferedImage;
    const/4 v6, 0x1

    invoke-direct {v15, v2, v3, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 150
    .restart local v15       #bi:Ljava/awt/image/BufferedImage;
    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x3

    new-array v6, v6, [I

    .end local v5           #bpc:I
    fill-array-data v6, :array_0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 152
    .restart local v20       #raster:Ljava/awt/image/WritableRaster;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    goto/16 :goto_0

    .line 155
    .end local v20           #raster:Ljava/awt/image/WritableRaster;
    .restart local v5       #bpc:I
    :cond_4
    move-object/from16 v0, v16

    instance-of v6, v0, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v6, :cond_0

    move-object/from16 v17, v16

    .line 156
    check-cast v17, Lcom/itextpdf/text/pdf/PdfArray;

    .line 157
    .local v17, colorspacearray:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v19

    .line 159
    .local v19, hival:I
    const/4 v6, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v7

    .line 160
    .local v7, index:[B
    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 161
    .restart local v20       #raster:Ljava/awt/image/WritableRaster;
    new-instance v4, Ljava/awt/image/IndexColorModel;

    add-int/lit8 v6, v19, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/awt/image/IndexColorModel;-><init>(II[BIZ)V

    .line 162
    .local v4, cm:Ljava/awt/image/ColorModel;
    new-instance v15, Ljava/awt/image/BufferedImage;

    .end local v15           #bi:Ljava/awt/image/BufferedImage;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v0, v6, v8}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 163
    .restart local v15       #bi:Ljava/awt/image/BufferedImage;
    goto/16 :goto_0

    .line 165
    .end local v4           #cm:Ljava/awt/image/ColorModel;
    .end local v7           #index:[B
    .end local v19           #hival:I
    .end local v20           #raster:Ljava/awt/image/WritableRaster;
    :cond_5
    new-instance v15, Ljava/awt/image/BufferedImage;

    .end local v15           #bi:Ljava/awt/image/BufferedImage;
    const/4 v6, 0x1

    invoke-direct {v15, v2, v3, v6}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 166
    .restart local v15       #bi:Ljava/awt/image/BufferedImage;
    mul-int/lit8 v11, v2, 0x3

    const/4 v12, 0x3

    const/4 v6, 0x3

    new-array v13, v6, [I

    fill-array-data v13, :array_1

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-static/range {v8 .. v14}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    .line 168
    .restart local v20       #raster:Ljava/awt/image/WritableRaster;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/awt/image/BufferedImage;->setData(Ljava/awt/image/Raster;)V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 150
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 166
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getStreamBytes()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfImageObject;->streamBytes:[B

    return-object v0
.end method
