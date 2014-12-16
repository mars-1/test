.class public Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;
.super Ljava/lang/Object;
.source "ImageRenderInfo.java"


# instance fields
.field private final ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private final ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/Matrix;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "ctm"
    .parameter "ref"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 60
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 61
    return-void
.end method


# virtual methods
.method public getImage()Lcom/itextpdf/text/pdf/parser/PdfImageObject;
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRStream;

    .line 70
    .local v0, stream:Lcom/itextpdf/text/pdf/PRStream;
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfImageObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/parser/PdfImageObject;-><init>(Lcom/itextpdf/text/pdf/PRStream;)V

    return-object v1
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Vector;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/ImageRenderInfo;->ctm:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v0

    return-object v0
.end method
