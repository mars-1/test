.class public Lcom/itextpdf/text/pdf/PdfImportedPage;
.super Lcom/itextpdf/text/pdf/PdfTemplate;
.source "PdfImportedPage.java"


# instance fields
.field pageNumber:I

.field readerInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReaderInstance;Lcom/itextpdf/text/pdf/PdfWriter;I)V
    .locals 7
    .parameter "readerInstance"
    .parameter "writer"
    .parameter "pageNumber"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->readerInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 62
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->pageNumber:I

    .line 63
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 64
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(I)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->bBox:Lcom/itextpdf/text/Rectangle;

    .line 65
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v0

    neg-float v5, v0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->bBox:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v0

    neg-float v6, v0

    move-object v0, p0

    move v3, v2

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfImportedPage;->setMatrix(FFFFFF)V

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->type:I

    .line 67
    return-void
.end method


# virtual methods
.method public addImage(Lcom/itextpdf/text/Image;FFFFFF)V
    .locals 0
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 94
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V
    .locals 0
    .parameter "template"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 106
    return-void
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 2
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->readerInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->pageNumber:I

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getFormXObject(II)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v0

    return-object v0
.end method

.method public getFromReader()Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->pageNumber:I

    return v0
.end method

.method getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->readerInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    return-object v0
.end method

.method getResources()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->readerInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfImportedPage;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getResources(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 0
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 128
    return-void
.end method

.method public setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 0
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 132
    return-void
.end method

.method public setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 0
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 143
    return-void
.end method

.method public setGroup(Lcom/itextpdf/text/pdf/PdfTransparencyGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfImportedPage;->throwError()V

    .line 152
    return-void
.end method

.method throwError()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "content.can.not.be.added.to.a.pdfimportedpage"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
