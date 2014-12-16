.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaDeactivation;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaDeactivation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIADEACTIVATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setCondition(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "condition"

    .prologue
    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONDITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaDeactivation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    return-void
.end method
