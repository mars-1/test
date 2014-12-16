.class public Lcom/itextpdf/text/pdf/PdfImage;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfImage.java"


# static fields
.field static final TRANSFERSIZE:I = 0x1000


# instance fields
.field protected name:Lcom/itextpdf/text/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/Image;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 15
    .parameter "image"
    .parameter "name"
    .parameter "maskRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 64
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    .line 78
    if-nez p2, :cond_6

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfImage;->generateImgResName(Lcom/itextpdf/text/Image;)V

    .line 82
    :goto_0
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->IMAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 84
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 85
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 87
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v13

    invoke-interface {v13}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v12

    const/16 v13, 0xff

    if-le v12, v13, :cond_2

    .line 89
    :cond_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 90
    :cond_2
    if-eqz p3, :cond_3

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isSmask()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 92
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->SMASK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInverted()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 97
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v14, "[1 0]"

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 98
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInterpolation()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 99
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    :cond_5
    const/4 v7, 0x0

    .line 103
    .local v7, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isImgRaw()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getColorspace()I

    move-result v3

    .line 106
    .local v3, colorspace:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getTransparency()[I

    move-result-object v11

    .line 107
    .local v11, transparency:[I
    if-eqz v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v12

    if-nez v12, :cond_9

    if-nez p3, :cond_9

    .line 108
    const-string/jumbo v10, "["

    .line 109
    .local v10, s:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    array-length v12, v11

    if-ge v9, v12, :cond_8

    .line 110
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v11, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 109
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 81
    .end local v3           #colorspace:I
    .end local v7           #is:Ljava/io/InputStream;
    .end local v9           #k:I
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #transparency:[I
    :cond_6
    new-instance v12, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    goto/16 :goto_0

    .line 94
    :cond_7
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 111
    .restart local v3       #colorspace:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v9       #k:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v11       #transparency:[I
    :cond_8
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->MASK:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {v13, v10}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 114
    .end local v9           #k:I
    .end local v10           #s:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    .line 115
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    array-length v14, v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v2

    .line 117
    .local v2, bpc:I
    const/16 v12, 0xff

    if-le v2, v12, :cond_11

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v12

    if-nez v12, :cond_a

    .line 119
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 120
    :cond_a
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 121
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->CCITTFAXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 122
    add-int/lit16 v9, v2, -0x101

    .line 123
    .restart local v9       #k:I
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 124
    .local v4, decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v9, :cond_b

    .line 125
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v13, v9}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 126
    :cond_b
    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_c

    .line 127
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BLACKIS1:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 128
    :cond_c
    and-int/lit8 v12, v3, 0x2

    if-eqz v12, :cond_d

    .line 129
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ENCODEDBYTEALIGN:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 130
    :cond_d
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_e

    .line 131
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ENDOFLINE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 132
    :cond_e
    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_f

    .line 133
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ENDOFBLOCK:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 134
    :cond_f
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLUMNS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 135
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ROWS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v4, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 136
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v4}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .end local v4           #decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #k:I
    :goto_3
    if-eqz v7, :cond_10

    .line 251
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 258
    .end local v2           #bpc:I
    .end local v3           #colorspace:I
    .end local v11           #transparency:[I
    :cond_10
    :goto_4
    return-void

    .line 139
    .restart local v2       #bpc:I
    .restart local v3       #colorspace:I
    .restart local v11       #transparency:[I
    :cond_11
    packed-switch v3, :pswitch_data_0

    .line 152
    :pswitch_0
    :try_start_3
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInverted()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 154
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v14, "[1 0 1 0 1 0 1 0]"

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 156
    :cond_12
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getAdditional()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 157
    .local v1, additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_13

    .line 158
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfImage;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 159
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isMask()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v12

    const/16 v13, 0x8

    if-le v12, v13, :cond_15

    .line 160
    :cond_14
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/PdfImage;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 161
    :cond_15
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isDeflated()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 163
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 245
    .end local v1           #additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #bpc:I
    .end local v3           #colorspace:I
    .end local v11           #transparency:[I
    :catch_0
    move-exception v6

    .line 246
    .local v6, ioe:Ljava/io/IOException;
    :goto_6
    :try_start_4
    new-instance v12, Lcom/itextpdf/text/pdf/BadPdfFormatException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/BadPdfFormatException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v7, :cond_16

    .line 251
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 255
    :cond_16
    :goto_8
    throw v12

    .line 141
    .restart local v2       #bpc:I
    .restart local v3       #colorspace:I
    .restart local v11       #transparency:[I
    :pswitch_1
    :try_start_6
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInverted()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 143
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v14, "[1 0]"

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_5

    .line 146
    :pswitch_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInverted()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 148
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v14, "[1 0 1 0 1 0]"

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_5

    .line 165
    .restart local v1       #additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getCompressionLevel()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/PdfImage;->flateCompress(I)V

    goto/16 :goto_3

    .line 172
    .end local v1           #additional:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #bpc:I
    .end local v3           #colorspace:I
    .end local v11           #transparency:[I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    if-nez v12, :cond_19

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getUrl()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getUrl()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, errorID:Ljava/lang/String;
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->type()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 241
    :pswitch_3
    new-instance v12, Lcom/itextpdf/text/pdf/BadPdfFormatException;

    const-string/jumbo v13, "1.is.an.unknown.image.format"

    invoke-static {v13, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/BadPdfFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 177
    .end local v5           #errorID:Ljava/lang/String;
    :cond_19
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 178
    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    :try_start_7
    const-string/jumbo v5, "Byte array"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .restart local v5       #errorID:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto :goto_9

    .line 182
    :pswitch_4
    :try_start_8
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DCTDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getColorspace()I

    move-result v12

    packed-switch v12, :pswitch_data_2

    .line 191
    :pswitch_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isInverted()Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 193
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v14, "[1 0 1 0 1 0 1 0]"

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 196
    :cond_1a
    :goto_a
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    if-eqz v12, :cond_1b

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    .line 199
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    array-length v14, v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 249
    if-eqz v7, :cond_10

    .line 251
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 253
    :catch_1
    move-exception v12

    goto/16 :goto_4

    .line 185
    :pswitch_6
    :try_start_a
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_a

    .line 188
    :pswitch_7
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_a

    .line 202
    :cond_1b
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 203
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v13, -0x1

    invoke-static {v7, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 243
    :goto_b
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 249
    if-eqz v7, :cond_10

    .line 251
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_4

    .line 253
    :catch_2
    move-exception v12

    goto/16 :goto_4

    .line 206
    :pswitch_8
    :try_start_c
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->JPXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getColorspace()I

    move-result v12

    if-lez v12, :cond_1c

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getColorspace()I

    move-result v12

    packed-switch v12, :pswitch_data_3

    .line 216
    :pswitch_9
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 218
    :goto_c
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getBpc()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 220
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    .line 222
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    array-length v14, v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 249
    if-eqz v7, :cond_10

    .line 251
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_4

    .line 253
    :catch_3
    move-exception v12

    goto/16 :goto_4

    .line 210
    :pswitch_a
    :try_start_e
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_c

    .line 213
    :pswitch_b
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_c

    .line 225
    :cond_1d
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 226
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v13, -0x1

    invoke-static {v7, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto/16 :goto_b

    .line 229
    :pswitch_c
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->JBIG2DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 230
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 231
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    if-eqz v12, :cond_1e

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getRawData()[B

    move-result-object v12

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    .line 234
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v14, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    array-length v14, v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 249
    if-eqz v7, :cond_10

    .line 251
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_4

    .line 253
    :catch_4
    move-exception v12

    goto/16 :goto_4

    .line 237
    :cond_1e
    :try_start_10
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 238
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v13, -0x1

    invoke-static {v7, v12, v13}, Lcom/itextpdf/text/pdf/PdfImage;->transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_b

    .line 253
    .end local v5           #errorID:Ljava/lang/String;
    .restart local v2       #bpc:I
    .restart local v3       #colorspace:I
    .restart local v11       #transparency:[I
    :catch_5
    move-exception v12

    goto/16 :goto_4

    .end local v2           #bpc:I
    .end local v3           #colorspace:I
    .end local v11           #transparency:[I
    :catch_6
    move-exception v13

    goto/16 :goto_8

    .line 249
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto/16 :goto_7

    .line 245
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v6

    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_c
    .end packed-switch

    .line 183
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 208
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private generateImgResName(Lcom/itextpdf/text/Image;)V
    .locals 4
    .parameter "img"

    .prologue
    .line 299
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    .line 300
    return-void
.end method

.method static transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "out"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1000

    const/4 v3, 0x0

    .line 271
    new-array v0, v4, [B

    .line 272
    .local v0, buffer:[B
    if-gez p2, :cond_0

    .line 273
    const/high16 p2, 0x7fff

    .line 275
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 276
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 277
    .local v1, size:I
    if-gez v1, :cond_2

    .line 282
    .end local v1           #size:I
    :cond_1
    return-void

    .line 279
    .restart local v1       #size:I
    :cond_2
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 280
    sub-int/2addr p2, v1

    goto :goto_0
.end method


# virtual methods
.method protected importAll(Lcom/itextpdf/text/pdf/PdfImage;)V
    .locals 1
    .parameter "dup"

    .prologue
    .line 285
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    .line 286
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->compressed:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->compressed:Z

    .line 287
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->compressionLevel:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->compressionLevel:I

    .line 288
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 289
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->bytes:[B

    .line 290
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfImage;->hashMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->hashMap:Ljava/util/HashMap;

    .line 291
    return-void
.end method

.method public name()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImage;->name:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method
