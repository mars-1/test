.class public final Lcom/sun/crypto/provider/RC2Parameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "DashoA13*.."


# static fields
.field private static final a:[I


# instance fields
.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/crypto/provider/RC2Parameters;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0xbdt 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x93t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0xf7t 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x9ft 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xfet 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8dt 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0x99t 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0xe4t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x8bt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0xd6t 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    iget-object v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :goto_0
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    goto :goto_0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/crypto/provider/RC2Parameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    nop

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    if-nez v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iget v1, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    invoke-direct {v0, v1}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iget v1, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    iget-object v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "Inappropriate parameter specification"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "Inappropriate parameter specification"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v0

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "RC2 effective key size must be between 1 and 1024 bits"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/sun/crypto/provider/RC2Parameters;->a:[I

    iget v1, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    return-void

    :cond_4
    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    goto :goto_0
.end method

.method protected engineInit([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v2

    iput v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RC2 parameter parsing error: version number out of legal range (0-1024): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    const/16 v3, 0xff

    if-le v2, v3, :cond_4

    iget v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    :cond_2
    :goto_0
    iget-object v0, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    :goto_1
    iget-object v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    array-length v0, v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RC2 parameter parsing error: iv length must be 8 bits, actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    sget-object v2, Lcom/sun/crypto/provider/RC2Parameters;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    sget-object v3, Lcom/sun/crypto/provider/RC2Parameters;->a:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_3

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    iput v0, p0, Lcom/sun/crypto/provider/RC2Parameters;->d:I

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "RC2 parameter parsing error: extra data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/crypto/provider/RC2Parameters;->engineInit([B)V

    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    iv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/crypto/provider/RC2Parameters;->b:[B

    invoke-virtual {v1, v4}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "version:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sun/crypto/provider/RC2Parameters;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
