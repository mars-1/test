.class public Lcom/cnlaunch/physics/utils/ByteHexHelper;
.super Ljava/lang/Object;
.source "ByteHexHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RandomMethod()Ljava/lang/String;
    .locals 7

    .prologue
    .line 260
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 261
    .local v2, random:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 263
    .local v1, len:I
    :goto_0
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 267
    return-object v0

    .line 264
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static XOR(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, bytes:B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 229
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [B

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 230
    .local v0, bbb:[B
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 226
    .end local v0           #bbb:[B
    .restart local v2       #i:I
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToByte(Ljava/lang/String;)B

    move-result v3

    xor-int/2addr v3, v1

    int-to-byte v1, v3

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static appendByteArray([B[B)[B
    .locals 4
    .parameter "src"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 633
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 634
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 635
    .local v0, ret:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    return-object v0

    .line 639
    .end local v0           #ret:[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u5b57\u8282\u6570\u7ec4\u53c2\u6570\u9519\u8bef"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "bString"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    :cond_0
    const-string/jumbo v5, ""

    .line 549
    :goto_0
    return-object v5

    .line 532
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v0, v5, 0x8

    .line 534
    .local v0, addLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 537
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "choiceItem = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    .end local v0           #addLen:I
    .end local v1           #i:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    .local v4, tmp:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 541
    .local v2, iTmp:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 548
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tmp.toString() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 535
    .end local v2           #iTmp:I
    .end local v4           #tmp:Ljava/lang/StringBuffer;
    .restart local v0       #addLen:I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v0           #addLen:I
    .restart local v2       #iTmp:I
    .restart local v4       #tmp:Ljava/lang/StringBuffer;
    :cond_4
    const/4 v2, 0x0

    .line 543
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_5

    .line 546
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 544
    :cond_5
    add-int v5, v1, v3

    add-int v6, v1, v3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v6, v3, 0x4

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "src"

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    and-int/lit16 v2, p0, 0xff

    .line 60
    .local v2, v:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToInt(B)I
    .locals 1
    .parameter "src"

    .prologue
    .line 76
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static byteToWord([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 423
    const-string/jumbo v2, ""

    .line 424
    .local v2, word:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 426
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 428
    .local v1, locale:Ljava/util/Locale;
    const/4 v4, 0x1

    packed-switch v4, :pswitch_data_0

    .line 502
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "GB2312"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .local v3, word:Ljava/lang/String;
    move-object v2, v3

    .line 509
    .end local v1           #locale:Ljava/util/Locale;
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 430
    .restart local v1       #locale:Ljava/util/Locale;
    :pswitch_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "GB2312"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 431
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 433
    :pswitch_1
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "GB2312"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 434
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 436
    :pswitch_2
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "BIG5"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 437
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 439
    :pswitch_3
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "EUC-JP"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 440
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 442
    :pswitch_4
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "euc-kr"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 443
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 445
    :pswitch_5
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 446
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 448
    :pswitch_6
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 449
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 451
    :pswitch_7
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 452
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 454
    :pswitch_8
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 455
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 457
    :pswitch_9
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 458
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 460
    :pswitch_a
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 461
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 463
    :pswitch_b
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 464
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto :goto_0

    .line 466
    :pswitch_c
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 467
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 469
    :pswitch_d
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 470
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 472
    :pswitch_e
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-2"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 473
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 475
    :pswitch_f
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-2"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 476
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 478
    :pswitch_10
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-2"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 479
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 481
    :pswitch_11
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-5"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 482
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 484
    :pswitch_12
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-9"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 485
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 487
    :pswitch_13
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-7"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 488
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 490
    :pswitch_14
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-6"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 491
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 493
    :pswitch_15
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "windows-1256"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 494
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 496
    :pswitch_16
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-5"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 497
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 499
    :pswitch_17
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-2"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #word:Ljava/lang/String;
    .restart local v3       #word:Ljava/lang/String;
    move-object v2, v3

    .line 500
    .end local v3           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 505
    .end local v1           #locale:Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_11
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_12
        :pswitch_a
        :pswitch_13
        :pswitch_f
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_b
        :pswitch_15
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "src"

    .prologue
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 36
    :cond_0
    const-string/jumbo v4, ""

    .line 46
    :goto_0
    return-object v4

    .line 38
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 39
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 40
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 42
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static calculateSingleFileMD5sum(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 644
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 645
    .local v4, md5:Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 646
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 647
    .local v5, readLen:I
    const/16 v7, 0x100

    new-array v1, v7, [B

    .line 648
    .local v1, buff:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 651
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 654
    .local v2, data:[B
    array-length v9, v2

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_1

    .line 657
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 649
    .end local v2           #data:[B
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v4, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 654
    .restart local v2       #data:[B
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_1
    aget-byte v0, v2, v7

    .line 655
    .local v0, b:B
    new-instance v10, Ljava/util/Formatter;

    invoke-direct {v10}, Ljava/util/Formatter;-><init>()V

    const-string/jumbo v11, "%02x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static charToByte(C)B
    .locals 1
    .parameter "c"

    .prologue
    .line 213
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static checkedSite(I)Ljava/lang/String;
    .locals 4
    .parameter "site"

    .prologue
    .line 293
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, len:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 299
    return-object v0

    .line 296
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static currentData()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 239
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v7, stringBuffer:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v10, "00"

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 242
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, year:Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, month:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, day:Ljava/lang/String;
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, hour:Ljava/lang/String;
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, minute:Ljava/lang/String;
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, second:Ljava/lang/String;
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, week:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static cutOutByte([BI)[B
    .locals 3
    .parameter "b"
    .parameter "j"

    .prologue
    .line 407
    array-length v2, p0

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 414
    :cond_1
    return-object v0

    .line 410
    :cond_2
    new-array v0, p1, [B

    .line 411
    .local v0, bjq:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 412
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static dpuString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 366
    const-string/jumbo v0, ""

    .line 367
    .local v0, buffer:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 369
    .local v3, src:[B
    invoke-static {v3}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, resultLength:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resultLength=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #resultLength:Ljava/lang/String;
    .end local v3           #src:[B
    :cond_0
    return-object v0
.end method

.method public static getMergeBytes([B[B)[B
    .locals 6
    .parameter "pByteA"
    .parameter "pByteB"

    .prologue
    .line 385
    array-length v0, p0

    .line 386
    .local v0, aCount:I
    array-length v2, p1

    .line 387
    .local v2, bCount:I
    add-int v4, v0, v2

    new-array v1, v4, [B

    .line 388
    .local v1, b:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 391
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    .line 394
    return-object v1

    .line 389
    :cond_0
    aget-byte v4, p0, v3

    aput-byte v4, v1, v3

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    :cond_1
    add-int v4, v0, v3

    aget-byte v5, p1, v3

    aput-byte v5, v1, v4

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hexString"

    .prologue
    .line 559
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 560
    :cond_0
    const/4 v0, 0x0

    .line 566
    :cond_1
    return-object v0

    .line 561
    :cond_2
    const-string/jumbo v0, ""

    .line 562
    .local v0, bString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, tmp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;)B
    .locals 7
    .parameter "hexString"

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 196
    .local v3, length:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 197
    .local v1, hexChars:[C
    new-array v0, v3, [B

    .line 198
    .local v0, d:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 202
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    return v5

    .line 199
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    .line 200
    .local v4, pos:I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "hexString"

    .prologue
    .line 171
    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    :cond_0
    const/4 v6, 0x0

    new-array v0, v6, [B

    .local v0, bytes:[B
    move-object v1, v0

    .line 183
    .end local v0           #bytes:[B
    :cond_1
    return-object v1

    .line 175
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 177
    .local v4, length:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 178
    .local v2, hexChars:[C
    new-array v1, v4, [B

    .line 179
    .local v1, d:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 180
    mul-int/lit8 v5, v3, 0x2

    .line 181
    .local v5, pos:I
    aget-char v6, v2, v5

    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->charToByte(C)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v5, 0x1

    aget-char v7, v2, v7

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->charToByte(C)B

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hexStringToWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hexString"

    .prologue
    .line 519
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->byteToWord([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intPackLength(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 325
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    .local v0, intLength:I
    return v0
.end method

.method public static intPackLength([B)I
    .locals 3
    .parameter "str"

    .prologue
    .line 338
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, byteStr:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 340
    .local v1, intLength:I
    return v1
.end method

.method public static intToFourHexBytes(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, len:I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 124
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToFourHexBytesTwo(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 136
    .local v1, len:I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 140
    :cond_0
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 144
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 141
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToHexByte(I)B
    .locals 4
    .parameter "id"

    .prologue
    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 156
    .local v1, len:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 160
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToByte(Ljava/lang/String;)B

    move-result v2

    return v2

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToHexBytes(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 88
    .local v1, len:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 92
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToTwoHexBytes(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 104
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 108
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static packLength(I)Ljava/lang/String;
    .locals 4
    .parameter "dataLen"

    .prologue
    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 311
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 315
    return-object v0

    .line 312
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static packLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 279
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 283
    return-object v0

    .line 280
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static packVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "target"
    .parameter "source"
    .parameter "packLengths"
    .parameter "counter"
    .parameter "commandWord"
    .parameter "dataArea"

    .prologue
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->XOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, verify:Ljava/lang/String;
    return-object v0
.end method

.method public static parseAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 703
    .local v0, bs:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 705
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 704
    :cond_0
    aget-byte v3, v0, v1

    invoke-static {v3}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 576
    const-string/jumbo v0, ""

    .line 577
    .local v0, dest:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 578
    const-string/jumbo v3, "\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 579
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 580
    .local v1, m:Ljava/util/regex/Matcher;
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #p:Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static replaceBlank1(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "str"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x6

    .line 587
    const-string/jumbo v0, ""

    .line 588
    .local v0, dest:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 589
    const-string/jumbo v7, "\t|\r|\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 590
    .local v6, p:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 591
    .local v5, m:Ljava/util/regex/Matcher;
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 595
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, destfenge:Ljava/lang/String;
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, destfenge1:Ljava/lang/String;
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, destfenge2:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, destfenge3:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .end local v1           #destfenge:Ljava/lang/String;
    .end local v2           #destfenge1:Ljava/lang/String;
    .end local v3           #destfenge2:Ljava/lang/String;
    .end local v4           #destfenge3:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 5
    .parameter "n"

    .prologue
    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v1, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v3, p0, 0x10

    if-nez v3, :cond_0

    .line 691
    invoke-static {p0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->toHexUtil(I)Ljava/lang/String;

    move-result-object v3

    .line 697
    :goto_0
    return-object v3

    .line 693
    :cond_0
    div-int/lit8 v3, p0, 0x10

    invoke-static {v3}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->toHex(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, t:Ljava/lang/String;
    rem-int/lit8 v0, p0, 0x10

    .line 695
    .local v0, nn:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->toHexUtil(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static toHexUtil(I)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 662
    const-string/jumbo v0, ""

    .line 663
    .local v0, rt:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 665
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    goto :goto_0

    .line 668
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    goto :goto_0

    .line 671
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    goto :goto_0

    .line 674
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    goto :goto_0

    .line 677
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    goto :goto_0

    .line 680
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toStringArray([B)Ljava/util/ArrayList;
    .locals 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    if-eqz p0, :cond_1

    .line 611
    array-length v3, p0

    .line 612
    .local v3, total_bytes:I
    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 613
    const/4 v4, 0x0

    .line 614
    .local v4, walkthrough:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v0, result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lt v4, v5, :cond_0

    .line 625
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :goto_1
    return-object v0

    .line 616
    .restart local v0       #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #total_bytes:I
    .restart local v4       #walkthrough:I
    :cond_0
    aget-byte v5, p0, v4

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    or-int v2, v5, v6

    .line 617
    .local v2, temp_len:I
    add-int/lit8 v5, v2, -0x1

    new-array v1, v5, [B

    .line 618
    .local v1, str_bytes:[B
    add-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    add-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    goto :goto_0

    .line 625
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #str_bytes:[B
    .end local v2           #temp_len:I
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
