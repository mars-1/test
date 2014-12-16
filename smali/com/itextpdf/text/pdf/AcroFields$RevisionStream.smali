.class Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;
.super Ljava/io/InputStream;
.source "AcroFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/AcroFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RevisionStream"
.end annotation


# instance fields
.field private b:[B

.field private closed:Z

.field private length:I

.field private raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field private rangePosition:I


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)V
    .locals 1
    .parameter "raf"
    .parameter "length"

    .prologue
    .line 2403
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2397
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->b:[B

    .line 2400
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->rangePosition:I

    .line 2404
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 2405
    iput p2, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->length:I

    .line 2406
    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;ILcom/itextpdf/text/pdf/AcroFields$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2396
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2438
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->closed:Z

    if-nez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 2440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->closed:Z

    .line 2442
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2410
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->b:[B

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->read([B)I

    move-result v0

    .line 2411
    .local v0, n:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2412
    const/4 v1, -0x1

    .line 2413
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2418
    if-nez p1, :cond_0

    .line 2419
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2420
    :cond_0
    if-ltz p2, :cond_1

    array-length v1, p1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int v1, p2, p3

    if-gez v1, :cond_2

    .line 2422
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2423
    :cond_2
    if-nez p3, :cond_3

    .line 2424
    const/4 v0, 0x0

    .line 2433
    :goto_0
    return v0

    .line 2426
    :cond_3
    iget v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->rangePosition:I

    iget v2, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->length:I

    if-lt v1, v2, :cond_4

    .line 2427
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->close()V

    .line 2428
    const/4 v0, -0x1

    goto :goto_0

    .line 2430
    :cond_4
    iget v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->length:I

    iget v2, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->rangePosition:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2431
    .local v0, elen:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1, p1, p2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 2432
    iget v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->rangePosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;->rangePosition:I

    goto :goto_0
.end method
