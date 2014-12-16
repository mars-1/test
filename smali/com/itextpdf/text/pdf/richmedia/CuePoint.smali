.class public Lcom/itextpdf/text/pdf/richmedia/CuePoint;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "CuePoint.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "subtype"

    .prologue
    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CUEPOINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 77
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/CuePoint;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    return-void
.end method


# virtual methods
.method public setAction(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 105
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/CuePoint;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    return-void

    .line 108
    :cond_1
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "An action should be defined as a dictionary"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/CuePoint;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 87
    return-void
.end method

.method public setTime(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TIME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/CuePoint;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    return-void
.end method
