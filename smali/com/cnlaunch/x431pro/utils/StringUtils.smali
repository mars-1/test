.class public Lcom/cnlaunch/x431pro/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/cnlaunch/x431pro/utils/StringUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/utils/StringUtils;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "versionNo"
    .parameter "maxOldVersion"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 284
    goto :goto_0
.end method

.method public static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "theString"

    .prologue
    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 354
    const/4 v7, 0x0

    .line 414
    :goto_0
    return-object v7

    .line 356
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 357
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    .local v3, outBuffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, x:I
    move v6, v5

    .end local v5           #x:I
    .local v6, x:I
    :goto_1
    if-lt v6, v2, :cond_1

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 359
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #x:I
    .restart local v5       #x:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, aChar:C
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_8

    .line 361
    add-int/lit8 v6, v5, 0x1

    .end local v5           #x:I
    .restart local v6       #x:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    const/16 v7, 0x75

    if-ne v0, v7, :cond_3

    .line 363
    const/4 v4, 0x0

    .line 364
    .local v4, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    .line 399
    int-to-char v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 365
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .end local v6           #x:I
    .restart local v5       #x:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    sparse-switch v0, :sswitch_data_0

    .line 396
    sget-object v7, Lcom/cnlaunch/x431pro/utils/StringUtils;->tag:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Malformed encoding.aChar="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #x:I
    .restart local v6       #x:I
    goto :goto_2

    .line 377
    .end local v6           #x:I
    .restart local v5       #x:I
    :sswitch_0
    shl-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v0

    add-int/lit8 v4, v7, -0x30

    .line 378
    goto :goto_3

    .line 385
    :sswitch_1
    shl-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v0

    add-int/lit8 v4, v7, -0x61

    .line 386
    goto :goto_3

    .line 393
    :sswitch_2
    shl-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v0

    add-int/lit8 v4, v7, -0x41

    .line 394
    goto :goto_3

    .line 401
    .end local v1           #i:I
    .end local v4           #value:I
    .end local v5           #x:I
    .restart local v6       #x:I
    :cond_3
    const/16 v7, 0x74

    if-ne v0, v7, :cond_5

    .line 402
    const/16 v0, 0x9

    .line 409
    :cond_4
    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 403
    :cond_5
    const/16 v7, 0x72

    if-ne v0, v7, :cond_6

    .line 404
    const/16 v0, 0xd

    goto :goto_4

    .line 405
    :cond_6
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_7

    .line 406
    const/16 v0, 0xa

    goto :goto_4

    .line 407
    :cond_7
    const/16 v7, 0x66

    if-ne v0, v7, :cond_4

    .line 408
    const/16 v0, 0xc

    goto :goto_4

    .line 412
    .end local v6           #x:I
    .restart local v5       #x:I
    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .end local v5           #x:I
    .restart local v6       #x:I
    goto/16 :goto_1

    .line 366
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getRandomIndex(I)I
    .locals 4
    .parameter "size"

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static getStrlength(Ljava/lang/String;)I
    .locals 9
    .parameter "value"

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 68
    .local v3, valueLength:I
    const-string/jumbo v0, "[\u0391-\uffe5]"

    .line 70
    .local v0, chinese:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 82
    sget-object v4, Lcom/cnlaunch/x431pro/utils/StringUtils;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getStrlength : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v3

    .line 72
    :cond_0
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    add-int/lit8 v3, v3, 0x2

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isAcount(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "str"

    .prologue
    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 239
    .local v0, bl:Ljava/lang/Boolean;
    const-string/jumbo v3, "^[a-zA-Z][0-9a-zA-Z_]{4,20}$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 240
    .local v2, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 241
    .local v1, mt:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    :cond_0
    return-object v0
.end method

.method public static isAcountCharacter(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "str"

    .prologue
    .line 248
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 249
    .local v0, bl:Ljava/lang/Boolean;
    const-string/jumbo v3, "(^[a-zA-Z][0-9a-zA-Z_]+$)|(^[a-zA-Z]$)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 250
    .local v2, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 251
    .local v1, mt:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 254
    :cond_0
    return-object v0
.end method

.method public static isAcountPassword(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 163
    const-string/jumbo v2, "^[a-zA-Z0-9_@]+$"

    .line 164
    .local v2, pw:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 165
    .local v1, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 166
    .local v0, mt:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    const/4 v3, 0x1

    .line 170
    .end local v0           #mt:Ljava/util/regex/Matcher;
    .end local v1           #pt:Ljava/util/regex/Pattern;
    .end local v2           #pw:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAmericaZipCode(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, isAmericaZipcode:Z
    const-string/jumbo v1, "^(\\d{5})$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 260
    return v0
.end method

.method public static isCanadaZipCode(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 264
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 265
    .local v0, isCanadaZipcode:Ljava/lang/Boolean;
    const-string/jumbo v1, "^([ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]\\d[A-Za-z][ -]\\d[A-Za-z]\\d)$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 227
    const-string/jumbo v1, "[\u0391-\uffe5]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 228
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isDigit(Ljava/lang/String;)Z
    .locals 8
    .parameter "streamStr"

    .prologue
    const/16 v7, 0x2d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    const-string/jumbo v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v4

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 295
    .local v2, temC:[C
    const/4 v0, 0x0

    .line 296
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 309
    if-gt v0, v5, :cond_0

    move v4, v5

    .line 312
    goto :goto_0

    .line 297
    :cond_2
    aget-char v3, v2, v1

    .line 299
    .local v3, tempC:I
    const/16 v6, 0x30

    if-lt v3, v6, :cond_3

    const/16 v6, 0x39

    if-le v3, v6, :cond_4

    :cond_3
    const/16 v6, 0x2e

    if-eq v3, v6, :cond_4

    .line 300
    if-ne v3, v7, :cond_0

    .line 304
    :cond_4
    if-ne v3, v7, :cond_5

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 296
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 4
    .parameter "email"

    .prologue
    .line 105
    const-string/jumbo v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    .line 106
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 107
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 108
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static isEmailCharacter(Ljava/lang/String;)Z
    .locals 5
    .parameter "email"

    .prologue
    const/16 v4, 0x40

    const/4 v1, 0x0

    .line 112
    const-string/jumbo v2, "^[a-zA-Z0-9_\\-\\.]+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 113
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 115
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".cn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIdentifyCode(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 197
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobile(Ljava/lang/String;)Z
    .locals 3
    .parameter "mobile"

    .prologue
    .line 214
    const-string/jumbo v2, "^\\d{6,11}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 215
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isNum(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 322
    const-string/jumbo v0, "^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 93
    const-string/jumbo v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 94
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 333
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPassword(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    .line 180
    const-string/jumbo v2, "^[a-zA-Z0-9_@]+$"

    .line 181
    .local v2, pw:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 182
    .local v1, pt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 183
    .local v0, mt:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v3, 0x1

    .line 186
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isPasswordInvalidChar(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 152
    const-string/jumbo v1, "^[a-zA-Z0-9_@]+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 153
    .local v0, isValid:Z
    return v0
.end method

.method public static isPasswordValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 143
    const-string/jumbo v1, "^[a-zA-Z0-9_@]{6,20}$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, isValid:Z
    return v0
.end method

.method public static toNaturalNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 344
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    .local v1, n:I
    :goto_0
    if-lez v1, :cond_0

    .end local v1           #n:I
    :goto_1
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1       #n:I
    goto :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method
