.class public final Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;
.super Ljavax/crypto/CipherSpi;
.source "DashoA13*.."


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/crypto/provider/PKCS12PBECipherCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PBEWithSHA1AndDESede"
.end annotation


# instance fields
.field private final a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    const-string/jumbo v1, "DESede"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(Ljava/security/Key;)I

    move-result v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->c()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(ILjava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/PKCS12PBECipherCore$PBEWithSHA1AndDESede;->a:Lcom/sun/crypto/provider/PKCS12PBECipherCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/PKCS12PBECipherCore;->b(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
