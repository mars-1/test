.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaPosition.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAPOSITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 64
    return-void
.end method


# virtual methods
.method public setHAlign(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "hAlign"

    .prologue
    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->HALIGN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 73
    return-void
.end method

.method public setHOffset(F)V
    .locals 2
    .parameter "hOffset"

    .prologue
    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->HOFFSET:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 94
    return-void
.end method

.method public setVAlign(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "vAlign"

    .prologue
    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VALIGN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 82
    return-void
.end method

.method public setVOffset(F)V
    .locals 2
    .parameter "vOffset"

    .prologue
    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VOFFSET:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 106
    return-void
.end method
