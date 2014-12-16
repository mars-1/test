.class public Lcom/itextpdf/text/pdf/StandardDecryption;
.super Ljava/lang/Object;
.source "StandardDecryption.java"


# static fields
.field private static final AES_128:I = 0x4


# instance fields
.field private aes:Z

.field protected arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

.field protected cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

.field private initiated:Z

.field private iv:[B

.field private ivptr:I

.field private key:[B


# direct methods
.method public constructor <init>([BIII)V
    .locals 2
    .parameter "key"
    .parameter "off"
    .parameter "len"
    .parameter "revision"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->iv:[B

    .line 61
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->aes:Z

    .line 62
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->aes:Z

    if-eqz v0, :cond_1

    .line 63
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->key:[B

    .line 64
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->key:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    .line 68
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    goto :goto_1
.end method


# virtual methods
.method public finish()[B
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->aes:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/crypto/AESCipher;->doFinal()[B

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update([BII)[B
    .locals 7
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->aes:Z

    if-eqz v0, :cond_2

    .line 74
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->initiated:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/crypto/AESCipher;->update([BII)[B

    move-result-object v4

    .line 94
    :goto_0
    return-object v4

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->iv:[B

    array-length v0, v0

    iget v1, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->ivptr:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 78
    .local v6, left:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->iv:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->ivptr:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    add-int/2addr p2, v6

    .line 80
    sub-int/2addr p3, v6

    .line 81
    iget v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->ivptr:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->ivptr:I

    .line 82
    iget v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->ivptr:I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->iv:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 83
    new-instance v0, Lcom/itextpdf/text/pdf/crypto/AESCipher;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->key:[B

    iget-object v2, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->iv:[B

    invoke-direct {v0, v5, v1, v2}, Lcom/itextpdf/text/pdf/crypto/AESCipher;-><init>(Z[B[B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->initiated:Z

    .line 85
    if-lez p3, :cond_1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->cipher:Lcom/itextpdf/text/pdf/crypto/AESCipher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/crypto/AESCipher;->update([BII)[B

    move-result-object v4

    goto :goto_0

    .line 88
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 92
    .end local v6           #left:I
    :cond_2
    new-array v4, p3, [B

    .line 93
    .local v4, b2:[B
    iget-object v0, p0, Lcom/itextpdf/text/pdf/StandardDecryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII[BI)V

    goto :goto_0
.end method
