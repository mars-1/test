.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaActivation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAACTIVATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 65
    return-void
.end method


# virtual methods
.method public setAnimation(Lcom/itextpdf/text/pdf/richmedia/RichMediaAnimation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ANIMATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    return-void
.end method

.method public setCondition(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONDITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 82
    return-void
.end method

.method public setConfiguration(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 112
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONFIGURATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 113
    return-void
.end method

.method public setPresentation(Lcom/itextpdf/text/pdf/richmedia/RichMediaPresentation;)V
    .locals 1
    .parameter "richMediaPresentation"

    .prologue
    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PRESENTATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 123
    return-void
.end method

.method public setScripts(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 1
    .parameter "scripts"

    .prologue
    .line 132
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SCRIPTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 133
    return-void
.end method

.method public setView(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 101
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 102
    return-void
.end method
