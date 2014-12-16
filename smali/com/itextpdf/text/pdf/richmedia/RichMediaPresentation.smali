.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaPresentation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAPRESENTATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 64
    return-void
.end method


# virtual methods
.method public setNavigationPane(Lcom/itextpdf/text/pdf/PdfBoolean;)V
    .locals 1
    .parameter "navigationPane"

    .prologue
    .line 106
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAVIGATIONPANE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 107
    return-void
.end method

.method public setPassContextClick(Lcom/itextpdf/text/pdf/PdfBoolean;)V
    .locals 1
    .parameter "passContextClick"

    .prologue
    .line 130
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PASSCONTEXTCLICK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 131
    return-void
.end method

.method public setStyle(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "style"

    .prologue
    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->STYLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 73
    return-void
.end method

.method public setToolbar(Lcom/itextpdf/text/pdf/PdfBoolean;)V
    .locals 1
    .parameter "toolbar"

    .prologue
    .line 117
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TOOLBAR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 118
    return-void
.end method

.method public setTransparent(Lcom/itextpdf/text/pdf/PdfBoolean;)V
    .locals 1
    .parameter "transparent"

    .prologue
    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TRANSPARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    return-void
.end method

.method public setWindow(Lcom/itextpdf/text/pdf/richmedia/RichMediaWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->WINDOW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    return-void
.end method
