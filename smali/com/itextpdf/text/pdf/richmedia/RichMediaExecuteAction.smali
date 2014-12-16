.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaExecuteAction;
.super Lcom/itextpdf/text/pdf/PdfAction;
.source "RichMediaExecuteAction.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/richmedia/RichMediaCommand;)V
    .locals 2
    .parameter "ref"
    .parameter "command"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>()V

    .line 70
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIAEXECUTE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaExecuteAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 71
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaExecuteAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 72
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CMD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/richmedia/RichMediaExecuteAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 73
    return-void
.end method


# virtual methods
.method public setRichMediaInstance(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 80
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaExecuteAction;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 81
    return-void
.end method
