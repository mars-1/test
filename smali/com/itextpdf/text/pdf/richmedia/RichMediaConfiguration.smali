.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "RichMediaConfiguration.java"


# instance fields
.field protected instances:Lcom/itextpdf/text/pdf/PdfArray;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "subtype"

    .prologue
    .line 75
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIACONFIGURATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 65
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->instances:Lcom/itextpdf/text/pdf/PdfArray;

    .line 76
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->INSTANCES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->instances:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    return-void
.end method


# virtual methods
.method public addInstance(Lcom/itextpdf/text/pdf/richmedia/RichMediaInstance;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->instances:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 95
    return-void
.end method

.method public setName(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 86
    return-void
.end method
