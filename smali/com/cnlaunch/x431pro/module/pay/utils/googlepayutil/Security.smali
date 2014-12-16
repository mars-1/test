.class public Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 90
    .local v0, decodedKey:[B
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 92
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 91
    return-object v3

    .line 93
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 96
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 99
    .local v1, e:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64DecoderException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_0
    const-string/jumbo v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 121
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 123
    invoke-static {p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 137
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 127
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/security/SignatureException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 135
    .local v0, e:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Base64DecoderException;
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "base64PublicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "data is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v2

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    .local v1, verified:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-static {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 68
    .local v0, key:Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    const-string/jumbo v3, "IABUtil/Security"

    const-string/jumbo v4, "signature does not match data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v0           #key:Ljava/security/PublicKey;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
