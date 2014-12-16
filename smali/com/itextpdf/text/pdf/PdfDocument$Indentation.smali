.class public Lcom/itextpdf/text/pdf/PdfDocument$Indentation;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Indentation"
.end annotation


# instance fields
.field imageIndentLeft:F

.field imageIndentRight:F

.field indentBottom:F

.field indentLeft:F

.field indentRight:F

.field indentTop:F

.field listIndentLeft:F

.field sectionIndentLeft:F

.field sectionIndentRight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 1609
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 1612
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 1615
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 1618
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 1621
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    .line 1624
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 1627
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    .line 1630
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentBottom:F

    return-void
.end method
