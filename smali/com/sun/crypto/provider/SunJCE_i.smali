.class final Lcom/sun/crypto/provider/SunJCE_i;
.super Ljava/lang/Object;
.source "DashoA13*.."

# interfaces
.implements Lcom/sun/crypto/provider/SunJCE_j;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/crypto/provider/SunJCE_i;->a:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget v0, p0, Lcom/sun/crypto/provider/SunJCE_i;->a:I

    iget v1, p0, Lcom/sun/crypto/provider/SunJCE_i;->a:I

    rem-int v1, p1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string/jumbo v1, "Buffer too small to hold padding"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit16 v0, p3, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, v0, p2

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b([BII)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-byte v3, p1, v1

    and-int/lit16 v1, v3, 0xff

    const/4 v4, 0x1

    if-lt v1, v4, :cond_1

    iget v4, p0, Lcom/sun/crypto/provider/SunJCE_i;->a:I

    if-gt v1, v4, :cond_1

    add-int v1, p2, p3

    and-int/lit16 v4, v3, 0xff

    sub-int/2addr v1, v4

    if-lt v1, p2, :cond_1

    :goto_1
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_3

    add-int v4, v1, v2

    aget-byte v4, p1, v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
