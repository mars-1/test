.class public Lcom/itextpdf/text/pdf/PdfStamper;
.super Ljava/lang/Object;
.source "PdfStamper.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfEncryptionSettings;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;


# instance fields
.field private hasSignature:Z

.field private moreInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

.field protected stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "reader"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;C)V
    .locals 2
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfStamperImp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    .line 125
    return-void
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;C)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 2
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfStamper;->createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 1
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "tempFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfStamper;->createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;

    move-result-object v0

    return-object v0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CLjava/io/File;Z)Lcom/itextpdf/text/pdf/PdfStamper;
    .locals 7
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "tempFile"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    if-nez p3, :cond_1

    .line 648
    new-instance v1, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 649
    .local v1, bout:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v4, p0, v1, p2, p4}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    .line 650
    .local v4, stp:Lcom/itextpdf/text/pdf/PdfStamper;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    iget-object v6, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    iput-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    .line 651
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, v1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setSigout(Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 661
    .end local v1           #bout:Lcom/itextpdf/text/pdf/ByteBuffer;
    :goto_0
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setOriginalout(Ljava/io/OutputStream;)V

    .line 662
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setStamper(Lcom/itextpdf/text/pdf/PdfStamper;)V

    .line 663
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->hasSignature:Z

    .line 664
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 665
    .local v2, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 666
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    .line 667
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 668
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 670
    :cond_0
    return-object v4

    .line 654
    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #stp:Lcom/itextpdf/text/pdf/PdfStamper;
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    const-string/jumbo v5, "pdf"

    const/4 v6, 0x0

    invoke-static {v5, v6, p3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p3

    .line 656
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 657
    .local v3, fout:Ljava/io/FileOutputStream;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStamper;

    invoke-direct {v4, p0, v3, p2, p4}, Lcom/itextpdf/text/pdf/PdfStamper;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V

    .line 658
    .restart local v4       #stp:Lcom/itextpdf/text/pdf/PdfStamper;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    iget-object v6, v4, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    iput-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    .line 659
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->setTempFile(Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V
    .locals 1
    .parameter "annot"
    .parameter "page"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    .line 409
    return-void
.end method

.method public addComments(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 1
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addComments(Lcom/itextpdf/text/pdf/FdfReader;)V

    .line 438
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 1
    .parameter "description"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 501
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "description"
    .parameter "fileStore"
    .parameter "file"
    .parameter "fileDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {v0, p3, p4, p2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamper;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 493
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addJavaScript(Ljava/lang/String;Z)V

    .line 480
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addSignature(Ljava/lang/String;IFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 7
    .parameter "name"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 423
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v0

    .line 424
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfFormField;->createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, signature:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 425
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setSignatureParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 426
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSignatureAppearences(Lcom/itextpdf/text/pdf/PdfFormField;FFFF)V

    .line 427
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/text/pdf/PdfStamper;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V

    .line 428
    return-object v1
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 547
    return-void
.end method

.method public close()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 188
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->hasSignature:Z

    if-nez v10, :cond_0

    .line 189
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfStamperImp;->close(Ljava/util/HashMap;)V

    .line 216
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->preClose()V

    .line 193
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getSigStandard()Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;

    move-result-object v7

    .line 194
    .local v7, sig:Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v10}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 195
    .local v4, lit:Lcom/itextpdf/text/pdf/PdfLiteral;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLiteral;->getPosLength()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    div-int/lit8 v9, v10, 0x2

    .line 196
    .local v9, totalBuf:I
    const/16 v10, 0x2000

    new-array v1, v10, [B

    .line 198
    .local v1, buf:[B
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->getRangeStream()Ljava/io/InputStream;

    move-result-object v3

    .line 200
    .local v3, inp:Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, n:I
    if-lez v5, :cond_1

    .line 201
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->getSigner()Lcom/itextpdf/text/pdf/PdfPKCS7;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v5}, Lcom/itextpdf/text/pdf/PdfPKCS7;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 204
    .end local v5           #n:I
    :catch_0
    move-exception v6

    .line 205
    .local v6, se:Ljava/security/SignatureException;
    new-instance v10, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v10, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 207
    .end local v6           #se:Ljava/security/SignatureException;
    .restart local v5       #n:I
    :cond_1
    new-array v1, v9, [B

    .line 208
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfSigGenericPKCS;->getSignerContents()[B

    move-result-object v0

    .line 209
    .local v0, bsig:[B
    array-length v10, v0

    invoke-static {v0, v12, v1, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    new-instance v8, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v8, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    .line 211
    .local v8, str:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    .line 212
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 213
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v10, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 214
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    invoke-virtual {v10, v2}, Lcom/itextpdf/text/pdf/PdfSignatureAppearance;->close(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 215
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v10, v10, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    goto :goto_0
.end method

.method public getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v0

    return-object v0
.end method

.method public getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 1
    .parameter "reader"
    .parameter "pageNumber"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v0

    return-object v0
.end method

.method public getMoreInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    return-object v0
.end method

.method public getPdfLayers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPdfLayers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public getSignatureAppearance()Lcom/itextpdf/text/pdf/PdfSignatureAppearance;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->sigApp:Lcom/itextpdf/text/pdf/PdfSignatureAppearance;

    return-object v0
.end method

.method public getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    return-object v0
.end method

.method public insertPage(ILcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "pageNumber"
    .parameter "mediabox"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->insertPage(ILcom/itextpdf/text/Rectangle;)V

    .line 168
    return-void
.end method

.method public isFullCompression()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isFullCompression()Z

    move-result v0

    return v0
.end method

.method public isRotateContents()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isRotateContents()Z

    move-result v0

    return v0
.end method

.method public makePackage(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "initialView"

    .prologue
    .line 517
    new-instance v0, Lcom/itextpdf/text/pdf/collection/PdfCollection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;-><init>(I)V

    .line 518
    .local v0, collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/collection/PdfCollection;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 519
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V

    .line 520
    return-void
.end method

.method public makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V

    .line 528
    return-void
.end method

.method public partialFormFlattening(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFormFlattening(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V
    .locals 1
    .parameter "r"
    .parameter "pageImported"
    .parameter "pageReplaced"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V

    .line 157
    return-void
.end method

.method public setDuration(II)V
    .locals 1
    .parameter "seconds"
    .parameter "page"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setDuration(II)V

    .line 595
    return-void
.end method

.method public setEncryption(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "encryptionType"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BII)V

    .line 329
    return-void
.end method

.method public setEncryption(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "strength"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p2}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfStamper;->setEncryption([B[BIZ)V

    .line 311
    return-void
.end method

.method public setEncryption([B[BII)V
    .locals 2
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "append.mode.does.not.support.changing.the.encryption.status"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "content.was.already.written.to.the.output"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([B[BII)V

    .line 294
    return-void
.end method

.method public setEncryption([B[BIZ)V
    .locals 2
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "strength128Bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "append.mode.does.not.support.changing.the.encryption.status"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "content.was.already.written.to.the.output"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([B[BII)V

    .line 273
    return-void

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncryption([Ljava/security/cert/Certificate;[II)V
    .locals 2
    .parameter "certs"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "append.mode.does.not.support.changing.the.encryption.status"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "content.was.already.written.to.the.output"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setEncryption([Ljava/security/cert/Certificate;[II)V

    .line 350
    return-void
.end method

.method public setFormFlattening(Z)V
    .locals 1
    .parameter "flat"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFormFlattening(Z)V

    .line 391
    return-void
.end method

.method public setFreeTextFlattening(Z)V
    .locals 1
    .parameter "flat"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFreeTextFlattening(Z)V

    .line 399
    return-void
.end method

.method public setFullCompression()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setFullCompression()V

    goto :goto_0
.end method

.method public setMoreInfo(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, moreInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamper;->moreInfo:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public setOutlines(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, outlines:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setOutlines(Ljava/util/List;)V

    .line 447
    return-void
.end method

.method public setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V
    .locals 1
    .parameter "actionType"
    .parameter "action"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V

    .line 586
    return-void
.end method

.method public setRotateContents(Z)V
    .locals 1
    .parameter "rotateContents"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setRotateContents(Z)V

    .line 253
    return-void
.end method

.method public setThumbnail(Lcom/itextpdf/text/Image;I)V
    .locals 1
    .parameter "image"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setThumbnail(Lcom/itextpdf/text/Image;I)V

    .line 458
    return-void
.end method

.method public setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V
    .locals 1
    .parameter "transition"
    .parameter "page"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V

    .line 604
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setViewerPreferences(I)V

    .line 537
    return-void
.end method

.method public setXmpMetadata([B)V
    .locals 1
    .parameter "xmp"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamper;->stamper:Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setXmpMetadata([B)V

    .line 556
    return-void
.end method
