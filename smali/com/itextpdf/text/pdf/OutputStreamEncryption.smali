.class public Lcom/itextpdf/text/pdf/OutputStreamEncryption;
.super Ljava/io/OutputStream;
.source "OutputStreamEncryption.java"


# static fields
.field private static final AES_128:I = 0x4


# instance fields
.field private aes:Z

.field protected arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

.field protected cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

.field private finished:Z

.field protected out:Ljava/io/OutputStream;

.field private sb:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[BI)V
    .locals 6
    .parameter "out"
    .parameter "key"
    .parameter "revision"

    .prologue
    .line 84
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;[BIII)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[BIII)V
    .locals 6
    .parameter "out"
    .parameter "key"
    .parameter "off"
    .parameter "len"
    .parameter "revision"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 57
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->sb:[B

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    .line 66
    const/4 v5, 0x4

    if-ne p5, v5, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->aes:Z

    .line 67
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->aes:Z

    if-eqz v3, :cond_1

    .line 68
    invoke-static {}, Lcom/itextpdf/text/pdf/crypto/IVGenerator;->getIV()[B

    move-result-object v1

    .line 69
    .local v1, iv:[B
    new-array v2, p4, [B

    .line 70
    .local v2, nkey:[B
    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    new-instance v3, Lcom/itextpdf/text/pdf/crypto/AESCipher;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Lcom/itextpdf/text/pdf/crypto/AESCipher;-><init>(Z[B[B)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    .line 72
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->write([B)V

    .line 81
    .end local v1           #iv:[B
    .end local v2           #nkey:[B
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 66
    goto :goto_0

    .line 75
    :cond_1
    new-instance v3, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    .line 76
    iget-object v3, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v3, p2, p3, p4}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finish()V

    .line 99
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 100
    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finished:Z

    if-nez v2, :cond_0

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finished:Z

    .line 202
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->aes:Z

    if-eqz v2, :cond_0

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/crypto/AESCipher;->doFinal()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 209
    .local v0, b:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 212
    .end local v0           #b:[B
    :cond_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, ex:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 116
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->sb:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->sb:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->write([BII)V

    .line 150
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->write([BII)V

    .line 130
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->aes:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/crypto/AESCipher;->update([BII)[B

    move-result-object v4

    .line 183
    .local v4, b2:[B
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    array-length v1, v4

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 188
    .end local v4           #b2:[B
    :cond_2
    const/16 v0, 0x1060

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v4, v0, [B

    .line 189
    .restart local v4       #b2:[B
    :goto_1
    if-lez p3, :cond_0

    .line 190
    array-length v0, v4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 191
    .local v3, sz:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    .line 192
    iget-object v0, p0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    sub-int/2addr p3, v3

    .line 194
    add-int/2addr p2, v3

    .line 195
    goto :goto_1
.end method
