.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name; = null

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_MD5_STR:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA1_STR:Ljava/lang/String; = "hmac-sha1."

.field public static final HMAC_SHA224:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA224_STR:Ljava/lang/String; = "hmac-sha224."

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA256_STR:Ljava/lang/String; = "hmac-sha256."

.field public static final HMAC_SHA384:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA384_STR:Ljava/lang/String; = "hmac-sha384."

.field public static final HMAC_SHA512:Lorg/xbill/DNS/Name; = null

.field private static final HMAC_SHA512_STR:Ljava/lang/String; = "hmac-sha512."


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private digestBlockLength:I

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 29
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 32
    const-string/jumbo v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 39
    const-string/jumbo v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    .line 42
    const-string/jumbo v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    .line 45
    const-string/jumbo v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    .line 48
    const-string/jumbo v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "key"

    .prologue
    .line 172
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "algorithm"
    .parameter "name"
    .parameter "key"

    .prologue
    .line 144
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 159
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 160
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 149
    :cond_1
    const-string/jumbo v0, "hmac-sha224"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 151
    :cond_2
    const-string/jumbo v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 153
    :cond_3
    const-string/jumbo v0, "hmac-sha384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 155
    :cond_4
    const-string/jumbo v0, "hmac-sha512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "algorithm"
    .parameter "name"
    .parameter "key"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid TSIG key string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 129
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid TSIG key name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0
    .parameter "algorithm"
    .parameter "name"
    .parameter "key"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 94
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 95
    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 96
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .parameter "name"
    .parameter "key"

    .prologue
    .line 107
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 108
    return-void
.end method

