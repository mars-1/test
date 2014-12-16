.class public final Lcom/sun/crypto/provider/HmacCore$HmacSHA384;
.super Ljavax/crypto/MacSpi;
.source "DashoA13*.."

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/crypto/provider/HmacCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacSHA384"
.end annotation


# instance fields
.field private final a:Lcom/sun/crypto/provider/HmacCore;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/sun/crypto/provider/HmacCore;

    const-string/jumbo v1, "SHA-384"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lcom/sun/crypto/provider/HmacCore;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method

.method private constructor <init>(Lcom/sun/crypto/provider/HmacCore$HmacSHA384;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    iget-object v0, p1, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/crypto/provider/HmacCore;

    iput-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;

    invoke-direct {v0, p0}, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;-><init>(Lcom/sun/crypto/provider/HmacCore$HmacSHA384;)V

    return-object v0
.end method

.method protected engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->b()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->a()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/HmacCore;->c()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(B)V

    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/HmacCore;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/HmacCore$HmacSHA384;->a:Lcom/sun/crypto/provider/HmacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/HmacCore;->a([BII)V

    return-void
.end method
