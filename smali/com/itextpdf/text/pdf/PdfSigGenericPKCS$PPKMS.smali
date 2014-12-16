.class public Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;
.super Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.source "PdfSigGenericPKCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PPKMS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADOBE_PPKMS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 216
    const-string/jumbo v0, "SHA1"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;->hashAlgorithm:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;->provider:Ljava/lang/String;

    .line 226
    return-void
.end method