.method static synthetic access$0(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/xbill/DNS/TSIG;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    return v0
.end method

.method static synthetic access$2(Lorg/xbill/DNS/TSIG;)[B
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$3(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$4(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 9
    .parameter "str"

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 187
    const-string/jumbo v2, "[:/]"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v6, :cond_0

    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid TSIG key specification"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    array-length v2, v1

    if-ne v2, v3, :cond_1

    .line 193
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/TSIG;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "[:/]"

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v2, Lorg/xbill/DNS/TSIG;

    sget-object v3, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v4, v1, v7

    aget-object v5, v1, v8

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDigest()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x40

    .line 63
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 65
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 68
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string/jumbo v0, "sha-224"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 71
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string/jumbo v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 74
    iput v2, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string/jumbo v0, "sha-512"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 77
    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const-string/jumbo v0, "sha-384"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 80
    iput v3, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    goto :goto_0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .parameter "m"
    .parameter "error"
    .parameter "old"

    .prologue
    const/4 v2, 0x3

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 288
    .local v0, r:Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 289
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 290
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .parameter "m"
    .parameter "old"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 300
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 21
    .parameter "m"
    .parameter "old"
    .parameter "first"

    .prologue
    .line 309
    if-eqz p3, :cond_0

    .line 310
    invoke-virtual/range {p0 .. p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 347
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 315
    .local v8, timeSigned:Ljava/util/Date;
    new-instance v14, Lorg/xbill/DNS/utils/HMAC;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v14, v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 317
    .local v14, hmac:Lorg/xbill/DNS/utils/HMAC;
    const-string/jumbo v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v9

    .line 318
    .local v9, fudge:I
    if-ltz v9, :cond_1

    const/16 v3, 0x7fff

    if-le v9, v3, :cond_2

    .line 319
    :cond_1
    const/16 v9, 0x12c

    .line 321
    :cond_2
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 322
    .local v15, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 323
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 329
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    .end local v15           #out:Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 330
    .restart local v15       #out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v16, v3, v5

    .line 331
    .local v16, time:J
    const/16 v3, 0x20

    shr-long v3, v16, v3

    long-to-int v0, v3

    move/from16 v18, v0

    .line 332
    .local v18, timeHigh:I
    const-wide v3, 0xffffffffL

    and-long v19, v16, v3

    .line 333
    .local v19, timeLow:J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 334
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 335
    invoke-virtual {v15, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 337
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 339
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v10

    .line 340
    .local v10, signature:[B
    const/4 v13, 0x0

    .line 342
    .local v13, other:[B
    new-instance v2, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 343
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xbill/DNS/Header;->getID()I

    move-result v11

    .line 344
    const/4 v12, 0x0

    .line 342
    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 345
    .local v2, r:Lorg/xbill/DNS/Record;
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 346
    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Lorg/xbill/DNS/Message;->tsigState:I

    goto/16 :goto_0
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 21
    .parameter "m"
    .parameter "b"
    .parameter "error"
    .parameter "old"

    .prologue
    .line 213
    const/16 v2, 0x12

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    .line 214
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 218
    .local v8, timeSigned:Ljava/util/Date;
    :goto_0
    const/4 v14, 0x0

    .line 219
    .local v14, hmac:Lorg/xbill/DNS/utils/HMAC;
    if-eqz p3, :cond_0

    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 220
    :cond_0
    new-instance v14, Lorg/xbill/DNS/utils/HMAC;

    .end local v14           #hmac:Lorg/xbill/DNS/utils/HMAC;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v14, v2, v3, v4}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 222
    .restart local v14       #hmac:Lorg/xbill/DNS/utils/HMAC;
    :cond_1
    const-string/jumbo v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v9

    .line 223
    .local v9, fudge:I
    if-ltz v9, :cond_2

    const/16 v2, 0x7fff

    if-le v9, v2, :cond_3

    .line 224
    :cond_2
    const/16 v9, 0x12c

    .line 226
    :cond_3
    if-eqz p4, :cond_4

    .line 227
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 228
    .local v15, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 229
    if-eqz v14, :cond_4

    .line 230
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 236
    .end local v15           #out:Lorg/xbill/DNS/DNSOutput;
    :cond_4
    if-eqz v14, :cond_5

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 239
    :cond_5
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 240
    .restart local v15       #out:Lorg/xbill/DNS/DNSOutput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 241
    const/16 v2, 0xff

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 244
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 245
    .local v16, time:J
    const/16 v2, 0x20

    shr-long v2, v16, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 246
    .local v18, timeHigh:I
    const-wide v2, 0xffffffffL

    and-long v19, v16, v2

    .line 247
    .local v19, timeLow:J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 248
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 249
    invoke-virtual {v15, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 251
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 252
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 254
    if-eqz v14, :cond_6

    .line 255
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 258
    :cond_6
    if-eqz v14, :cond_9

    .line 259
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v10

    .line 263
    .local v10, signature:[B
    :goto_1
    const/4 v13, 0x0

    .line 264
    .local v13, other:[B
    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 265
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    .end local v15           #out:Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 266
    .restart local v15       #out:Lorg/xbill/DNS/DNSOutput;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 267
    const/16 v2, 0x20

    shr-long v2, v16, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 268
    const-wide v2, 0xffffffffL

    and-long v19, v16, v2

    .line 269
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 270
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 271
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    .line 274
    :cond_7
    new-instance v2, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 275
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xbill/DNS/Header;->getID()I

    move-result v11

    move/from16 v12, p3

    .line 274
    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v2

    .line 216
    .end local v8           #timeSigned:Ljava/util/Date;
    .end local v9           #fudge:I
    .end local v10           #signature:[B
    .end local v13           #other:[B
    .end local v14           #hmac:Lorg/xbill/DNS/utils/HMAC;
    .end local v15           #out:Lorg/xbill/DNS/DNSOutput;
    .end local v16           #time:J
    .end local v18           #timeHigh:I
    .end local v19           #timeLow:J
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v8

    .restart local v8       #timeSigned:Ljava/util/Date;
    goto/16 :goto_0

    .line 261
    .restart local v9       #fudge:I
    .restart local v14       #hmac:Lorg/xbill/DNS/utils/HMAC;
    .restart local v15       #out:Lorg/xbill/DNS/DNSOutput;
    .restart local v16       #time:J
    .restart local v18       #timeHigh:I
    .restart local v19       #timeLow:J
    :cond_9
    const/4 v2, 0x0

    new-array v10, v2, [B

    .restart local v10       #signature:[B
    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 469
    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    .line 468
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 26
    .parameter "m"
    .parameter "b"
    .parameter "length"
    .parameter "old"

    .prologue
    .line 365
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 366
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v21

    .line 367
    .local v21, tsig:Lorg/xbill/DNS/TSIGRecord;
    new-instance v7, Lorg/xbill/DNS/utils/HMAC;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->key:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v7, v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 368
    .local v7, hmac:Lorg/xbill/DNS/utils/HMAC;
    if-nez v21, :cond_0

    .line 369
    const/16 v22, 0x1

    .line 441
    :goto_0
    return v22

    .line 371
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 372
    :cond_1
    const-string/jumbo v22, "verbose"

    invoke-static/range {v22 .. v22}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 373
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v23, "BADKEY failure"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_2
    const/16 v22, 0x11

    goto :goto_0

    .line 376
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 377
    .local v10, now:J
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 378
    .local v14, then:J
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v22

    move/from16 v0, v22

    int-to-long v4, v0

    .line 379
    .local v4, fudge:J
    sub-long v22, v10, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v4

    cmp-long v22, v22, v24

    if-lez v22, :cond_5

    .line 380
    const-string/jumbo v22, "verbose"

    invoke-static/range {v22 .. v22}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 381
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v23, "BADTIME failure"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_4
    const/16 v22, 0x12

    goto :goto_0

    .line 385
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v22

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 386
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v22

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 388
    new-instance v12, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v12}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 389
    .local v12, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 390
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 391
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 393
    .end local v12           #out:Lorg/xbill/DNS/DNSOutput;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v22

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v6

    .line 395
    .local v6, header:[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v22

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 396
    invoke-virtual {v7, v6}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 398
    move-object/from16 v0, p1

    iget v0, v0, Lorg/xbill/DNS/Message;->tsigstart:I

    move/from16 v22, v0

    array-length v0, v6

    move/from16 v23, v0

    sub-int v8, v22, v23

    .line 399
    .local v8, len:I
    array-length v0, v6

    move/from16 v22, v0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1, v8}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 401
    new-instance v12, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v12}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 402
    .restart local v12       #out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 403
    move-object/from16 v0, v21

    iget v0, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 404
    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 405
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 406
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 407
    .local v16, time:J
    const/16 v22, 0x20

    shr-long v22, v16, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v18, v0

    .line 408
    .local v18, timeHigh:I
    const-wide v22, 0xffffffffL

    and-long v19, v16, v22

    .line 409
    .local v19, timeLow:J
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 410
    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 411
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 412
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 413
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v22

    if-eqz v22, :cond_8

    .line 414
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 415
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 420
    :goto_1
    invoke-virtual {v12}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 422
    invoke-virtual/range {v21 .. v21}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v13

    .line 423
    .local v13, signature:[B
    invoke-virtual {v7}, Lorg/xbill/DNS/utils/HMAC;->digestLength()I

    move-result v3

    .line 424
    .local v3, digestLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "md5"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/16 v9, 0xa

    .line 426
    .local v9, minDigestLength:I
    :goto_2
    array-length v0, v13

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v3, :cond_a

    .line 427
    const-string/jumbo v22, "verbose"

    invoke-static/range {v22 .. v22}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 428
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v23, "BADSIG: signature too long"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_7
    const/16 v22, 0x10

    goto/16 :goto_0

    .line 417
    .end local v3           #digestLength:I
    .end local v9           #minDigestLength:I
    .end local v13           #signature:[B
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 424
    .restart local v3       #digestLength:I
    .restart local v13       #signature:[B
    :cond_9
    div-int/lit8 v9, v3, 0x2

    goto :goto_2

    .line 430
    .restart local v9       #minDigestLength:I
    :cond_a
    array-length v0, v13

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v9, :cond_c

    .line 431
    const-string/jumbo v22, "verbose"

    invoke-static/range {v22 .. v22}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 432
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v23, "BADSIG: signature too short"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    :cond_b
    const/16 v22, 0x10

    goto/16 :goto_0

    .line 434
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v13, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([BZ)Z

    move-result v22

    if-nez v22, :cond_e

    .line 435
    const-string/jumbo v22, "verbose"

    invoke-static/range {v22 .. v22}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 436
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v23, "BADSIG: signature verification"

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_d
    const/16 v22, 0x10

    goto/16 :goto_0

    .line 440
    :cond_e
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 441
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .parameter "m"
    .parameter "b"
    .parameter "old"

    .prologue
    .line 459
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
