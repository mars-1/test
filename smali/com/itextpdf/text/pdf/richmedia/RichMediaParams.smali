.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaParams.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAPARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 64
    return-void
.end method


# virtual methods
.method public setBinding(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "binding"

    .prologue
    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BINDING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 82
    return-void
.end method

.method public setBindingMaterialName(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "bindingMaterialName"

    .prologue
    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BINDINGMATERIALNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 91
    return-void
.end method

.method public setCuePoints(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 1
    .parameter "cuePoints"

    .prologue
    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CUEPOINTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 100
    return-void
.end method

.method public setFlashVars(Ljava/lang/String;)V
    .locals 2
    .parameter "flashVars"

    .prologue
    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FLASHVARS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 73
    return-void
.end method

.method public setSettings(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SETTINGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaParams;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    return-void
.end method
