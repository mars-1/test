.class public Lcom/itextpdf/text/pdf/PdfEncryption;
.super Ljava/lang/Object;
.source "PdfEncryption.java"


# static fields
.field public static final AES_128:I = 0x4

.field public static final STANDARD_ENCRYPTION_128:I = 0x3

.field public static final STANDARD_ENCRYPTION_40:I = 0x2

.field private static final metadataPad:[B

.field private static final pad:[B

.field private static final salt:[B

.field static seq:J


# instance fields
.field private arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

.field private cryptoMode:I

.field documentID:[B

.field private embeddedFilesOnly:Z

.field private encryptMetadata:Z

.field extra:[B

.field key:[B

.field private keyLength:I

.field keySize:I

.field md5:Ljava/security/MessageDigest;

.field mkey:[B

.field ownerKey:[B

.field permissions:I

.field protected publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

.field private revision:I

.field userKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 71
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    .line 79
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->salt:[B

    .line 82
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncryption;->metadataPad:[B

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x1
        0x28t
        0xbft
        0x4et
        0x5et
        0x4et
        0x75t
        0x8at
        0x41t
        0x64t
        0x0t
        0x4et
        0x56t
        0xfft
        0xfat
        0x1t
        0x8t
        0x2et
        0x2et
        0x0t
        0xb6t
        0xd0t
        0x68t
        0x3et
        0x80t
        0x2ft
        0xct
        0xa9t
        0xfet
        0x64t
        0x53t
        0x69t
        0x7at
    .end array-data

    .line 79
    :array_1
    .array-data 0x1
        0x73t
        0x41t
        0x6ct
        0x54t
    .end array-data

    .line 82
    :array_2
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    .line 101
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 104
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 117
    new-instance v1, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    .line 134
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V
    .locals 1
    .parameter "enc"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    .line 143
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 144
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 145
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    .line 146
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 147
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 149
    :cond_0
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    .line 150
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 151
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 152
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 153
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    .line 154
    return-void
.end method

.method private computeOwnerKey([B[B)[B
    .locals 10
    .parameter "userPad"
    .parameter "ownerPad"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 222
    new-array v5, v9, [B

    .line 223
    .local v5, ownerKey:[B
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 224
    .local v0, digest:[B
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 225
    :cond_0
    iget v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    div-int/lit8 v6, v6, 0x8

    new-array v4, v6, [B

    .line 227
    .local v4, mkey:[B
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    const/16 v6, 0x32

    if-ge v3, v6, :cond_1

    .line 228
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    array-length v7, v4

    invoke-virtual {v6, v0, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 229
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    array-length v7, v4

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {p1, v8, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x14

    if-ge v1, v6, :cond_4

    .line 233
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 234
    aget-byte v6, v0, v2

    xor-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 236
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #mkey:[B
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    const/4 v7, 0x5

    invoke-virtual {v6, v0, v8, v7}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 240
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    invoke-virtual {v6, p1, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 242
    :cond_4
    return-object v5
.end method

.method public static createDocumentId()[B
    .locals 12

    .prologue
    .line 331
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 336
    .local v5, time:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 337
    .local v2, mem:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    sput-wide v10, Lcom/itextpdf/text/pdf/PdfEncryption;->seq:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    return-object v7

    .line 332
    .end local v1           #md5:Ljava/security/MessageDigest;
    .end local v2           #mem:J
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #time:J
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v7, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public static createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "id"

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/16 v3, 0x10

    .line 398
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v2, 0x5a

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>(I)V

    .line 399
    .local v0, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 400
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 401
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 403
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object p0

    .line 404
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 405
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->appendHex(B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 407
    new-instance v2, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    return-object v2
.end method

.method private padPassword([B)[B
    .locals 5
    .parameter "userPassword"

    .prologue
    const/16 v2, 0x20

    const/4 v4, 0x0

    .line 205
    new-array v0, v2, [B

    .line 206
    .local v0, userPad:[B
    if-nez p1, :cond_1

    .line 207
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    array-length v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 212
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    array-length v2, p1

    array-length v3, p1

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setupByOwnerPad([B[B[B[BI)V
    .locals 1
    .parameter "documentID"
    .parameter "ownerPad"
    .parameter "userKey"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 367
    invoke-direct {p0, p4, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v0

    .line 370
    .local v0, userPad:[B
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupGlobalEncryptionKey([B[B[BI)V

    .line 372
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupUserKey()V

    .line 373
    return-void
.end method

.method private setupByUserPad([B[B[BI)V
    .locals 0
    .parameter "documentID"
    .parameter "userPad"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupGlobalEncryptionKey([B[B[BI)V

    .line 354
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupUserKey()V

    .line 355
    return-void
.end method

.method private setupGlobalEncryptionKey([B[B[BI)V
    .locals 8
    .parameter "documentID"
    .parameter "userPad"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 251
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 252
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 253
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    .line 255
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 258
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 259
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 260
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 262
    new-array v1, v6, [B

    .line 263
    .local v1, ext:[B
    int-to-byte v3, p4

    aput-byte v3, v1, v5

    .line 264
    const/4 v3, 0x1

    shr-int/lit8 v4, p4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 265
    const/4 v3, 0x2

    shr-int/lit8 v4, p4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 266
    shr-int/lit8 v3, p4, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 267
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 270
    :cond_0
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncryption;->metadataPad:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v3, v3

    new-array v0, v3, [B

    .line 274
    .local v0, digest:[B
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-eq v3, v7, :cond_2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-ne v3, v6, :cond_3

    .line 278
    :cond_2
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    const/16 v3, 0x32

    if-ge v2, v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v2           #k:I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-void
.end method

.method private setupUserKey()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 291
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 293
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 294
    .local v0, digest:[B
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-static {v0, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    const/16 v3, 0x10

    .local v3, k:I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 296
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    aput-byte v6, v4, v3

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x14

    if-ge v1, v4, :cond_4

    .line 298
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    aget-byte v4, v4, v2

    xor-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v5, v5

    invoke-virtual {v4, v0, v6, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 301
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([BII)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    .end local v0           #digest:[B
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 305
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->arcfour:Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    .line 307
    :cond_4
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/security/cert/Certificate;I)V
    .locals 2
    .parameter "cert"
    .parameter "permission"

    .prologue
    .line 576
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 577
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;-><init>(Ljava/security/cert/Certificate;I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->addRecipient(Lcom/itextpdf/text/pdf/PdfPublicKeyRecipient;)V

    .line 579
    return-void
.end method

.method public calculateStreamSize(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 537
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 538
    const v0, 0x7ffffff0

    and-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x20

    .line 540
    .end local p1
    :cond_0
    return p1
.end method

.method public computeUserPassword([B)[B
    .locals 8
    .parameter "ownerPassword"

    .prologue
    const/4 v7, 0x0

    .line 582
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v3

    .line 583
    .local v3, userPad:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 584
    const/4 v2, 0x1

    .line 585
    .local v2, match:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v5, v3

    sub-int/2addr v5, v0

    if-ge v1, v5, :cond_0

    .line 586
    add-int v5, v0, v1

    aget-byte v5, v3, v5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfEncryption;->pad:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_1

    .line 587
    const/4 v2, 0x0

    .line 591
    :cond_0
    if-nez v2, :cond_2

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_2
    new-array v4, v0, [B

    .line 593
    .local v4, userPassword:[B
    invoke-static {v3, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    .end local v1           #j:I
    .end local v2           #match:Z
    .end local v4           #userPassword:[B
    :goto_2
    return-object v4

    :cond_3
    move-object v4, v3

    goto :goto_2
.end method

.method public decryptByteArray([B)[B
    .locals 6
    .parameter "b"

    .prologue
    .line 561
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    .local v1, ba:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getDecryptor()Lcom/itextpdf/text/pdf/StandardDecryption;

    move-result-object v2

    .line 563
    .local v2, dec:Lcom/itextpdf/text/pdf/StandardDecryption;
    const/4 v4, 0x0

    array-length v5, p1

    invoke-virtual {v2, p1, v4, v5}, Lcom/itextpdf/text/pdf/StandardDecryption;->update([BII)[B

    move-result-object v0

    .line 564
    .local v0, b2:[B
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 566
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/StandardDecryption;->finish()[B

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 569
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 570
    .end local v0           #b2:[B
    .end local v1           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dec:Lcom/itextpdf/text/pdf/StandardDecryption;
    :catch_0
    move-exception v3

    .line 571
    .local v3, ex:Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public encryptByteArray([B)[B
    .locals 4
    .parameter "b"

    .prologue
    .line 545
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 546
    .local v0, ba:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    move-result-object v2

    .line 547
    .local v2, os2:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->write([B)V

    .line 548
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finish()V

    .line 549
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 550
    .end local v0           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v2           #os2:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :catch_0
    move-exception v1

    .line 551
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getCryptoMode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->cryptoMode:I

    return v0
.end method

.method public getDecryptor()Lcom/itextpdf/text/pdf/StandardDecryption;
    .locals 5

    .prologue
    .line 556
    new-instance v0, Lcom/itextpdf/text/pdf/StandardDecryption;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/StandardDecryption;-><init>([BIII)V

    return-object v0
.end method

.method public getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 12

    .prologue
    .line 411
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 413
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getRecipientsSize()I

    move-result v9

    if-lez v9, :cond_7

    .line 414
    const/4 v7, 0x0

    .line 416
    .local v7, recipients:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PUBSEC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 417
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 420
    :try_start_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getEncodedRecipients()Lcom/itextpdf/text/pdf/PdfArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 425
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 426
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 427
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S4:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 428
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 461
    :goto_0
    const/4 v5, 0x0

    .line 462
    .local v5, md:Ljava/security/MessageDigest;
    const/4 v2, 0x0

    .line 465
    .local v2, encodedRecipient:[B
    :try_start_1
    const-string/jumbo v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 466
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getSeed()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 467
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getRecipientsSize()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 468
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->publicKeyHandler:Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfPublicKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v2

    .line 469
    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    .end local v2           #encodedRecipient:[B
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 422
    .local v3, f:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v9, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 429
    .end local v3           #f:Ljava/lang/Exception;
    :cond_0
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-eqz v9, :cond_1

    .line 430
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 431
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 432
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S4:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 433
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 435
    :cond_1
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 436
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 437
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ADBE_PKCS7_S5:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 439
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 440
    .local v8, stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RECIPIENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 441
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_2

    .line 442
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 444
    :cond_2
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 445
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 448
    :goto_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 449
    .local v0, cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 450
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    if-eqz v9, :cond_4

    .line 451
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EFF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 452
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 453
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 447
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 456
    .restart local v0       #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 457
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTCRYPTFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 471
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v2       #encodedRecipient:[B
    .restart local v4       #i:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    :cond_5
    :try_start_2
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_6

    .line 472
    const/4 v9, 0x4

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    invoke-virtual {v5, v9}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    :cond_6
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 480
    .local v6, mdResult:[B
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    invoke-virtual {p0, v6, v9}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByEncryptionKey([BI)V

    .line 525
    .end local v2           #encodedRecipient:[B
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #mdResult:[B
    .end local v7           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :goto_3
    return-object v1

    .line 474
    .restart local v2       #encodedRecipient:[B
    .restart local v5       #md:Ljava/security/MessageDigest;
    .restart local v7       #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_1
    move-exception v3

    .line 475
    .restart local v3       #f:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v9, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 482
    .end local v2           #encodedRecipient:[B
    .end local v3           #f:Ljava/lang/Exception;
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v7           #recipients:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_7
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STANDARD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 483
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 485
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->userKey:[B

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([B)[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 487
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->permissions:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 488
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v11, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 490
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 491
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 492
    :cond_8
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-eqz v9, :cond_9

    .line 493
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 494
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 497
    :cond_9
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    if-nez v9, :cond_a

    .line 498
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCRYPTMETADATA:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 499
    :cond_a
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 500
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 501
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 502
    new-instance v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 503
    .restart local v8       #stdcf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 504
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    if-eqz v9, :cond_b

    .line 505
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->EFOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 506
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EFF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 507
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 508
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 515
    :goto_4
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_c

    .line 516
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AESV2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 519
    :goto_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 520
    .restart local v0       #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 521
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 511
    .end local v0           #cf:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_b
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHEVENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->DOCOPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 512
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STRF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 513
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->STMF:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_4

    .line 518
    :cond_c
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CFM:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->V2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_5

    .line 472
    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    .locals 6
    .parameter "os"

    .prologue
    .line 533
    new-instance v0, Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;-><init>(Ljava/io/OutputStream;[BIII)V

    return-object v0
.end method

.method public getFileID()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public isEmbeddedFilesOnly()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    return v0
.end method

.method public setCryptoMode(II)V
    .locals 4
    .parameter "mode"
    .parameter "kl"

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->cryptoMode:I

    .line 158
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 159
    and-int/lit8 v0, p1, 0x18

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 160
    and-int/lit8 p1, p1, 0x7

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no.valid.encryption.mode"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v0, v2

    .line 159
    goto :goto_1

    .line 163
    :pswitch_0
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptMetadata:Z

    .line 164
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 165
    const/16 v0, 0x28

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    .line 183
    :goto_2
    return-void

    .line 169
    :pswitch_1
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->embeddedFilesOnly:Z

    .line 170
    if-lez p2, :cond_2

    .line 171
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 174
    :goto_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    goto :goto_2

    .line 173
    :cond_2
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    goto :goto_3

    .line 177
    :pswitch_2
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keyLength:I

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    goto :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHashKey(II)V
    .locals 5
    .parameter "number"
    .parameter "generation"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x4

    .line 381
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 382
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 383
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 384
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 385
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    const/4 v1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 386
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 387
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 388
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->extra:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 389
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    if-ne v0, v3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncryption;->salt:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->key:[B

    .line 392
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    .line 393
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    if-le v0, v4, :cond_1

    .line 394
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->keySize:I

    .line 395
    :cond_1
    return-void
.end method

.method public setupAllKeys([B[BI)V
    .locals 4
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"

    .prologue
    .line 313
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->md5:Ljava/security/MessageDigest;

    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 315
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->revision:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_2
    const/16 v2, -0xf40

    :goto_0
    or-int/2addr p3, v2

    .line 317
    and-int/lit8 p3, p3, -0x4

    .line 320
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v1

    .line 321
    .local v1, userPad:[B
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v0

    .line 323
    .local v0, ownerPad:[B
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->computeOwnerKey([B[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    .line 324
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    .line 325
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->documentID:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->ownerKey:[B

    invoke-direct {p0, v2, v1, v3, p3}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPad([B[B[BI)V

    .line 326
    return-void

    .line 315
    .end local v0           #ownerPad:[B
    .end local v1           #userPad:[B
    :cond_3
    const/16 v2, -0x40

    goto :goto_0
.end method

.method public setupByEncryptionKey([BI)V
    .locals 3
    .parameter "key"
    .parameter "keylength"

    .prologue
    const/4 v2, 0x0

    .line 376
    div-int/lit8 v0, p2, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    .line 377
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfEncryption;->mkey:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    return-void
.end method

.method public setupByOwnerPassword([B[B[B[BI)V
    .locals 6
    .parameter "documentID"
    .parameter "ownerPassword"
    .parameter "userKey"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 361
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByOwnerPad([B[B[B[BI)V

    .line 363
    return-void
.end method

.method public setupByUserPassword([B[B[BI)V
    .locals 1
    .parameter "documentID"
    .parameter "userPassword"
    .parameter "ownerKey"
    .parameter "permissions"

    .prologue
    .line 345
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/PdfEncryption;->padPassword([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupByUserPad([B[B[BI)V

    .line 347
    return-void
.end method
