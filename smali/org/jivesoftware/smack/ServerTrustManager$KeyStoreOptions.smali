.class Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
.super Ljava/lang/Object;
.source "ServerTrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ServerTrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStoreOptions"
.end annotation


# instance fields
.field private final password:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "path"
    .parameter "password"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-ne p0, p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 320
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 322
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 323
    check-cast v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;

    .line 324
    .local v0, other:Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 325
    iget-object v3, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 326
    goto :goto_0

    .line 327
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 328
    goto :goto_0

    .line 329
    :cond_5
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 330
    iget-object v3, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 331
    goto :goto_0

    .line 332
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 333
    goto :goto_0

    .line 334
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 335
    iget-object v3, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 336
    goto :goto_0

    .line 337
    :cond_8
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 338
    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 306
    const/16 v0, 0x1f

    .line 307
    .local v0, prime:I
    const/4 v1, 0x1

    .line 309
    .local v1, result:I
    iget-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    .line 308
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 310
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 311
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 312
    return v1

    .line 309
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 310
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 311
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/ServerTrustManager$KeyStoreOptions;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method
