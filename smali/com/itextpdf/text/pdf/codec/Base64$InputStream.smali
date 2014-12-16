.class public Lcom/itextpdf/text/pdf/codec/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1297
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "in"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1322
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1323
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->breakLines:Z

    .line 1324
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    .line 1325
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    .line 1326
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    .line 1327
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1328
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1329
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    .line 1330
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->alphabet:[B

    .line 1331
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->decodabet:[B

    .line 1332
    return-void

    :cond_0
    move v0, v2

    .line 1323
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1324
    goto :goto_1

    .line 1325
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 1343
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    if-gez v3, :cond_2

    .line 1344
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_4

    .line 1345
    new-array v0, v4, [B

    .line 1346
    .local v0, b3:[B
    const/4 v2, 0x0

    .line 1347
    .local v2, numBinaryBytes:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 1349
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1352
    .local v6, b:I
    if-ltz v6, :cond_0

    .line 1353
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    add-int/lit8 v2, v2, 0x1

    .line 1347
    .end local v6           #b:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v8

    .line 1360
    .local v8, e:Ljava/io/IOException;
    if-nez v9, :cond_0

    .line 1361
    throw v8

    .line 1366
    .end local v8           #e:Ljava/io/IOException;
    :cond_1
    if-lez v2, :cond_3

    .line 1367
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    move v4, v1

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/codec/Base64;->access$200([BII[BII)[B

    .line 1368
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1369
    iput v11, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    .line 1408
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_2
    :goto_1
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    if-ltz v3, :cond_e

    .line 1410
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_b

    move v1, v10

    .line 1427
    :goto_2
    return v1

    .restart local v0       #b3:[B
    .restart local v2       #numBinaryBytes:I
    .restart local v9       #i:I
    :cond_3
    move v1, v10

    .line 1372
    goto :goto_2

    .line 1378
    .end local v0           #b3:[B
    .end local v2           #numBinaryBytes:I
    .end local v9           #i:I
    :cond_4
    new-array v7, v11, [B

    .line 1379
    .local v7, b4:[B
    const/4 v9, 0x0

    .line 1380
    .restart local v9       #i:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_7

    .line 1382
    const/4 v6, 0x0

    .line 1383
    .restart local v6       #b:I
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1384
    if-ltz v6, :cond_6

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_5

    .line 1386
    :cond_6
    if-gez v6, :cond_8

    .line 1392
    .end local v6           #b:I
    :cond_7
    if-ne v9, v11, :cond_9

    .line 1393
    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->options:I

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->decode4to3([BI[BII)I
    invoke-static {v7, v1, v3, v1, v4}, Lcom/itextpdf/text/pdf/codec/Base64;->access$300([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->numSigBytes:I

    .line 1394
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    goto :goto_1

    .line 1389
    .restart local v6       #b:I
    :cond_8
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 1380
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1396
    .end local v6           #b:I
    :cond_9
    if-nez v9, :cond_a

    move v1, v10

    .line 1397
    goto :goto_2

    .line 1401
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "improperly.padded.base64.input"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1413
    .end local v7           #b4:[B
    .end local v9           #i:I
    :cond_b
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_c

    .line 1414
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1415
    const/16 v1, 0xa

    goto :goto_2

    .line 1418
    :cond_c
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->lineLength:I

    .line 1422
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->buffer:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1424
    .restart local v6       #b:I
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_d

    .line 1425
    iput v10, p0, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->position:I

    .line 1427
    :cond_d
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1435
    .end local v6           #b:I
    :cond_e
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "error.in.base64.code.reading.stream"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .parameter "dest"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/Base64$InputStream;->read()I

    move-result v0

    .line 1461
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 1462
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1463
    :cond_0
    if-nez v1, :cond_1

    .line 1464
    const/4 v1, -0x1

    .line 1468
    .end local v0           #b:I
    .end local v1           #i:I
    :cond_1
    return v1
.end method
