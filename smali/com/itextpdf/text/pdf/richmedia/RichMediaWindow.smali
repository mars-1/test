.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaWindow.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 65
    return-void
.end method

.method private createDimensionDictionary(FFF)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 3
    .parameter "d"
    .parameter "max"
    .parameter "min"

    .prologue
    .line 97
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 98
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 99
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MAX_CAMEL_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MIN_CAMEL_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public setHeight(FFF)V
    .locals 2
    .parameter "defaultHeight"
    .parameter "maxHeight"
    .parameter "minHeight"

    .prologue
    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;->createDimensionDictionary(FFF)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 87
    return-void
.end method

.method public setPosition(Lcom/itextpdf/text/pdf/richmedia/RichMediaPosition;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->POSITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    return-void
.end method

.method public setWidth(FFF)V
    .locals 2
    .parameter "defaultWidth"
    .parameter "maxWidth"
    .parameter "minWidth"

    .prologue
    .line 75
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;->createDimensionDictionary(FFF)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 76
    return-void
.end method
