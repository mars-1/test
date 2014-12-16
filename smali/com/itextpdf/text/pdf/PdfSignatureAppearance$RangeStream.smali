.class Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;
.super Ljava/io/InputStream;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeStream"
.end annotation


# instance fields
.field private b:[B

.field private bout:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private range:[I

.field private rangePosition:I


# direct methods
.method private constructor <init>(Ljava/io/RandomAccessFile;[B[I)V
    .locals 1
    .parameter "raf"
    .parameter "bout"
    .parameter "range"

    .prologue
    .line 1412
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1406
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    .line 1410
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    .line 1413
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    .line 1414
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->bout:[B

    .line 1415
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    .line 1416
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/RandomAccessFile;[B[ILcom/itextpdf/text/pdf/PdfSignatureAppearance$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1405
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;-><init>(Ljava/io/RandomAccessFile;[B[I)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->read([B)I

    move-result v0

    .line 1424
    .local v0, n:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1425
    const/4 v1, -0x1

    .line 1426
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1436
    :cond_0
    if-ltz p2, :cond_1

    array-length v4, p1

    if-gt p2, v4, :cond_1

    if-ltz p3, :cond_1

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_1

    add-int v4, p2, p3

    if-gez v4, :cond_2

    .line 1438
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1439
    :cond_2
    if-nez p3, :cond_4

    .line 1440
    const/4 v2, 0x0

    .line 1462
    :cond_3
    :goto_0
    return v2

    .line 1442
    :cond_4
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 1445
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1446
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    aget v3, v4, v1

    .line 1447
    .local v3, start:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->range:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    add-int v0, v3, v4

    .line 1448
    .local v0, end:I
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    if-ge v4, v3, :cond_5

    .line 1449
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    .line 1450
    :cond_5
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    if-lt v4, v3, :cond_7

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    if-ge v4, v0, :cond_7

    .line 1451
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    sub-int v4, v0, v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1452
    .local v2, lenf:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_6

    .line 1453
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->bout:[B

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1458
    :goto_2
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    goto :goto_0

    .line 1455
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->rangePosition:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1456
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSignatureAppearance$RangeStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_2

    .line 1445
    .end local v2           #lenf:I
    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method
