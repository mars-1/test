.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaAnimation.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "subtype"

    .prologue
    .line 69
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAANIMATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 70
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 71
    return-void
.end method


# virtual methods
.method public setPlayCount(I)V
    .locals 2
    .parameter "playCount"

    .prologue
    .line 78
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PLAYCOUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 79
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 98
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SPEED:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 99
    return-void
.end method

.method public setSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SPEED:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 89
    return-void
.end method
