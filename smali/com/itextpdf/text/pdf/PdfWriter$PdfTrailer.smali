.class Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PdfTrailer"
.end annotation


# instance fields
.field offset:I


# direct methods
.method constructor <init>(IILcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;I)V
    .locals 2
    .parameter "size"
    .parameter "offset"
    .parameter "root"
    .parameter "info"
    .parameter "encryption"
    .parameter "fileID"
    .parameter "prevxref"

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 544
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->offset:I

    .line 545
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 546
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 547
    if-eqz p4, :cond_0

    .line 548
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 550
    :cond_0
    if-eqz p5, :cond_1

    .line 551
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p5}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 552
    :cond_1
    if-eqz p6, :cond_2

    .line 553
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p6}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 554
    :cond_2
    if-lez p7, :cond_3

    .line 555
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 556
    :cond_3
    return-void
.end method


# virtual methods
.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    const-string/jumbo v0, "trailer\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 567
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 568
    const-string/jumbo v0, "\nstartxref\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 569
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->offset:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 570
    const-string/jumbo v0, "\n%%EOF\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 571
    return-void
.end method
