.class abstract Lcom/sun/crypto/provider/SunJCE_e;
.super Ljava/lang/Object;
.source "DashoA13*.."


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract a(ZLjava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method abstract a([BI[BI)V
.end method

.method abstract b([BI[BI)V
.end method
