.class public Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "content"
    .parameter "sign"
    .parameter "publicKey"

    .prologue
    .line 80
    :try_start_0
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 81
    .local v3, keyFactory:Ljava/security/KeyFactory;
    invoke-static {p2}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    .local v2, encodedKey:[B
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 86
    .local v4, pubKey:Ljava/security/PublicKey;
    const-string/jumbo v6, "SHA1WithRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 88
    .local v5, signature:Ljava/security/Signature;
    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 89
    const-string/jumbo v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 91
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 98
    .end local v2           #encodedKey:[B
    .end local v3           #keyFactory:Ljava/security/KeyFactory;
    .end local v4           #pubKey:Ljava/security/PublicKey;
    .end local v5           #signature:Ljava/security/Signature;
    :goto_0
    return v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"
    .parameter "privateKey"

    .prologue
    .line 55
    const-string/jumbo v0, "utf-8"

    .line 57
    .local v0, charset:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 58
    invoke-static {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 57
    invoke-direct {v4, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 59
    .local v4, priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 60
    .local v2, keyf:Ljava/security/KeyFactory;
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 63
    .local v3, priKey:Ljava/security/PrivateKey;
    const-string/jumbo v7, "SHA1WithRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 65
    .local v5, signature:Ljava/security/Signature;
    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    .line 68
    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    .line 70
    .local v6, signed:[B
    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 75
    .end local v2           #keyf:Ljava/security/KeyFactory;
    .end local v3           #priKey:Ljava/security/PrivateKey;
    .end local v4           #priPKCS8:Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v5           #signature:Ljava/security/Signature;
    .end local v6           #signed:[B
    :goto_0
    return-object v7

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v7, 0x0

    goto :goto_0
.end method
