.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$Algorithm;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$ECKeyInfo;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
    }
.end annotation


# static fields
.field private static final ASN1_INT:I = 0x2

.field private static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14

.field private static final ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 397
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x20

    .line 398
    const-string/jumbo v2, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    .line 399
    const-string/jumbo v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    .line 400
    const-string/jumbo v4, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    .line 401
    const-string/jumbo v5, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    .line 402
    const-string/jumbo v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    .line 403
    const-string/jumbo v7, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    .line 397
    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 406
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x30

    .line 407
    const-string/jumbo v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    .line 408
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    .line 409
    const-string/jumbo v4, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    .line 410
    const-string/jumbo v5, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    .line 411
    const-string/jumbo v6, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    .line 412
    const-string/jumbo v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    .line 406
    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 571
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 1
    .parameter "i"

    .prologue
    .line 319
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .locals 12
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x14

    const/4 v9, 0x0

    .line 575
    array-length v7, p0

    const/16 v8, 0x29

    if-eq v7, v8, :cond_0

    .line 576
    new-instance v7, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v7

    .line 578
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 579
    .local v0, in:Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 581
    .local v1, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 583
    .local v6, t:I
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 584
    .local v2, r:[B
    const/16 v3, 0x14

    .line 585
    .local v3, rlen:I
    aget-byte v7, v2, v9

    if-gez v7, :cond_1

    .line 586
    add-int/lit8 v3, v3, 0x1

    .line 588
    :cond_1
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 589
    .local v4, s:[B
    const/16 v5, 0x14

    .line 590
    .local v5, slen:I
    aget-byte v7, v4, v9

    if-gez v7, :cond_2

    .line 591
    add-int/lit8 v5, v5, 0x1

    .line 593
    :cond_2
    const/16 v7, 0x30

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 594
    add-int v7, v3, v5

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 596
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 597
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 598
    if-le v3, v10, :cond_3

    .line 599
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 600
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 602
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 603
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 604
    if-le v5, v10, :cond_4

    .line 605
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 606
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 608
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private static DSASignaturetoDNS([BI)[B
    .locals 11
    .parameter "signature"
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x15

    const/4 v9, 0x2

    const/16 v8, 0x14

    .line 613
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 614
    .local v1, in:Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 616
    .local v2, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 618
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 619
    .local v6, tmp:I
    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 620
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 621
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 623
    .local v4, seqlen:I
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 624
    if-eq v6, v9, :cond_1

    .line 625
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 626
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 627
    .local v3, rlen:I
    if-ne v3, v10, :cond_2

    .line 628
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_3

    .line 629
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 630
    :cond_2
    if-eq v3, v8, :cond_3

    .line 631
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 632
    :cond_3
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 633
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 635
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 636
    if-eq v6, v9, :cond_4

    .line 637
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 638
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 639
    .local v5, slen:I
    if-ne v5, v10, :cond_5

    .line 640
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_6

    .line 641
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 642
    :cond_5
    if-eq v5, v8, :cond_6

    .line 643
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 644
    :cond_6
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 645
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 647
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private static ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 10
    .parameter "signature"
    .parameter "keyinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 654
    array-length v6, p0

    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v7, v7, 0x2

    if-eq v6, v7, :cond_0

    .line 655
    new-instance v6, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v6

    .line 657
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 658
    .local v0, in:Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 660
    .local v1, out:Lorg/xbill/DNS/DNSOutput;
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 661
    .local v2, r:[B
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 662
    .local v3, rlen:I
    aget-byte v6, v2, v8

    if-gez v6, :cond_1

    .line 663
    add-int/lit8 v3, v3, 0x1

    .line 665
    :cond_1
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 666
    .local v4, s:[B
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 667
    .local v5, slen:I
    aget-byte v6, v4, v8

    if-gez v6, :cond_2

    .line 668
    add-int/lit8 v5, v5, 0x1

    .line 670
    :cond_2
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 671
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 673
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 674
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 675
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v3, v6, :cond_3

    .line 676
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 677
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 679
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 680
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 681
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v5, v6, :cond_4

    .line 682
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 683
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 685
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 9
    .parameter "signature"
    .parameter "keyinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 690
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 691
    .local v1, in:Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 693
    .local v2, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 694
    .local v6, tmp:I
    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 695
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 696
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 698
    .local v4, seqlen:I
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 699
    if-eq v6, v8, :cond_1

    .line 700
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 701
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 702
    .local v3, rlen:I
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v7, v7, 0x1

    if-ne v3, v7, :cond_2

    .line 703
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_3

    .line 704
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 705
    :cond_2
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-eq v3, v7, :cond_3

    .line 706
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 707
    :cond_3
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 708
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 710
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 711
    if-eq v6, v8, :cond_4

    .line 712
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 713
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 714
    .local v5, slen:I
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v7, :cond_5

    .line 715
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_6

    .line 716
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 717
    :cond_5
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-eq v5, v7, :cond_6

    .line 718
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 719
    :cond_6
    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 720
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 722
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static algString(I)Ljava/lang/String;
    .locals 1
    .parameter "alg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 546
    packed-switch p0, :pswitch_data_0

    .line 564
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 548
    :pswitch_1
    const-string/jumbo v0, "MD5withRSA"

    .line 562
    :goto_0
    return-object v0

    .line 551
    :pswitch_2
    const-string/jumbo v0, "SHA1withDSA"

    goto :goto_0

    .line 554
    :pswitch_3
    const-string/jumbo v0, "SHA1withRSA"

    goto :goto_0

    .line 556
    :pswitch_4
    const-string/jumbo v0, "SHA256withRSA"

    goto :goto_0

    .line 558
    :pswitch_5
    const-string/jumbo v0, "SHA512withRSA"

    goto :goto_0

    .line 560
    :pswitch_6
    const-string/jumbo v0, "SHA256withECDSA"

    goto :goto_0

    .line 562
    :pswitch_7
    const-string/jumbo v0, "SHA384withECDSA"

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 1
    .parameter "key"
    .parameter "alg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 860
    packed-switch p1, :pswitch_data_0

    .line 880
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 866
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 871
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 876
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 882
    :cond_0
    return-void

    .line 860
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 2
    .parameter "sig"
    .parameter "msg"
    .parameter "previous"

    .prologue
    .line 183
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 184
    .local v0, out:Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 186
    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 189
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 190
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 13
    .parameter "rrsig"
    .parameter "rrset"

    .prologue
    .line 134
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 135
    .local v5, out:Lorg/xbill/DNS/DNSOutput;
    invoke-static {v5, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 137
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v9

    .line 138
    .local v9, size:I
    new-array v6, v9, [Lorg/xbill/DNS/Record;

    .line 140
    .local v6, records:[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, it:Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 142
    .local v4, name:Lorg/xbill/DNS/Name;
    const/4 v10, 0x0

    .line 143
    .local v10, wild:Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 144
    .local v8, sigLabels:I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    if-le v11, v8, :cond_0

    .line 145
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v4, v11}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 146
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 148
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 150
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 151
    .local v0, header:Lorg/xbill/DNS/DNSOutput;
    if-eqz v10, :cond_2

    .line 152
    invoke-virtual {v10, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 155
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 156
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 157
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v11, v6

    if-lt v1, v11, :cond_3

    .line 169
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 147
    .end local v0           #header:Lorg/xbill/DNS/DNSOutput;
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/xbill/DNS/Record;

    aput-object v11, v6, v9

    goto :goto_0

    .line 154
    .restart local v0       #header:Lorg/xbill/DNS/DNSOutput;
    :cond_2
    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 159
    .restart local v1       #i:I
    :cond_3
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 160
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 161
    .local v3, lengthPosition:I
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 162
    aget-object v11, v6, v1

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 163
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v11

    sub-int/2addr v11, v3

    add-int/lit8 v7, v11, -0x2

    .line 164
    .local v7, rrlength:I
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 165
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 166
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 167
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 4
    .parameter "out"
    .parameter "sig"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 114
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 116
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 117
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 118
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 119
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 122
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .parameter "key"

    .prologue
    .line 481
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 482
    .local v1, out:Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 483
    .local v3, q:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 484
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 485
    .local v0, g:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 486
    .local v5, y:Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x40

    div-int/lit8 v4, v6, 0x8

    .line 488
    .local v4, t:I
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 489
    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 490
    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 491
    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 492
    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 494
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;)[B
    .locals 4
    .parameter "key"

    .prologue
    .line 499
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 501
    .local v0, out:Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 502
    .local v1, x:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 504
    .local v2, y:Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 505
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 507
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 1
    .parameter "key"
    .parameter "alg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 515
    packed-switch p1, :pswitch_data_0

    .line 535
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 521
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 523
    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .end local p0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 526
    .restart local p0
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 528
    :cond_1
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 531
    .restart local p0
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_2

    .line 532
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 533
    :cond_2
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .end local p0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .parameter "key"

    .prologue
    .line 462
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 463
    .local v3, out:Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 464
    .local v0, exponent:Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 465
    .local v2, modulus:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 467
    .local v1, exponentLength:I
    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    .line 468
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 473
    :goto_0
    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 474
    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 476
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 470
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 471
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method

.method static generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 5
    .parameter "key"
    .parameter "digestid"

    .prologue
    .line 1003
    packed-switch p1, :pswitch_data_0

    .line 1014
    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown DS digest type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1014
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no message digest support"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1005
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "sha-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1021
    .local v0, digest:Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1022
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1023
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 1008
    .end local v0           #digest:Ljava/security/MessageDigest;
    :pswitch_2
    :try_start_2
    const-string/jumbo v2, "sha-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1009
    .restart local v0       #digest:Ljava/security/MessageDigest;
    goto :goto_0

    .line 1011
    .end local v0           #digest:Ljava/security/MessageDigest;
    :pswitch_3
    const-string/jumbo v2, "sha-384"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1012
    .restart local v0       #digest:Ljava/security/MessageDigest;
    goto :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .locals 2
    .parameter "sig"
    .parameter "key"

    .prologue
    .line 771
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 772
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 773
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .locals 3
    .parameter "in"

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 331
    .local v0, b:[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 3
    .parameter "in"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 325
    .local v0, b:[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .parameter "rrset"
    .parameter "key"
    .parameter "privkey"
    .parameter "inception"
    .parameter "expiration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 16
    .parameter "rrset"
    .parameter "key"
    .parameter "privkey"
    .parameter "inception"
    .parameter "expiration"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v8

    .line 924
    .local v8, alg:I
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 926
    new-instance v2, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v4

    .line 927
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v7

    .line 928
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v9

    .line 930
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v13

    .line 931
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    .line 926
    invoke-direct/range {v2 .. v15}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 933
    .local v2, rrsig:Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 934
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v4

    .line 933
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v8, v4, v1}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 935
    return-object v2
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 9
    .parameter "privkey"
    .parameter "pubkey"
    .parameter "alg"
    .parameter "data"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 813
    if-eqz p4, :cond_1

    .line 814
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 817
    .local v4, s:Ljava/security/Signature;
    :goto_0
    invoke-virtual {v4, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 818
    invoke-virtual {v4, p3}, Ljava/security/Signature;->update([B)V

    .line 819
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 825
    .local v5, signature:[B
    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_2

    .line 827
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 828
    .local v2, dsa:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 829
    .local v1, P:Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    div-int/lit8 v6, v7, 0x8

    .line 830
    .local v6, t:I
    invoke-static {v5, v6}, Lorg/xbill/DNS/DNSSEC;->DSASignaturetoDNS([BI)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 855
    .end local v1           #P:Ljava/math/BigInteger;
    .end local v2           #dsa:Ljava/security/interfaces/DSAPublicKey;
    .end local v6           #t:I
    :cond_0
    :goto_1
    return-object v5

    .line 816
    .end local v4           #s:Ljava/security/Signature;
    .end local v5           #signature:[B
    :cond_1
    :try_start_2
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .restart local v4       #s:Ljava/security/Signature;
    goto :goto_0

    .line 821
    .end local v4           #s:Ljava/security/Signature;
    :catch_0
    move-exception v3

    .line 822
    .local v3, e:Ljava/security/GeneralSecurityException;
    new-instance v7, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 832
    .end local v3           #e:Ljava/security/GeneralSecurityException;
    .restart local v4       #s:Ljava/security/Signature;
    .restart local v5       #signature:[B
    :catch_1
    move-exception v3

    .line 833
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 835
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    instance-of v7, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v7, :cond_0

    .line 837
    packed-switch p2, :pswitch_data_0

    .line 847
    :try_start_3
    new-instance v7, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v7, p2}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 850
    :catch_2
    move-exception v3

    .line 851
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 840
    .end local v3           #e:Ljava/io/IOException;
    :pswitch_0
    :try_start_4
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 839
    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v5

    .line 841
    goto :goto_1

    .line 844
    :pswitch_1
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 843
    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 845
    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .locals 16
    .parameter "message"
    .parameter "previous"
    .parameter "key"
    .parameter "privkey"
    .parameter "inception"
    .parameter "expiration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v7

    .line 944
    .local v7, alg:I
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 946
    new-instance v1, Lorg/xbill/DNS/SIGRecord;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 947
    const-wide/16 v8, 0x0

    .line 948
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v12

    .line 949
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    .line 946
    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 950
    .local v1, sig:Lorg/xbill/DNS/SIGRecord;
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 951
    .local v15, out:Lorg/xbill/DNS/DNSOutput;
    invoke-static {v15, v1}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 952
    if-eqz p1, :cond_0

    .line 953
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 954
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 957
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 956
    move-object/from16 v0, p3

    invoke-static {v0, v2, v7, v3, v4}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 958
    return-object v1
.end method

.method private static toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 8
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 362
    .local v2, in:Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 363
    .local v5, t:I
    const/16 v7, 0x8

    if-le v5, v7, :cond_0

    .line 364
    new-instance v7, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v7, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v7

    .line 366
    :cond_0
    const/16 v7, 0x14

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 367
    .local v4, q:Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 368
    .local v3, p:Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 369
    .local v1, g:Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v6

    .line 371
    .local v6, y:Ljava/math/BigInteger;
    const-string/jumbo v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 372
    .local v0, factory:Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v6, v3, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7
.end method

.method private static toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 7
    .parameter "r"
    .parameter "keyinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 421
    .local v1, in:Lorg/xbill/DNS/DNSInput;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 422
    .local v3, x:Ljava/math/BigInteger;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 423
    .local v4, y:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 425
    .local v2, q:Ljava/security/spec/ECPoint;
    const-string/jumbo v5, "EC"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 426
    .local v0, factory:Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v2, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 4
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    .line 434
    .local v0, alg:I
    packed-switch v0, :pswitch_data_0

    .line 449
    :pswitch_0
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2

    .line 440
    .end local v1           #e:Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v2

    .line 447
    :goto_0
    return-object v2

    .line 443
    :pswitch_2
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 445
    :pswitch_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 447
    :pswitch_4
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 455
    :catch_1
    move-exception v1

    .line 456
    .local v1, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 346
    .local v3, in:Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 347
    .local v1, exponentLength:I
    if-nez v1, :cond_0

    .line 348
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 349
    :cond_0
    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 350
    .local v0, exponent:Ljava/math/BigInteger;
    invoke-static {v3}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v4

    .line 352
    .local v4, modulus:Ljava/math/BigInteger;
    const-string/jumbo v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 353
    .local v2, factory:Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v4, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .locals 4
    .parameter "key"
    .parameter "alg"
    .parameter "data"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 729
    instance-of v2, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_1

    .line 731
    :try_start_0
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturefromDNS([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 757
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 758
    .local v1, s:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 759
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 760
    invoke-virtual {v1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 761
    new-instance v2, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 763
    .end local v1           #s:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 733
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 736
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    instance-of v2, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_0

    .line 738
    packed-switch p1, :pswitch_data_0

    .line 748
    :try_start_2
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 751
    :catch_2
    move-exception v0

    .line 752
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 741
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    :try_start_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 740
    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object p3

    .line 742
    goto :goto_0

    .line 745
    :pswitch_1
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 744
    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p3

    .line 746
    goto :goto_0

    .line 766
    .restart local v1       #s:Ljava/security/Signature;
    :cond_2
    return-void

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 5
    .parameter "rrset"
    .parameter "rrsig"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    new-instance v1, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v1, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v1

    .line 795
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 796
    .local v0, now:Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_1

    .line 797
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 798
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    .line 799
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 802
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    .line 803
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    .line 802
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 804
    return-void
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .locals 7
    .parameter "message"
    .parameter "bytes"
    .parameter "sig"
    .parameter "previous"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 966
    new-instance v3, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v3, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v3

    .line 968
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 970
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_1

    .line 971
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 972
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_2

    .line 973
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 976
    :cond_2
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 977
    .local v2, out:Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 978
    if-eqz p3, :cond_3

    .line 979
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 981
    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    .line 982
    .local v0, header:Lorg/xbill/DNS/Header;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 983
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 985
    const/16 v3, 0xc

    .line 986
    iget v4, p0, Lorg/xbill/DNS/Message;->sig0start:I

    add-int/lit8 v4, v4, -0xc

    .line 985
    invoke-virtual {v2, p1, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 988
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    .line 989
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    .line 988
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 990
    return-void
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .locals 3
    .parameter "out"
    .parameter "val"

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 337
    .local v0, b:[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    .line 338
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0
.end method
