.class public Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;
.super Ljava/lang/Object;
.source "ByteHexHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RandomMethod()Ljava/lang/String;
    .locals 7

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 318
    .local v2, random:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 320
    .local v1, len:I
    :goto_0
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 324
    return-object v0

    .line 321
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static XOR(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hex"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, bytes:B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 279
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 284
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [B

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    .line 285
    .local v0, bbb:[B
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 281
    .end local v0           #bbb:[B
    .restart local v2       #i:I
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToByte(Ljava/lang/String;)B

    move-result v3

    xor-int/2addr v3, v1

    int-to-byte v1, v3

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static appendByteArray([B[B)[B
    .locals 4
    .parameter "src"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 731
    array-length v1, p0

    if-lez v1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 732
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 733
    .local v0, ret:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    return-object v0

    .line 737
    .end local v0           #ret:[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u5b57\u8282\u6570\u7ec4\u53c2\u6570\u9519\u8bef"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static bin2hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bin"

    .prologue
    .line 830
    const-string/jumbo v5, "0123456789ABCDEF"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 831
    .local v2, digital:[C
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 832
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 834
    .local v1, bs:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-lt v3, v5, :cond_0

    .line 840
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 835
    :cond_0
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v0, v5, 0x4

    .line 836
    .local v0, bit:I
    aget-char v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 837
    aget-byte v5, v1, v3

    and-int/lit8 v0, v5, 0xf

    .line 838
    aget-char v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 834
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bin2hex2byte(Ljava/lang/String;)[B
    .locals 1
    .parameter "hex"

    .prologue
    .line 827
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bin2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static binToMaskCheckCount(Ljava/lang/String;)[B
    .locals 1
    .parameter "mask"

    .prologue
    .line 919
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->planningMask(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static binaryString2bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "bString"

    .prologue
    .line 619
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "bString"

    .prologue
    .line 629
    if-eqz p0, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 630
    :cond_0
    const-string/jumbo v5, ""

    .line 647
    :goto_0
    return-object v5

    .line 632
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v0, v5, 0x8

    .line 634
    .local v0, addLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 638
    .end local v0           #addLen:I
    .end local v1           #i:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 639
    .local v4, tmp:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 640
    .local v2, iTmp:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 647
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 635
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

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 641
    .end local v0           #addLen:I
    .restart local v2       #iTmp:I
    .restart local v4       #tmp:Ljava/lang/StringBuffer;
    :cond_4
    const/4 v2, 0x0

    .line 642
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    const/4 v5, 0x4

    if-lt v3, v5, :cond_5

    .line 645
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 643
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

    .line 642
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 873
    const-string/jumbo v0, ""

    .line 874
    .local v0, hs:Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 875
    .local v2, tmp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 885
    const/4 v2, 0x0

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 878
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static byteMerger([B[B)[B
    .locals 4
    .parameter "byte_1"
    .parameter "byte_2"

    .prologue
    const/4 v3, 0x0

    .line 800
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 801
    .local v0, byte_3:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    return-object v0
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "src"

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    and-int/lit16 v2, p0, 0xff

    .line 57
    .local v2, v:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 59
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToInt(B)I
    .locals 1
    .parameter "src"

    .prologue
    .line 73
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static byteToMaskCheckCount([B)[B
    .locals 1
    .parameter "mask"

    .prologue
    .line 923
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexToMaskCheckCount(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static byteToWord([B)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 444
    const-string/jumbo v1, ""

    .line 445
    .local v1, word:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 447
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->languages(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 591
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "GB2312"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .local v2, word:Ljava/lang/String;
    move-object v1, v2

    .line 599
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 451
    :pswitch_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "GB2312"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 452
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 456
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "GB2312"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 457
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 462
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "BIG5"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 463
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 468
    :pswitch_3
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "EUC-JP"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 469
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 474
    :pswitch_4
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "euc-kr"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 475
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 480
    :pswitch_5
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 481
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 486
    :pswitch_6
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 487
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 492
    :pswitch_7
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 493
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 498
    :pswitch_8
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 499
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 504
    :pswitch_9
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 505
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 510
    :pswitch_a
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 511
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 516
    :pswitch_b
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 517
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto :goto_0

    .line 522
    :pswitch_c
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 523
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 528
    :pswitch_d
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 529
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 534
    :pswitch_e
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-2"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 535
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 540
    :pswitch_f
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-2"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 541
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 546
    :pswitch_10
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-2"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 547
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 552
    :pswitch_11
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-5"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 553
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 558
    :pswitch_12
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-9"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 559
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 564
    :pswitch_13
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-7"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 565
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 570
    :pswitch_14
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-6"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 571
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 576
    :pswitch_15
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "windows-1256"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 577
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 581
    :pswitch_16
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-5"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 582
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 586
    :pswitch_17
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-2"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #word:Ljava/lang/String;
    .restart local v2       #word:Ljava/lang/String;
    move-object v1, v2

    .line 587
    .end local v2           #word:Ljava/lang/String;
    .restart local v1       #word:Ljava/lang/String;
    goto/16 :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 447
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
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 33
    :cond_0
    const-string/jumbo v4, ""

    .line 43
    :goto_0
    return-object v4

    .line 35
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 36
    :cond_2
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 37
    .local v3, v:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, hv:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 39
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
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

    .line 742
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 743
    .local v4, md5:Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 744
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 745
    .local v5, readLen:I
    const/16 v7, 0x100

    new-array v1, v7, [B

    .line 746
    .local v1, buff:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 749
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 752
    .local v2, data:[B
    array-length v9, v2

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_1

    .line 755
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 747
    .end local v2           #data:[B
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v4, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 752
    .restart local v2       #data:[B
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_1
    aget-byte v0, v2, v7

    .line 753
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

    .line 752
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private static charToByte(C)B
    .locals 1
    .parameter "c"

    .prologue
    .line 267
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
    .line 350
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 352
    .local v1, len:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 356
    return-object v0

    .line 353
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static currentData()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 294
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v7, stringBuffer:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v10, "00"

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 296
    .local v2, decimalFormat:Ljava/text/DecimalFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 297
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, year:Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, month:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, day:Ljava/lang/String;
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, hour:Ljava/lang/String;
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, minute:Ljava/lang/String;
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, second:Ljava/lang/String;
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, week:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 306
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 307
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static dpuString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 426
    const-string/jumbo v0, ""

    .line 427
    .local v0, buffer:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 428
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

    .line 429
    .local v3, src:[B
    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->packLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, resultLength:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "resultLength=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #resultLength:Ljava/lang/String;
    .end local v3           #src:[B
    :cond_0
    return-object v0
.end method

.method public static hex2bin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hex"

    .prologue
    .line 852
    const-string/jumbo v1, "0123456789ABCDEF"

    .line 853
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 854
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 856
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 861
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    return-object v5

    .line 857
    :cond_0
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 858
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 859
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 856
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hex2bin2byte(Ljava/lang/String;)[B
    .locals 1
    .parameter "hex"

    .prologue
    .line 849
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hex2bin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hex2byte([B)[B
    .locals 5
    .parameter "b"

    .prologue
    .line 896
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 897
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "\u957f\u5ea6\u4e0d\u662f\u5076\u6570"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_0
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 900
    .local v0, b2:[B
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 906
    const/4 p0, 0x0

    .line 907
    return-object v0

    .line 901
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 904
    .local v1, item:Ljava/lang/String;
    div-int/lit8 v3, v2, 0x2

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 900
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public static hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "hexString"

    .prologue
    .line 657
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 658
    :cond_0
    const/4 v0, 0x0

    .line 664
    :cond_1
    return-object v0

    .line 659
    :cond_2
    const-string/jumbo v0, ""

    .line 660
    .local v0, bString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 661
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

    .line 662
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

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;)B
    .locals 7
    .parameter "hexString"

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 250
    .local v3, length:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 251
    .local v1, hexChars:[C
    new-array v0, v3, [B

    .line 252
    .local v0, d:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 256
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    return v5

    .line 253
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    .line 254
    .local v4, pos:I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "hexString"

    .prologue
    .line 225
    if-eqz p0, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    :cond_0
    const/4 v6, 0x0

    new-array v0, v6, [B

    .local v0, bytes:[B
    move-object v1, v0

    .line 237
    .end local v0           #bytes:[B
    :cond_1
    return-object v1

    .line 229
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 231
    .local v4, length:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 232
    .local v2, hexChars:[C
    new-array v1, v4, [B

    .line 233
    .local v1, d:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 234
    mul-int/lit8 v5, v3, 0x2

    .line 235
    .local v5, pos:I
    aget-char v6, v2, v5

    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->charToByte(C)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v5, 0x1

    aget-char v7, v2, v7

    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->charToByte(C)B

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hexStringToWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hexString"

    .prologue
    .line 609
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteToWord([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexToMaskCheckCount(Ljava/lang/String;)[B
    .locals 2
    .parameter "hexString"

    .prologue
    .line 914
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, binary:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->binToMaskCheckCount(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static intPackLength(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 382
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 383
    .local v0, intLength:I
    return v0
.end method

.method public static intPackLength([B)I
    .locals 3
    .parameter "str"

    .prologue
    .line 395
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, byteStr:Ljava/lang/String;
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 397
    .local v1, intLength:I
    return v1
.end method

.method public static intToFourHexBytes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToFourHexBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToFourHexBytes(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 142
    .local v1, len:I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 146
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToFourHexBytesTwo(I)[B
    .locals 9
    .parameter "id"

    .prologue
    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, hexString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 179
    .local v4, len:I
    const/4 v7, 0x2

    if-ge v4, v7, :cond_0

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 183
    :cond_0
    rem-int/lit8 v7, v4, 0x2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 187
    :cond_1
    div-int/lit8 v6, v4, 0x2

    .line 188
    .local v6, validLen:I
    :goto_0
    const/16 v7, 0x8

    if-lt v4, v7, :cond_2

    .line 192
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, d:[B
    const/4 v3, 0x0

    .local v3, j:I
    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1
    if-lt v3, v2, :cond_3

    .line 198
    return-object v0

    .line 189
    .end local v0           #d:[B
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    .line 194
    .restart local v0       #d:[B
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_3
    aget-byte v5, v0, v3

    .line 195
    .local v5, temp:B
    aget-byte v7, v0, v2

    aput-byte v7, v0, v3

    .line 196
    aput-byte v5, v0, v2

    .line 193
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static intToFourHexBytesTwoBefor(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 158
    .local v1, len:I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    :cond_0
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 166
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 163
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

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToHexByte(I)B
    .locals 4
    .parameter "id"

    .prologue
    .line 208
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    .local v1, len:I
    :goto_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 214
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToByte(Ljava/lang/String;)B

    move-result v2

    return v2

    .line 211
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToHexBytes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

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

.method public static intToThreeHexBytesLast(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bin2hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 123
    .local v1, len:I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 127
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static intToTwoHexBytes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToTwoHexBytes(I)[B
    .locals 4
    .parameter "id"

    .prologue
    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, hexString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 111
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 108
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static packLength(I)Ljava/lang/String;
    .locals 4
    .parameter "dataLen"

    .prologue
    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 372
    return-object v0

    .line 369
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method

.method public static packLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, hexLength:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 336
    .local v1, len:I
    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 340
    return-object v0

    .line 337
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
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
    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->XOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, verify:Ljava/lang/String;
    return-object v0
.end method

.method public static parseAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 788
    .local v0, bs:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 790
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 789
    :cond_0
    aget-byte v3, v0, v1

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->toHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static planningMask(Ljava/lang/String;)[B
    .locals 4
    .parameter "mask"

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 933
    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToTwoHexBytes(I)[B

    move-result-object v2

    return-object v2

    .line 929
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    add-int/lit8 v0, v0, 0x1

    .line 928
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 674
    const-string/jumbo v0, ""

    .line 675
    .local v0, dest:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 676
    const-string/jumbo v3, "\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 677
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 678
    .local v1, m:Ljava/util/regex/Matcher;
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
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

    .line 684
    const-string/jumbo v0, ""

    .line 685
    .local v0, dest:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 686
    const-string/jumbo v7, "\t|\r|\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 687
    .local v6, p:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 688
    .local v5, m:Ljava/util/regex/Matcher;
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 693
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, destfenge:Ljava/lang/String;
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, destfenge1:Ljava/lang/String;
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, destfenge2:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 697
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

    .line 699
    .end local v1           #destfenge:Ljava/lang/String;
    .end local v2           #destfenge1:Ljava/lang/String;
    .end local v3           #destfenge2:Ljava/lang/String;
    .end local v4           #destfenge3:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static stringToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 812
    const-string/jumbo v0, ""

    .line 814
    .local v0, command:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #command:Ljava/lang/String;
    .local v1, command:Ljava/lang/String;
    move-object v0, v1

    .line 818
    .end local v1           #command:Ljava/lang/String;
    .restart local v0       #command:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 815
    :catch_0
    move-exception v2

    .line 816
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 5
    .parameter "n"

    .prologue
    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .local v1, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v3, p0, 0x10

    if-nez v3, :cond_0

    .line 776
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->toHexUtil(I)Ljava/lang/String;

    move-result-object v3

    .line 782
    :goto_0
    return-object v3

    .line 778
    :cond_0
    div-int/lit8 v3, p0, 0x10

    invoke-static {v3}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->toHex(I)Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, t:Ljava/lang/String;
    rem-int/lit8 v0, p0, 0x10

    .line 780
    .local v0, nn:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->toHexUtil(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static toHexUtil(I)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 759
    const-string/jumbo v0, ""

    .line 760
    .local v0, rt:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    .line 761
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

    goto :goto_0

    .line 762
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

    goto :goto_0

    .line 763
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

    goto :goto_0

    .line 764
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

    goto :goto_0

    .line 765
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

    goto :goto_0

    .line 766
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

    goto :goto_0

    .line 760
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
    .line 706
    if-eqz p0, :cond_1

    .line 707
    array-length v3, p0

    .line 708
    .local v3, total_bytes:I
    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 709
    const/4 v4, 0x0

    .line 710
    .local v4, walkthrough:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v0, result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lt v4, v5, :cond_0

    .line 723
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :goto_1
    return-object v0

    .line 712
    .restart local v0       #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #total_bytes:I
    .restart local v4       #walkthrough:I
    :cond_0
    aget-byte v5, p0, v4

    shl-int/lit8 v5, v5, 0x8

    .line 713
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    .line 712
    or-int v2, v5, v6

    .line 714
    .local v2, temp_len:I
    add-int/lit8 v5, v2, -0x1

    new-array v1, v5, [B

    .line 715
    .local v1, str_bytes:[B
    add-int/lit8 v5, v4, 0x2

    const/4 v6, 0x0

    .line 716
    add-int/lit8 v7, v2, -0x1

    .line 715
    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    goto :goto_0

    .line 723
    .end local v0           #result_strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #str_bytes:[B
    .end local v2           #temp_len:I
    .end local v3           #total_bytes:I
    .end local v4           #walkthrough:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
