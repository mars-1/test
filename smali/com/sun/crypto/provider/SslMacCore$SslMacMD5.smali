.class public final Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;
.super Ljavax/crypto/MacSpi;
.source "DashoA13*.."


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/crypto/provider/SslMacCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SslMacMD5"
.end annotation


# static fields
.field static final md5Pad1:[B

.field static final md5Pad2:[B


# instance fields
.field private final core:Lcom/sun/crypto/provider/SslMacCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x30

    const/16 v0, 0x36

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->md5Pad1:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Lcom/sun/crypto/provider/TlsPrfGenerator;->genPad(BI)[B

    move-result-object v0

    sput-object v0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->md5Pad2:[B

    const-class v0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;

    nop

    invoke-static {v0}, Lcom/sun/crypto/provider/SunJCE;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    new-instance v0, Lcom/sun/crypto/provider/SslMacCore;

    const-string/jumbo v1, "MD5"

    sget-object v2, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->md5Pad1:[B

    sget-object v3, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->md5Pad2:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/crypto/provider/SslMacCore;-><init>(Ljava/lang/String;[B[B)V

    iput-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->getDigestLength()I

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

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1, p2}, Lcom/sun/crypto/provider/SslMacCore;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0}, Lcom/sun/crypto/provider/SslMacCore;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SslMacCore;->update(B)V

    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1}, Lcom/sun/crypto/provider/SslMacCore;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/crypto/provider/SslMacCore$SslMacMD5;->core:Lcom/sun/crypto/provider/SslMacCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/crypto/provider/SslMacCore;->update([BII)V

    return-void
.end method
