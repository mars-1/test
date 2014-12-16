.class public abstract Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
.super Lcom/itextpdf/text/pdf/PdfSignature;
.source "PdfSigGenericPKCS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKMS;,
        Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$PPKLite;,
        Lcom/itextpdf/text/pdf/PdfSigGenericPKCS$VeriSign;
    }
.end annotation


# instance fields
.field private digestEncryptionAlgorithm:Ljava/lang/String;

.field private externalDigest:[B

.field private externalRSAdata:[B

.field protected hashAlgorithm:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

.field protected provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "filter"
    .parameter "subFilter"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfSignature;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->provider:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSigner()Lcom/itextpdf/text/pdf/PdfPKCS7;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    return-object v0
.end method

.method public getSignerContents()[B
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADBE_X509_RSA_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS1()[B

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS7()[B

    move-result-object v0

    goto :goto_0
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 0
    .parameter "digest"
    .parameter "RSAdata"
    .parameter "digestEncryptionAlgorithm"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalDigest:[B

    .line 129
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalRSAdata:[B

    .line 130
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSignInfo(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;)V
    .locals 10
    .parameter "privKey"
    .parameter "certChain"
    .parameter "crlList"

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPKCS7;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->hashAlgorithm:Ljava/lang/String;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->provider:Ljava/lang/String;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfPKCS7;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    .line 96
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalDigest:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalRSAdata:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->digestEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setExternalDigest([B[BLjava/lang/String;)V

    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ADBE_X509_RSA_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v7, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    array-length v0, p2

    if-ge v9, v0, :cond_0

    .line 100
    aget-object v0, p2, v9

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setCert([B)V

    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS1()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setContents([B)V

    .line 108
    .end local v7           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v9           #k:I
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPKCS7$X509Name;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->name:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->name:Ljava/lang/String;

    const-string/jumbo v3, "UnicodeBig"

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 111
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPKCS7;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->hashAlgorithm:Ljava/lang/String;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->provider:Ljava/lang/String;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfPKCS7;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalDigest:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->externalRSAdata:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->digestEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setExternalDigest([B[BLjava/lang/String;)V

    .line 117
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->pkcs:Lcom/itextpdf/text/pdf/PdfPKCS7;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPKCS7;->getEncodedPKCS7()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->setContents([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v8

    .line 115
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, v8}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
