.class final Lcom/sun/crypto/provider/ai;
.super Ljavax/crypto/SealedObject;
.source "DashoA13*.."


# static fields
.field static final serialVersionUID:J = -0x61dbf83baa9f46d4L


# direct methods
.method constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/crypto/SealedObject;-><init>(Ljavax/crypto/SealedObject;)V

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;

    invoke-direct {v0, p0}, Lcom/sun/crypto/provider/SealedObjectForKeyProtector;-><init>(Ljavax/crypto/SealedObject;)V

    return-object v0
.end method
