.class public Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfCollectionSchema.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->COLLECTIONSCHEMA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 55
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Lcom/itextpdf/text/pdf/collection/PdfCollectionField;)V
    .locals 1
    .parameter "name"
    .parameter "field"

    .prologue
    .line 63
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/collection/PdfCollectionSchema;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 64
    return-void
.end method
