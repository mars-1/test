.class public Lcom/cnlaunch/golo3/utils/md5/Md5Helper;
.super Ljava/lang/Object;
.source "Md5Helper.java"


# static fields
.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 23
    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    .line 22
    sput-object v0, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->hexDigits:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 32
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .local v1, resultSb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static byteArrayToNumberString([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v1, resultSb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 48
    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->byteToNumString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 63
    move v2, p0

    .line 64
    .local v2, n:I
    if-gez v2, :cond_0

    .line 65
    add-int/lit16 v2, v2, 0x100

    .line 67
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 68
    .local v0, d1:I
    rem-int/lit8 v1, v2, 0x10

    .line 69
    .local v1, d2:I
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static byteToNumString(B)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 54
    move v0, p0

    .line 55
    .local v0, _b:I
    if-gez v0, :cond_0

    .line 56
    add-int/lit16 v0, v0, 0x100

    .line 59
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fastMd5AsHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 118
    new-instance v0, Lcom/cnlaunch/golo3/utils/md5/MD5;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;-><init>()V

    .line 120
    .local v0, md5:Lcom/cnlaunch/golo3/utils/md5/MD5;
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, p0, v1}, Lcom/cnlaunch/golo3/utils/md5/MD5;->Update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    invoke-virtual {v0}, Lcom/cnlaunch/golo3/utils/md5/MD5;->asHex()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static jdkMd5AsHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 101
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 102
    .local v0, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 107
    .end local v0           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object p0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static jdkMd5AsNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 82
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 83
    .local v0, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->byteArrayToNumberString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 88
    .end local v0           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object p0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "launch031"

    invoke-static {v1}, Lcom/cnlaunch/golo3/utils/md5/Md5Helper;->fastMd5AsHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bb27c928d929977576337b02afa81d90"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 167
    return-void
.end method
