.class final Lcom/sun/crypto/provider/SunJCE_b$1;
.super Ljava/lang/Object;
.source "DashoA13*.."

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/crypto/provider/SunJCE_b;->a(Ljava/net/URL;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URL;

.field final synthetic b:Lcom/sun/crypto/provider/SunJCE_b;


# direct methods
.method constructor <init>(Lcom/sun/crypto/provider/SunJCE_b;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/crypto/provider/SunJCE_b$1;->b:Lcom/sun/crypto/provider/SunJCE_b;

    iput-object p2, p0, Lcom/sun/crypto/provider/SunJCE_b$1;->a:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/crypto/provider/SunJCE_b$1;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/JarURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v0

    return-object v0
.end method
