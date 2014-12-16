.class public final Lcom/sun/crypto/provider/PBEKeyFactory$PBEWithSHA1AndDESede;
.super Lcom/sun/crypto/provider/PBEKeyFactory;
.source "DashoA13*.."


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/crypto/provider/PBEKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PBEWithSHA1AndDESede"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "PBEWithSHA1AndDESede"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/crypto/provider/PBEKeyFactory;-><init>(Ljava/lang/String;Lcom/sun/crypto/provider/PBEKeyFactory$1;)V

    return-void
.end method
