.class public Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;
.super Ljava/lang/Object;
.source "TSAClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/TSAClient;


# instance fields
.field protected tokSzEstimate:I

.field protected tsaPassword:Ljava/lang/String;

.field protected tsaURL:Ljava/lang/String;

.field protected tsaUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 81
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 91
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "username"
    .parameter "password"
    .parameter "tokSzEstimate"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tokSzEstimate:I

    .line 109
    return-void
.end method


# virtual methods
.method protected getTSAResponse([B)[B
    .locals 14
    .parameter "requestBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v8, Ljava/net/URL;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 193
    .local v7, tsaConnection:Ljava/net/URLConnection;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 194
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 195
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 196
    const-string/jumbo v10, "Content-Type"

    const-string/jumbo v11, "application/timestamp-query"

    invoke-virtual {v7, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v10, "Content-Transfer-Encoding"

    const-string/jumbo v11, "binary"

    invoke-virtual {v7, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, userPassword:Ljava/lang/String;
    const-string/jumbo v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Basic "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/itextpdf/text/pdf/codec/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v9           #userPassword:Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 206
    .local v5, out:Ljava/io/OutputStream;
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 210
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 211
    .local v4, inp:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 213
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 214
    .local v2, bytesRead:I
    :goto_0
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v4, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 215
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 219
    .local v6, respBytes:[B
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, encoding:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string/jumbo v10, "base64"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 221
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10}, Lcom/itextpdf/text/pdf/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 223
    :cond_2
    return-object v6
.end method

.method public getTimeStampToken(Lcom/itextpdf/text/pdf/PdfPKCS7;[B)[B
    .locals 1
    .parameter "caller"
    .parameter "imprint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->getTimeStampToken([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getTimeStampToken([B)[B
    .locals 21
    .parameter "imprint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v9, 0x0

    .line 140
    .local v9, respBytes:[B
    :try_start_0
    new-instance v15, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v15}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    .line 141
    .local v15, tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 144
    .local v6, nonce:Ljava/math/BigInteger;
    sget-object v17, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1, v6}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v7

    .line 145
    .local v7, request:Lorg/bouncycastle/tsp/TimeStampRequest;
    invoke-virtual {v7}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v8

    .line 148
    .local v8, requestBytes:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->getTSAResponse([B)[B

    move-result-object v9

    .line 151
    new-instance v10, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v10, v9}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 154
    .local v10, response:Lorg/bouncycastle/tsp/TimeStampResponse;
    invoke-virtual {v10, v7}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 155
    invoke-virtual {v10}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object v4

    .line 156
    .local v4, failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    if-nez v4, :cond_0

    const/16 v16, 0x0

    .line 157
    .local v16, value:I
    :goto_0
    if-eqz v16, :cond_1

    .line 159
    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "invalid.tsa.1.response.code.2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    .end local v4           #failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .end local v6           #nonce:Ljava/math/BigInteger;
    .end local v7           #request:Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v8           #requestBytes:[B
    .end local v10           #response:Lorg/bouncycastle/tsp/TimeStampResponse;
    .end local v15           #tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .end local v16           #value:I
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/Exception;
    throw v2

    .line 156
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .restart local v6       #nonce:Ljava/math/BigInteger;
    .restart local v7       #request:Lorg/bouncycastle/tsp/TimeStampRequest;
    .restart local v8       #requestBytes:[B
    .restart local v10       #response:Lorg/bouncycastle/tsp/TimeStampResponse;
    .restart local v15       #tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v16

    goto :goto_0

    .line 165
    .restart local v16       #value:I
    :cond_1
    invoke-virtual {v10}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v14

    .line 166
    .local v14, tsToken:Lorg/bouncycastle/tsp/TimeStampToken;
    if-nez v14, :cond_2

    .line 167
    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "tsa.1.failed.to.return.time.stamp.token.2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v10}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .end local v4           #failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .end local v6           #nonce:Ljava/math/BigInteger;
    .end local v7           #request:Lorg/bouncycastle/tsp/TimeStampRequest;
    .end local v8           #requestBytes:[B
    .end local v10           #response:Lorg/bouncycastle/tsp/TimeStampResponse;
    .end local v14           #tsToken:Lorg/bouncycastle/tsp/TimeStampToken;
    .end local v15           #tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .end local v16           #value:I
    :catch_1
    move-exception v13

    .line 179
    .local v13, t:Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "failed.to.get.tsa.response.from.1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 169
    .end local v13           #t:Ljava/lang/Throwable;
    .restart local v4       #failure:Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .restart local v6       #nonce:Ljava/math/BigInteger;
    .restart local v7       #request:Lorg/bouncycastle/tsp/TimeStampRequest;
    .restart local v8       #requestBytes:[B
    .restart local v10       #response:Lorg/bouncycastle/tsp/TimeStampResponse;
    .restart local v14       #tsToken:Lorg/bouncycastle/tsp/TimeStampToken;
    .restart local v15       #tsqGenerator:Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    .restart local v16       #value:I
    :cond_2
    :try_start_2
    invoke-virtual {v14}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v5

    .line 170
    .local v5, info:Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v14}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v3

    .line 171
    .local v3, encoded:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 174
    .local v11, stop:J
    array-length v0, v3

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tokSzEstimate:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    return-object v3
.end method

.method public getTokenSizeEstimate()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/itextpdf/text/pdf/TSAClientBouncyCastle;->tokSzEstimate:I

    return v0
.end method
