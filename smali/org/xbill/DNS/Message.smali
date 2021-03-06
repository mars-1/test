.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static emptyRRsetArray:[Lorg/xbill/DNS/RRset;

.field private static emptyRecordArray:[Lorg/xbill/DNS/Record;


# instance fields
.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private sections:[Ljava/util/List;

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-array v0, v1, [Lorg/xbill/DNS/Record;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 54
    new-array v0, v1, [Lorg/xbill/DNS/RRset;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 65
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v10, Lorg/xbill/DNS/Header;

    invoke-direct {v10, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v10}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    .line 100
    iget-object v10, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v10}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 101
    .local v4, isUpdate:Z
    :goto_0
    iget-object v10, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v9

    .line 103
    .local v9, truncated:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v10, 0x4

    if-lt v3, v10, :cond_2

    .line 126
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v10

    iput v10, p0, Lorg/xbill/DNS/Message;->size:I

    .line 127
    return-void

    .line 100
    .end local v3           #i:I
    .end local v4           #isUpdate:Z
    .end local v9           #truncated:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 104
    .restart local v3       #i:I
    .restart local v4       #isUpdate:Z
    .restart local v9       #truncated:Z
    :cond_2
    :try_start_0
    iget-object v10, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v10, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    .line 105
    .local v1, count:I
    if-lez v1, :cond_3

    .line 106
    iget-object v10, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v11, v10, v3

    .line 107
    :cond_3
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v1, :cond_4

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    .line 109
    .local v6, pos:I
    invoke-static {p1, v3, v4}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 110
    .local v7, rec:Lorg/xbill/DNS/Record;
    iget-object v10, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v10, v10, v3

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v10, 0x3

    if-ne v3, v10, :cond_6

    .line 112
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v10

    const/16 v11, 0xfa

    if-ne v10, v11, :cond_5

    .line 113
    iput v6, p0, Lorg/xbill/DNS/Message;->tsigstart:I

    .line 114
    :cond_5
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v10

    const/16 v11, 0x18

    if-ne v10, v11, :cond_6

    .line 115
    move-object v0, v7

    check-cast v0, Lorg/xbill/DNS/SIGRecord;

    move-object v8, v0

    .line 116
    .local v8, sig:Lorg/xbill/DNS/SIGRecord;
    invoke-virtual {v8}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v10

    if-nez v10, :cond_6

    .line 117
    iput v6, p0, Lorg/xbill/DNS/Message;->sig0start:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v8           #sig:Lorg/xbill/DNS/SIGRecord;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 122
    .end local v1           #count:I
    .end local v5           #j:I
    .end local v6           #pos:I
    .end local v7           #rec:Lorg/xbill/DNS/Record;
    :catch_0
    move-exception v2

    .line 123
    .local v2, e:Lorg/xbill/DNS/WireParseException;
    if-nez v9, :cond_0

    .line 124
    throw v2
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 60
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 136
    return-void
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 82
    .local v0, m:Lorg/xbill/DNS/Message;
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 83
    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 84
    invoke-virtual {v0, p0, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 85
    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .locals 1
    .parameter "zone"

    .prologue
    .line 95
    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private static sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z
    .locals 2
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .locals 7
    .parameter "out"
    .parameter "section"
    .parameter "c"
    .parameter "maxLength"

    .prologue
    .line 405
    iget-object v6, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v6, v6, p2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 406
    .local v2, n:I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 407
    .local v3, pos:I
    const/4 v5, 0x0

    .line 408
    .local v5, rendered:I
    const/4 v1, 0x0

    .line 410
    .local v1, lastrec:Lorg/xbill/DNS/Record;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 423
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 411
    :cond_0
    iget-object v6, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v6, v6, p2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    .line 412
    .local v4, rec:Lorg/xbill/DNS/Record;
    if-eqz v1, :cond_1

    invoke-static {v4, v1}, Lorg/xbill/DNS/Message;->sameSet(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Record;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 413
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 414
    move v5, v0

    .line 416
    :cond_1
    move-object v1, v4

    .line 417
    invoke-virtual {v4, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 418
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v6

    if-le v6, p4, :cond_2

    .line 419
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 420
    sub-int v6, v2, v5

    goto :goto_1

    .line 410
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)Z
    .locals 13
    .parameter "out"
    .parameter "maxLength"

    .prologue
    .line 429
    const/16 v9, 0xc

    if-ge p2, v9, :cond_0

    .line 430
    const/4 v9, 0x0

    .line 479
    :goto_0
    return v9

    .line 432
    :cond_0
    const/4 v4, 0x0

    .line 434
    .local v4, newheader:Lorg/xbill/DNS/Header;
    move v7, p2

    .line 435
    .local v7, tempMaxLength:I
    iget-object v9, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v9, :cond_1

    .line 436
    iget-object v9, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {v9}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v9

    sub-int/2addr v7, v9

    .line 438
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v6

    .line 439
    .local v6, startpos:I
    iget-object v9, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v9, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 440
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 441
    .local v0, c:Lorg/xbill/DNS/Compression;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v9, 0x4

    if-lt v2, v9, :cond_4

    .line 464
    :goto_2
    iget-object v9, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v9, :cond_3

    .line 465
    iget-object v9, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v10

    .line 466
    iget v11, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v12, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    .line 465
    invoke-virtual {v9, p0, v10, v11, v12}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v8

    .line 468
    .local v8, tsigrec:Lorg/xbill/DNS/TSIGRecord;
    if-nez v4, :cond_2

    .line 469
    iget-object v9, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newheader:Lorg/xbill/DNS/Header;
    check-cast v4, Lorg/xbill/DNS/Header;

    .line 470
    .restart local v4       #newheader:Lorg/xbill/DNS/Header;
    :cond_2
    const/4 v9, 0x3

    invoke-virtual {v8, p1, v9, v0}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 471
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 473
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 474
    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 475
    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 476
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 479
    .end local v8           #tsigrec:Lorg/xbill/DNS/TSIGRecord;
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 443
    :cond_4
    iget-object v9, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v9, v9, v2

    if-nez v9, :cond_6

    .line 441
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_6
    invoke-direct {p0, p1, v2, v0, v7}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v5

    .line 446
    .local v5, skipped:I
    if-eqz v5, :cond_5

    .line 447
    if-nez v4, :cond_7

    .line 448
    iget-object v9, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v9}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newheader:Lorg/xbill/DNS/Header;
    check-cast v4, Lorg/xbill/DNS/Header;

    .line 449
    .restart local v4       #newheader:Lorg/xbill/DNS/Header;
    :cond_7
    const/4 v9, 0x3

    if-eq v2, v9, :cond_8

    .line 450
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 451
    :cond_8
    invoke-virtual {v4, v2}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v1

    .line 452
    .local v1, count:I
    sub-int v9, v1, v5

    invoke-virtual {v4, v2, v9}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 453
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_3
    const/4 v9, 0x4

    if-lt v3, v9, :cond_9

    .line 456
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 457
    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 458
    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 459
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    goto :goto_2

    .line 454
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 2
    .parameter "r"
    .parameter "section"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 166
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 601
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1}, Lorg/xbill/DNS/Message;-><init>()V

    .line 602
    .local v1, m:Lorg/xbill/DNS/Message;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 606
    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Header;

    iput-object v2, v1, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 607
    iget v2, p0, Lorg/xbill/DNS/Message;->size:I

    iput v2, v1, Lorg/xbill/DNS/Message;->size:I

    .line 608
    return-object v1

    .line 603
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, v1, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    .line 602
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .locals 2
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .locals 4
    .parameter "name"
    .parameter "type"
    .parameter "section"

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, p3

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, p3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v3, v3, p3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 230
    .local v1, r:Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    const/4 v2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 212
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 215
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const/4 v1, 0x1

    goto :goto_1

    .line 212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .parameter "r"
    .parameter "section"

    .prologue
    .line 202
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    .prologue
    .line 307
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 308
    .local v0, additional:[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 311
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 309
    :cond_0
    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_1

    .line 310
    aget-object v2, v0, v1

    check-cast v2, Lorg/xbill/DNS/OPTRecord;

    goto :goto_1

    .line 308
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v1, v2

    .line 257
    .local v0, l:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 258
    :cond_0
    const/4 v1, 0x0

    .line 259
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public getRcode()I
    .locals 3

    .prologue
    .line 320
    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v1

    .line 321
    .local v1, rcode:I
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 322
    .local v0, opt:Lorg/xbill/DNS/OPTRecord;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 324
    :cond_0
    return v1
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .locals 2
    .parameter "section"

    .prologue
    .line 335
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 336
    sget-object v1, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    .line 338
    :goto_0
    return-object v1

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v1, p1

    .line 338
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    goto :goto_0
.end method

.method public getSectionRRsets(I)[Lorg/xbill/DNS/RRset;
    .locals 10
    .parameter "section"

    .prologue
    .line 356
    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v8, v8, p1

    if-nez v8, :cond_0

    .line 357
    sget-object v8, Lorg/xbill/DNS/Message;->emptyRRsetArray:[Lorg/xbill/DNS/RRset;

    .line 383
    :goto_0
    return-object v8

    .line 358
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 359
    .local v7, sets:Ljava/util/List;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v5

    .line 360
    .local v5, recs:[Lorg/xbill/DNS/Record;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v0, hash:Ljava/util/Set;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v5

    if-lt v1, v8, :cond_1

    .line 383
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/xbill/DNS/RRset;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/xbill/DNS/RRset;

    goto :goto_0

    .line 362
    :cond_1
    aget-object v8, v5, v1

    invoke-virtual {v8}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 363
    .local v3, name:Lorg/xbill/DNS/Name;
    const/4 v4, 0x1

    .line 364
    .local v4, newset:Z
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, j:I
    :goto_2
    if-gez v2, :cond_4

    .line 377
    .end local v2           #j:I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 378
    new-instance v6, Lorg/xbill/DNS/RRset;

    aget-object v8, v5, v1

    invoke-direct {v6, v8}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 379
    .local v6, set:Lorg/xbill/DNS/RRset;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v6           #set:Lorg/xbill/DNS/RRset;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    .restart local v2       #j:I
    :cond_4
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/RRset;

    .line 367
    .restart local v6       #set:Lorg/xbill/DNS/RRset;
    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    aget-object v9, v5, v1

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 368
    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v8

    aget-object v9, v5, v1

    invoke-virtual {v9}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 369
    invoke-virtual {v6}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    .line 372
    const/4 v4, 0x0

    .line 373
    goto :goto_3

    .line 365
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    .line 270
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    .line 271
    .local v0, count:I
    if-nez v0, :cond_0

    move-object v2, v3

    .line 277
    :goto_0
    return-object v2

    .line 273
    :cond_0
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v1, v4, v5

    .line 274
    .local v1, l:Ljava/util/List;
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 275
    .local v2, rec:Lorg/xbill/DNS/Record;
    iget v4, v2, Lorg/xbill/DNS/Record;->type:I

    const/16 v5, 0xfa

    if-eq v4, v5, :cond_1

    move-object v2, v3

    .line 276
    goto :goto_0

    .line 277
    :cond_1
    check-cast v2, Lorg/xbill/DNS/TSIGRecord;

    goto :goto_0
.end method

.method public isSigned()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 287
    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-eq v1, v0, :cond_0

    .line 288
    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 286
    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isVerified()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 297
    iget v1, p0, Lorg/xbill/DNS/Message;->tsigState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numBytes()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2
    .parameter "section"

    .prologue
    .line 191
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    .line 193
    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1
    .parameter "r"
    .parameter "section"

    .prologue
    .line 176
    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 6
    .parameter "i"

    .prologue
    .line 542
    const/4 v4, 0x3

    if-le p1, v4, :cond_0

    .line 543
    const/4 v4, 0x0

    .line 559
    :goto_0
    return-object v4

    .line 545
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 547
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 548
    .local v2, records:[Lorg/xbill/DNS/Record;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_1

    .line 559
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 549
    :cond_1
    aget-object v1, v2, v0

    .line 550
    .local v1, rec:Lorg/xbill/DNS/Record;
    if-nez p1, :cond_2

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";;\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", class = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v5}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :goto_2
    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 144
    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 145
    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0
    .parameter "key"
    .parameter "error"
    .parameter "querytsig"

    .prologue
    .line 522
    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    .line 523
    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    .line 524
    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    .line 525
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 567
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 568
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    .line 569
    .local v1, opt:Lorg/xbill/DNS/OPTRecord;
    if-eqz v1, :cond_1

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    const-string/jumbo v3, ";; TSIG "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    const-string/jumbo v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 581
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v3, 0x4

    if-lt v0, v3, :cond_3

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";; Message size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 572
    .end local v0           #i:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 578
    :cond_2
    const-string/jumbo v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 582
    .restart local v0       #i:I
    :cond_3
    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->sectionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 585
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";; "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 388
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 389
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    .line 390
    .local v0, c:Lorg/xbill/DNS/Compression;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_0

    .line 398
    return-void

    .line 391
    :cond_0
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    if-nez v4, :cond_2

    .line 390
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 394
    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 395
    .local v3, rec:Lorg/xbill/DNS/Record;
    invoke-virtual {v3, p1, v1, v0}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 487
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 488
    .local v0, out:Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 489
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 490
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWire(I)[B
    .locals 2
    .parameter "maxLength"

    .prologue
    .line 508
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 509
    .local v0, out:Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)Z

    .line 510
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 511
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
