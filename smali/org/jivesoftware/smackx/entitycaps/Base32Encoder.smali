.class public Lorg/jivesoftware/smackx/entitycaps/Base32Encoder;
.super Ljava/lang/Object;
.source "Base32Encoder.java"

# interfaces
.implements Lorg/jivesoftware/smackx/entitycaps/StringEncoder;


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lenToPadding(I)I
    .locals 1
    .parameter "blocklen"

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 153
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 143
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 145
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 147
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static paddingToLen(I)I
    .locals 1
    .parameter "padlen"

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 170
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 160
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 166
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 168
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "str"

    .prologue
    .line 33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v1, bs:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 35
    .local v8, raw:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v8

    if-lt v4, v11, :cond_0

    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    rem-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 49
    .local v5, in:[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 50
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v3, ds:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    :goto_2
    array-length v11, v5

    div-int/lit8 v11, v11, 0x8

    if-lt v4, v11, :cond_3

    .line 89
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    :goto_3
    return-object v11

    .line 37
    .end local v3           #ds:Ljava/io/DataOutputStream;
    .end local v5           #in:[B
    :cond_0
    aget-byte v11, v8, v4

    int-to-char v2, v11

    .line 38
    .local v2, c:C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_1

    .line 39
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 40
    int-to-byte v11, v2

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v2           #c:C
    :cond_2
    const/16 v11, 0x38

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 53
    .restart local v3       #ds:Ljava/io/DataOutputStream;
    .restart local v5       #in:[B
    :cond_3
    const/16 v11, 0x8

    new-array v9, v11, [S

    .line 54
    .local v9, s:[S
    const/4 v11, 0x5

    new-array v10, v11, [I

    .line 56
    .local v10, t:[I
    const/16 v7, 0x8

    .line 57
    .local v7, padlen:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4
    const/16 v11, 0x8

    if-lt v6, v11, :cond_5

    .line 66
    :cond_4
    invoke-static {v7}, Lorg/jivesoftware/smackx/entitycaps/Base32Encoder;->paddingToLen(I)I

    move-result v0

    .line 67
    .local v0, blocklen:I
    if-gez v0, :cond_7

    .line 68
    const/4 v11, 0x0

    goto :goto_3

    .line 58
    .end local v0           #blocklen:I
    :cond_5
    mul-int/lit8 v11, v4, 0x8

    add-int/2addr v11, v6

    aget-byte v11, v5, v11

    int-to-char v2, v11

    .line 59
    .restart local v2       #c:C
    const/16 v11, 0x38

    if-eq v2, v11, :cond_4

    .line 61
    const-string/jumbo v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"

    mul-int/lit8 v12, v4, 0x8

    add-int/2addr v12, v6

    aget-byte v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v9, v6

    .line 62
    aget-short v11, v9, v6

    if-gez v11, :cond_6

    .line 63
    const/4 v11, 0x0

    goto :goto_3

    .line 64
    :cond_6
    add-int/lit8 v7, v7, -0x1

    .line 57
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 71
    .end local v2           #c:C
    .restart local v0       #blocklen:I
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-short v12, v9, v12

    shl-int/lit8 v12, v12, 0x3

    const/4 v13, 0x1

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 73
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0x3

    shl-int/lit8 v12, v12, 0x6

    const/4 v13, 0x2

    aget-short v13, v9, v13

    shl-int/lit8 v13, v13, 0x1

    or-int/2addr v12, v13

    const/4 v13, 0x3

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 75
    const/4 v11, 0x2

    const/4 v12, 0x3

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0xf

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x4

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x1

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 77
    const/4 v11, 0x3

    const/4 v12, 0x4

    aget-short v12, v9, v12

    shl-int/lit8 v12, v12, 0x7

    const/4 v13, 0x5

    aget-short v13, v9, v13

    shl-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    const/4 v13, 0x6

    aget-short v13, v9, v13

    shr-int/lit8 v13, v13, 0x3

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 79
    const/4 v11, 0x4

    const/4 v12, 0x6

    aget-short v12, v9, v12

    and-int/lit8 v12, v12, 0x7

    shl-int/lit8 v12, v12, 0x5

    const/4 v13, 0x7

    aget-short v13, v9, v13

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 82
    const/4 v6, 0x0

    :goto_5
    if-lt v6, v0, :cond_8

    .line 52
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 83
    :cond_8
    :try_start_0
    aget v11, v10, v6

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 85
    :catch_0
    move-exception v11

    goto :goto_6
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "str"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    .local v0, b:[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v5, os:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v0

    add-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x5

    if-lt v3, v9, :cond_0

    .line 137
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    return-object v9

    .line 98
    :cond_0
    const/4 v9, 0x5

    new-array v7, v9, [S

    .line 99
    .local v7, s:[S
    const/16 v9, 0x8

    new-array v8, v9, [I

    .line 101
    .local v8, t:[I
    const/4 v1, 0x5

    .line 102
    .local v1, blocklen:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    const/4 v9, 0x5

    if-lt v4, v9, :cond_1

    .line 110
    invoke-static {v1}, Lorg/jivesoftware/smackx/entitycaps/Base32Encoder;->lenToPadding(I)I

    move-result v6

    .line 115
    .local v6, padlen:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-short v10, v7, v10

    shr-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 117
    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-short v10, v7, v10

    and-int/lit8 v10, v10, 0x7

    shl-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    aget-short v11, v7, v11

    shr-int/lit8 v11, v11, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 119
    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-short v10, v7, v10

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 121
    const/4 v9, 0x3

    const/4 v10, 0x1

    aget-short v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    shl-int/lit8 v10, v10, 0x4

    const/4 v11, 0x2

    aget-short v11, v7, v11

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 123
    const/4 v9, 0x4

    const/4 v10, 0x2

    aget-short v10, v7, v10

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v10, v10, 0x1

    const/4 v11, 0x3

    aget-short v11, v7, v11

    shr-int/lit8 v11, v11, 0x7

    and-int/lit8 v11, v11, 0x1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 125
    const/4 v9, 0x5

    const/4 v10, 0x3

    aget-short v10, v7, v10

    shr-int/lit8 v10, v10, 0x2

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 127
    const/4 v9, 0x6

    const/4 v10, 0x3

    aget-short v10, v7, v10

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    aget-short v11, v7, v11

    shr-int/lit8 v11, v11, 0x5

    and-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 129
    const/4 v9, 0x7

    const/4 v10, 0x4

    aget-short v10, v7, v10

    and-int/lit8 v10, v10, 0x1f

    int-to-byte v10, v10

    aput v10, v8, v9

    .line 132
    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    sub-int/2addr v9, v6

    if-lt v4, v9, :cond_3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 103
    .end local v6           #padlen:I
    :cond_1
    mul-int/lit8 v9, v3, 0x5

    add-int/2addr v9, v4

    array-length v10, v0

    if-ge v9, v10, :cond_2

    .line 104
    mul-int/lit8 v9, v3, 0x5

    add-int/2addr v9, v4

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v4

    .line 102
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 106
    :cond_2
    const/4 v9, 0x0

    aput-short v9, v7, v4

    .line 107
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 133
    .restart local v6       #padlen:I
    :cond_3
    const-string/jumbo v9, "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"

    aget v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 134
    .local v2, c:C
    invoke-virtual {v5, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
