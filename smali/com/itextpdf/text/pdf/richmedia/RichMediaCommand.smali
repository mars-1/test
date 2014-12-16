.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaCommand;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaCommand.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 67
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIACOMMAND:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 68
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaCommand;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 69
    return-void
.end method


# virtual methods
.method public setArguments(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 78
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaCommand;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 79
    return-void
.end method
