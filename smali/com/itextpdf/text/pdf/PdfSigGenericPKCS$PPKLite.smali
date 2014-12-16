.class public Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;
.super Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.source "PdfSigGenericPKCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PPKLite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKLITE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE_X509_RSA_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 193
    const-string/jumbo v0, "SHA1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;->hashAlgorithm:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    const v2, 0x10005

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;->provider:Ljava/lang/String;

    .line 204
    return-void
.end method
