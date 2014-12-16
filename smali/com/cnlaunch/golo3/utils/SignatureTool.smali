.class public Lcom/cnlaunch/golo3/utils/SignatureTool;
.super Ljava/lang/Object;
.source "SignatureTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 5
    .parameter "key"

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 41
    .local v1, in:[B
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 42
    .local v2, out:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 45
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "DES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 43
    :cond_1
    aget-byte v3, v1, v0

    aput-byte v3, v2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "keyString"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v3, Lcom/sun/crypto/provider/SunJCE;

    invoke-direct {v3}, Lcom/sun/crypto/provider/SunJCE;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 32
    invoke-static {p0}, Lcom/cnlaunch/golo3/utils/SignatureTool;->createKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    .line 33
    .local v1, key:Ljava/security/Key;
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 34
    .local v0, encrypt:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 35
    invoke-static {p1}, Lcom/cnlaunch/golo3/utils/SignatureTool;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 36
    .local v2, source:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static encryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "keyString"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v3, Lcom/sun/crypto/provider/SunJCE;

    invoke-direct {v3}, Lcom/sun/crypto/provider/SunJCE;-><init>()V

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 23
    invoke-static {p0}, Lcom/cnlaunch/golo3/utils/SignatureTool;->createKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    .line 24
    .local v1, key:Ljava/security/Key;
    const-string/jumbo v3, "DES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 25
    .local v0, encrypt:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 27
    .local v2, source:[B
    invoke-static {v2}, Lcom/cnlaunch/golo3/utils/SignatureTool;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static signByMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 16
    .local v0, md5:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 18
    .local v1, result:[B
    invoke-static {v1}, Lcom/cnlaunch/golo3/utils/SignatureTool;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "source"

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 62
    .local v1, in:[B
    array-length v4, v1

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [B

    .line 63
    .local v2, out:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_0

    .line 67
    return-object v2

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, Ljava/lang/String;-><init>([BII)V

    .line 65
    .local v3, temp:Ljava/lang/String;
    div-int/lit8 v4, v0, 0x2

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 63
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 8
    .parameter "source"

    .prologue
    .line 49
    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 51
    .local v1, hexChars:[C
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [C

    .line 52
    .local v2, hexResult:[C
    const/4 v3, 0x0

    .line 53
    .local v3, index:I
    array-length v6, p0

    const/4 v5, 0x0

    move v4, v3

    .end local v3           #index:I
    .local v4, index:I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 57
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 53
    :cond_0
    aget-byte v0, p0, v5

    .line 54
    .local v0, b:B
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v1, v7

    aput-char v7, v2, v4

    .line 55
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    and-int/lit8 v7, v0, 0xf

    aget-char v7, v1, v7

    aput-char v7, v2, v3

    .line 53
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method
