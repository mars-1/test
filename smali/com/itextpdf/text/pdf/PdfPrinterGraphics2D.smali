.class public Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;
.super Lcom/itextpdf/text/pdf/PdfGraphics2D;
.source "PdfPrinterGraphics2D.java"

# interfaces
.implements Ljava/awt/print/PrinterGraphics;


# instance fields
.field private printerJob:Ljava/awt/print/PrinterJob;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V
    .locals 0
    .parameter "cb"
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "onlyShapes"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    .line 60
    iput-object p8, p0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    .line 61
    return-void
.end method


# virtual methods
.method public getPrinterJob()Ljava/awt/print/PrinterJob;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;->printerJob:Ljava/awt/print/PrinterJob;

    return-object v0
.end method
