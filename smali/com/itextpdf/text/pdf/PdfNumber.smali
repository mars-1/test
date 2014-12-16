.class public Lcom/itextpdf/text/pdf/PdfNumber;
.super Lcom/itextpdf/text/pdf/PdfObject;
.source "PdfNumber.java"


# instance fields
.field private value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 105
    iput-wide p1, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    .line 106
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfNumber;->setContent(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 115
    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    .line 116
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 93
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 94
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfNumber;->setContent(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "content"

    .prologue
    .line 77
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/PdfObject;-><init>(I)V

    .line 79
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    .line 80
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfNumber;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "1.is.not.a.valid.number.2"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    .line 154
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfNumber;->setContent(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/PdfNumber;->value:D

    double-to-int v0, v0

    return v0
.end method
