.class public Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private alphabet:[B

.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 1510
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1511
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "out"
    .parameter "options"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1535
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1536
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->breakLines:Z

    .line 1537
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->encode:Z

    .line 1538
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->bufferLength:I

    .line 1539
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    .line 1540
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    .line 1541
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->lineLength:I

    .line 1542
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1543
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->b4:[B

    .line 1544
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->options:I

    .line 1545
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getAlphabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->alphabet:[B

    .line 1546
    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/codec/Base64;->access$100(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->decodabet:[B

    .line 1547
    return-void

    :cond_0
    move v0, v2

    .line 1536
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1537
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1538
    goto :goto_2
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
    const/4 v0, 0x0

    .line 1656
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->flushBase64()V

    .line 1660
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 1662
    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    .line 1663
    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    .line 1664
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    if-lez v0, :cond_0

    .line 1637
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->options:I

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/codec/Base64;->access$400([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1639
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    .line 1646
    :cond_0
    return-void

    .line 1642
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "base64.input.not.properly.padded"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 1689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1690
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->flushBase64()V

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->suspendEncoding:Z

    .line 1678
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "theByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1564
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1565
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->encode:Z

    if-eqz v1, :cond_3

    .line 1571
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1572
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->b4:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    iget v4, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->bufferLength:I

    iget v5, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->options:I

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->encode3to4([B[BII)[B
    invoke-static {v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/codec/Base64;->access$400([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1576
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->lineLength:I

    .line 1577
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 1578
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1579
    iput v6, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->lineLength:I

    .line 1582
    :cond_2
    iput v6, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1589
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 1590
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1591
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->buffer:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->b4:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->options:I

    #calls: Lcom/itextpdf/text/pdf/codec/Base64;->decode4to3([BI[BII)I
    invoke-static {v1, v6, v2, v6, v3}, Lcom/itextpdf/text/pdf/codec/Base64;->access$300([BI[BII)I

    move-result v0

    .line 1594
    .local v0, len:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1596
    iput v6, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->position:I

    goto :goto_0

    .line 1599
    .end local v0           #len:I
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 1600
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "invalid.character.in.base64.data"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .parameter "theBytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 1619
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1627
    :cond_0
    return-void

    .line 1623
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1624
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/codec/Base64$OutputStream;->write(I)V

    .line 1623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
