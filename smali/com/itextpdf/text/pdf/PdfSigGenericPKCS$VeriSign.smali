.class public Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;
.super Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.source "PdfSigGenericPKCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VeriSign"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VERISIGN_PPKVS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_DETACHED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 170
    const-string/jumbo v0, "MD5"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;->hashAlgorithm:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    const v2, 0x10001

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;->provider:Ljava/lang/String;

    .line 181
    return-void
.end method
