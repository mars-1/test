.class public Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;
.super Ljava/lang/Object;
.source "OcspClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/OcspClient;


# instance fields
.field private checkCert:Ljava/security/cert/X509Certificate;

.field private rootCert:Ljava/security/cert/X509Certificate;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "checkCert"
    .parameter "rootCert"
    .parameter "url"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->checkCert:Ljava/security/cert/X509Certificate;

    .line 96
    iput-object p2, p0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->rootCert:Ljava/security/cert/X509Certificate;

    .line 97
    iput-object p3, p0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->url:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private static generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/ocsp/OCSPReq;
    .locals 9
    .parameter "issuerCert"
    .parameter "serialNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v4, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 113
    new-instance v1, Lorg/bouncycastle/ocsp/CertificateID;

    const-string/jumbo v4, "1.3.14.3.2.26"

    invoke-direct {v1, v4, p0, p1}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V

    .line 116
    .local v1, id:Lorg/bouncycastle/ocsp/CertificateID;
    new-instance v0, Lorg/bouncycastle/ocsp/OCSPReqGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;-><init>()V

    .line 118
    .local v0, gen:Lorg/bouncycastle/ocsp/OCSPReqGenerator;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->addRequest(Lorg/bouncycastle/ocsp/CertificateID;)V

    .line 121
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 122
    .local v2, oids:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/bouncycastle/asn1/DERObjectIdentifier;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 124
    .local v3, values:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/bouncycastle/asn1/x509/X509Extension;>;"
    sget-object v4, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extension;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->setRequestExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 129
    invoke-virtual {v0}, Lorg/bouncycastle/ocsp/OCSPReqGenerator;->generate()Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getEncoded()[B
    .locals 17

    .prologue
    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->rootCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->checkCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/ocsp/OCSPReq;

    move-result-object v9

    .line 139
    .local v9, request:Lorg/bouncycastle/ocsp/OCSPReq;
    invoke-virtual {v9}, Lorg/bouncycastle/ocsp/OCSPReq;->getEncoded()[B

    move-result-object v1

    .line 140
    .local v1, array:[B
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/OcspClientBouncyCastle;->url:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    .local v13, urlt:Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 142
    .local v3, con:Ljava/net/HttpURLConnection;
    const-string/jumbo v14, "Content-Type"

    const-string/jumbo v15, "application/ocsp-request"

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v14, "Accept"

    const-string/jumbo v15, "application/ocsp-response"

    invoke-virtual {v3, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 145
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 146
    .local v8, out:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v4, dataOut:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 149
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 150
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    const/4 v15, 0x2

    if-eq v14, v15, :cond_0

    .line 151
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "invalid.http.response.1"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #array:[B
    .end local v3           #con:Ljava/net/HttpURLConnection;
    .end local v4           #dataOut:Ljava/io/DataOutputStream;
    .end local v8           #out:Ljava/io/OutputStream;
    .end local v9           #request:Lorg/bouncycastle/ocsp/OCSPReq;
    .end local v13           #urlt:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 178
    .local v5, ex:Ljava/lang/Exception;
    new-instance v14, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v14, v5}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 154
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v1       #array:[B
    .restart local v3       #con:Ljava/net/HttpURLConnection;
    .restart local v4       #dataOut:Ljava/io/DataOutputStream;
    .restart local v8       #out:Ljava/io/OutputStream;
    .restart local v9       #request:Lorg/bouncycastle/ocsp/OCSPReq;
    .restart local v13       #urlt:Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    .line 155
    .local v6, in:Ljava/io/InputStream;
    new-instance v7, Lorg/bouncycastle/ocsp/OCSPResp;

    invoke-direct {v7, v6}, Lorg/bouncycastle/ocsp/OCSPResp;-><init>(Ljava/io/InputStream;)V

    .line 157
    .local v7, ocspResponse:Lorg/bouncycastle/ocsp/OCSPResp;
    invoke-virtual {v7}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v14

    if-eqz v14, :cond_1

    .line 158
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "invalid.status.1"

    invoke-virtual {v7}, Lorg/bouncycastle/ocsp/OCSPResp;->getStatus()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 159
    :cond_1
    invoke-virtual {v7}, Lorg/bouncycastle/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/ocsp/BasicOCSPResp;

    .line 160
    .local v2, basicResponse:Lorg/bouncycastle/ocsp/BasicOCSPResp;
    if-eqz v2, :cond_4

    .line 161
    invoke-virtual {v2}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/ocsp/SingleResp;

    move-result-object v11

    .line 162
    .local v11, responses:[Lorg/bouncycastle/ocsp/SingleResp;
    array-length v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 163
    const/4 v14, 0x0

    aget-object v10, v11, v14

    .line 164
    .local v10, resp:Lorg/bouncycastle/ocsp/SingleResp;
    invoke-virtual {v10}, Lorg/bouncycastle/ocsp/SingleResp;->getCertStatus()Ljava/lang/Object;

    move-result-object v12

    .line 165
    .local v12, status:Ljava/lang/Object;
    sget-object v14, Lorg/bouncycastle/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/ocsp/CertificateStatus;

    if-ne v12, v14, :cond_2

    .line 166
    invoke-virtual {v2}, Lorg/bouncycastle/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v14

    .line 180
    .end local v10           #resp:Lorg/bouncycastle/ocsp/SingleResp;
    .end local v11           #responses:[Lorg/bouncycastle/ocsp/SingleResp;
    .end local v12           #status:Ljava/lang/Object;
    :goto_0
    return-object v14

    .line 168
    .restart local v10       #resp:Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v11       #responses:[Lorg/bouncycastle/ocsp/SingleResp;
    .restart local v12       #status:Ljava/lang/Object;
    :cond_2
    instance-of v14, v12, Lorg/bouncycastle/ocsp/RevokedStatus;

    if-eqz v14, :cond_3

    .line 169
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "ocsp.status.is.revoked"

    invoke-static {v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 172
    :cond_3
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "ocsp.status.is.unknown"

    invoke-static {v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .end local v10           #resp:Lorg/bouncycastle/ocsp/SingleResp;
    .end local v11           #responses:[Lorg/bouncycastle/ocsp/SingleResp;
    .end local v12           #status:Ljava/lang/Object;
    :cond_4
    const/4 v14, 0x0

    goto :goto_0
.end method
