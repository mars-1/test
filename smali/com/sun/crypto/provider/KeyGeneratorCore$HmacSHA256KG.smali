.class public final Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "DashoA13*.."


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/crypto/provider/KeyGeneratorCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA256KG"
.end annotation


# instance fields
.field private final a:Lcom/sun/crypto/provider/KeyGeneratorCore;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/KeyGeneratorCore;

    const-string/jumbo v1, "HmacSHA256"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/KeyGeneratorCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(ILjava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/KeyGeneratorCore$HmacSHA256KG;->a:Lcom/sun/crypto/provider/KeyGeneratorCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/KeyGeneratorCore;->a(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method
