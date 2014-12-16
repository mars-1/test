.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaInstance.java"


# instance fields
.field protected flash:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "subtype"

    .prologue
    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAINSTANCE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 73
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 74
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FLASH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;->flash:Z

    .line 75
    return-void
.end method


# virtual methods
.method public setAsset(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "asset"

    .prologue
    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ASSET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 98
    return-void
.end method

.method public setParams(Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;->flash:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "Parameters can only be set for Flash instances."

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
