.class Lcom/itextpdf/text/pdf/CJKFont;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "CJKFont.java"


# static fields
.field private static final BRACKET:I = 0x1

.field static final CJK_ENCODING:Ljava/lang/String; = "UnicodeBigUnmarked"

.field private static final FIRST:I = 0x0

.field private static final SERIAL:I = 0x2

.field private static final V1Y:I = 0x370

.field static allCMaps:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field static allFonts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static cjkEncodings:Ljava/util/Properties;

.field static cjkFonts:Ljava/util/Properties;

.field private static propertiesLoaded:Z


# instance fields
.field private CMap:Ljava/lang/String;

.field private cidDirect:Z

.field private fontDesc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fontName:Ljava/lang/String;

.field private hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

.field private style:Ljava/lang/String;

.field private translationMap:[C

.field private vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

.field private vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->cjkEncodings:Ljava/util/Properties;

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    .line 75
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/Hashtable;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "fontName"
    .parameter "enc"
    .parameter "emb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 121
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 81
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    .line 85
    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    .line 91
    iput-boolean v10, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    .line 122
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadProperties()V

    .line 123
    const/4 v8, 0x2

    iput v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontType:I

    .line 124
    invoke-static {p1}, Lcom/itextpdf/text/pdf/CJKFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, nameBase:Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/itextpdf/text/pdf/CJKFont;->isCJKFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 126
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "font.1.with.2.encoding.is.not.a.cjk.font"

    invoke-static {v9, p1, p2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    .line 129
    move-object p1, v3

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 132
    const-string/jumbo v8, "UnicodeBigUnmarked"

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->encoding:Ljava/lang/String;

    .line 133
    const-string/jumbo v8, "V"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    .line 134
    iput-object p2, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    .line 135
    const-string/jumbo v8, "Identity-"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 136
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    .line 137
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    invoke-virtual {v8, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, s:Ljava/lang/String;
    const/16 v8, 0x5f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 139
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 140
    .local v0, c:[C
    if-nez v0, :cond_3

    .line 141
    invoke-static {v6}, Lcom/itextpdf/text/pdf/CJKFont;->readCMap(Ljava/lang/String;)[C

    move-result-object v0

    .line 142
    if-nez v0, :cond_2

    .line 143
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "the.cmap.1.does.not.exist.as.a.resource"

    invoke-static {v9, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    :cond_2
    const/16 v8, 0x7fff

    const/16 v9, 0xa

    aput-char v9, v0, v8

    .line 145
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    iput-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    .line 175
    .end local v6           #s:Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    .line 176
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    if-nez v8, :cond_4

    .line 177
    invoke-static {p1}, Lcom/itextpdf/text/pdf/CJKFont;->readFontProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    .line 178
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/Hashtable;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v9, "W"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 181
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v9, "W2"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 182
    return-void

    .line 150
    .end local v0           #c:[C
    :cond_5
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 151
    .restart local v0       #c:[C
    if-nez v0, :cond_a

    .line 152
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->cjkEncodings:Ljava/util/Properties;

    invoke-virtual {v8, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .restart local v6       #s:Ljava/lang/String;
    if-nez v6, :cond_6

    .line 154
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "the.resource.cjkencodings.properties.does.not.contain.the.encoding.1"

    invoke-static {v9, p2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_6
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 156
    .local v7, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, nt:Ljava/lang/String;
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:[C
    check-cast v0, [C

    .line 158
    .restart local v0       #c:[C
    if-nez v0, :cond_7

    .line 159
    invoke-static {v4}, Lcom/itextpdf/text/pdf/CJKFont;->readCMap(Ljava/lang/String;)[C

    move-result-object v0

    .line 160
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_7
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 163
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, nt2:Ljava/lang/String;
    invoke-static {v5}, Lcom/itextpdf/text/pdf/CJKFont;->readCMap(Ljava/lang/String;)[C

    move-result-object v2

    .line 165
    .local v2, m2:[C
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    const/high16 v8, 0x1

    if-ge v1, v8, :cond_9

    .line 166
    aget-char v8, v2, v1

    if-nez v8, :cond_8

    .line 167
    aget-char v8, v0, v1

    aput-char v8, v2, v1

    .line 165
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_9
    sget-object v8, Lcom/itextpdf/text/pdf/CJKFont;->allCMaps:Ljava/util/Hashtable;

    invoke-virtual {v8, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-object v0, v2

    .line 173
    .end local v1           #k:I
    .end local v2           #m2:[C
    .end local v4           #nt:Ljava/lang/String;
    .end local v5           #nt2:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #tk:Ljava/util/StringTokenizer;
    :cond_a
    iput-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    goto/16 :goto_0
.end method

.method static convertToHCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 13
    .parameter "keys"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x5d

    const/16 v11, 0x5b

    const/16 v10, 0x20

    .line 450
    array-length v9, p0

    if-nez v9, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object v8

    .line 452
    :cond_1
    const/4 v3, 0x0

    .line 453
    .local v3, lastCid:I
    const/4 v4, 0x0

    .line 455
    .local v4, lastValue:I
    const/4 v5, 0x0

    .local v5, start:I
    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_2

    .line 456
    aget v3, p0, v5

    .line 457
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v4

    .line 458
    if-eqz v4, :cond_3

    .line 459
    add-int/lit8 v5, v5, 0x1

    .line 463
    :cond_2
    if-eqz v4, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 468
    const/4 v6, 0x0

    .line 469
    .local v6, state:I
    move v2, v5

    .local v2, k:I
    :goto_2
    array-length v8, p0

    if-ge v2, v8, :cond_b

    .line 470
    aget v1, p0, v2

    .line 471
    .local v1, cid:I
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v7

    .line 472
    .local v7, value:I
    if-nez v7, :cond_4

    .line 469
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 455
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cid:I
    .end local v2           #k:I
    .end local v6           #state:I
    .end local v7           #value:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 474
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cid:I
    .restart local v2       #k:I
    .restart local v6       #state:I
    .restart local v7       #value:I
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 510
    :cond_5
    :goto_4
    move v4, v7

    .line 511
    move v3, v1

    goto :goto_3

    .line 476
    :pswitch_0
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_6

    if-ne v7, v4, :cond_6

    .line 477
    const/4 v6, 0x2

    goto :goto_4

    .line 479
    :cond_6
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_7

    .line 480
    const/4 v6, 0x1

    .line 481
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 484
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 489
    :pswitch_1
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_8

    if-ne v7, v4, :cond_8

    .line 490
    const/4 v6, 0x2

    .line 491
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 493
    :cond_8
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_9

    .line 494
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 497
    :cond_9
    const/4 v6, 0x0

    .line 498
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 503
    :pswitch_2
    add-int/lit8 v8, v3, 0x1

    if-ne v1, v8, :cond_a

    if-eq v7, v4, :cond_5

    .line 504
    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 505
    const/4 v6, 0x0

    goto :goto_4

    .line 513
    .end local v1           #cid:I
    .end local v7           #value:I
    :cond_b
    packed-switch v6, :pswitch_data_1

    .line 527
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 515
    :pswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "]]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 519
    :pswitch_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "]]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 523
    :pswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 513
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static convertToVCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 12
    .parameter "keys"
    .parameter "v"
    .parameter "h"

    .prologue
    .line 531
    array-length v10, p0

    if-nez v10, :cond_0

    .line 532
    const/4 v10, 0x0

    .line 586
    :goto_0
    return-object v10

    .line 533
    :cond_0
    const/4 v4, 0x0

    .line 534
    .local v4, lastCid:I
    const/4 v6, 0x0

    .line 535
    .local v6, lastValue:I
    const/4 v5, 0x0

    .line 537
    .local v5, lastHValue:I
    const/4 v7, 0x0

    .local v7, start:I
    :goto_1
    array-length v10, p0

    if-ge v7, v10, :cond_1

    .line 538
    aget v4, p0, v7

    .line 539
    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v6

    .line 540
    if-eqz v6, :cond_2

    .line 541
    add-int/lit8 v7, v7, 0x1

    .line 547
    :cond_1
    if-nez v6, :cond_3

    .line 548
    const/4 v10, 0x0

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v5

    .line 537
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 549
    :cond_3
    if-nez v5, :cond_4

    .line 550
    const/16 v5, 0x3e8

    .line 551
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v10, 0x5b

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 554
    const/4 v8, 0x0

    .line 555
    .local v8, state:I
    move v3, v7

    .local v3, k:I
    :goto_2
    array-length v10, p0

    if-ge v3, v10, :cond_a

    .line 556
    aget v1, p0, v3

    .line 557
    .local v1, cid:I
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v9

    .line 558
    .local v9, value:I
    if-nez v9, :cond_5

    .line 555
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 560
    :cond_5
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v2

    .line 561
    .local v2, hValue:I
    if-nez v2, :cond_6

    .line 562
    const/16 v2, 0x3e8

    .line 563
    :cond_6
    packed-switch v8, :pswitch_data_0

    .line 581
    :cond_7
    :goto_4
    :pswitch_0
    move v6, v9

    .line 582
    move v4, v1

    .line 583
    move v5, v2

    goto :goto_3

    .line 565
    :pswitch_1
    add-int/lit8 v10, v4, 0x1

    if-ne v1, v10, :cond_8

    if-ne v9, v6, :cond_8

    if-ne v2, v5, :cond_8

    .line 566
    const/4 v8, 0x2

    goto :goto_4

    .line 569
    :cond_8
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 574
    :pswitch_2
    add-int/lit8 v10, v4, 0x1

    if-ne v1, v10, :cond_9

    if-ne v9, v6, :cond_9

    if-eq v2, v5, :cond_7

    .line 575
    :cond_9
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 576
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 585
    .end local v1           #cid:I
    .end local v2           #hValue:I
    .end local v9           #value:I
    :cond_a
    const/16 v10, 0x20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    neg-int v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    div-int/lit8 v11, v5, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x370

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, " ]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 4
    .parameter "s"

    .prologue
    .line 440
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 441
    .local v0, h:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 442
    .local v2, tk:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, n1:I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 446
    .end local v1           #n1:I
    :cond_0
    return-object v0
.end method

.method private getBBox(I)F
    .locals 6
    .parameter "idx"

    .prologue
    .line 335
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "FontBBox"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 336
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v4, " []\r\n\t\u000c"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v3, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 339
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    return v4
.end method

.method private getCIDFont(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 9
    .parameter "fontDescriptor"
    .parameter "cjkTag"

    .prologue
    const/4 v8, 0x0

    .line 263
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 264
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CIDFONTTYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 265
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 266
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 267
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v2

    .line 268
    .local v2, keys:[I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-static {v2, v4}, Lcom/itextpdf/text/pdf/CJKFont;->convertToHCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, w:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 270
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 271
    :cond_0
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v4, :cond_2

    .line 272
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-static {v2, v4, v5}, Lcom/itextpdf/text/pdf/CJKFont;->convertToVCIDMetrics([ILcom/itextpdf/text/pdf/IntHashtable;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_1

    .line 274
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->W2:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 278
    :cond_1
    :goto_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 279
    .local v0, cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->REGISTRY:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v7, "Registry"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 280
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ORDERING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v7, "Ordering"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 281
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SUPPLEMENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v7, "Supplement"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 282
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CIDSYSTEMINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 283
    return-object v1

    .line 277
    .end local v0           #cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DW:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private getDescNumber(Ljava/lang/String;)F
    .locals 1
    .parameter "name"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 5
    .parameter "CIDFont"

    .prologue
    .line 287
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 288
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 289
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 290
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 294
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->CMap:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 295
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 296
    return-object v0
.end method

.method private getFontDescriptor()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 6

    .prologue
    .line 247
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 248
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "Ascent"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 249
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "CapHeight"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 250
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "Descent"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 251
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "Flags"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 252
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "FontBBox"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 253
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CJKFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 254
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "ItalicAngle"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 255
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->STEMV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfLiteral;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "StemV"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 257
    .local v1, pdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PANOSE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontDesc:Ljava/util/HashMap;

    const-string/jumbo v5, "Panose"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 258
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STYLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 259
    return-object v0
.end method

.method public static isCJKFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "fontName"
    .parameter "enc"

    .prologue
    .line 190
    invoke-static {}, Lcom/itextpdf/text/pdf/CJKFont;->loadProperties()V

    .line 191
    sget-object v1, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, encodings:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "Identity-H"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Identity-V"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadProperties()V
    .locals 4

    .prologue
    .line 94
    sget-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    if-eqz v2, :cond_0

    .line 113
    .local v1, is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 96
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/CJKFont;->allFonts:Ljava/util/Hashtable;

    monitor-enter v3

    .line 97
    :try_start_0
    sget-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    if-eqz v2, :cond_1

    .line 98
    monitor-exit v3

    goto :goto_0

    .line 112
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 100
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "com/itextpdf/text/pdf/fonts/cjkfonts.properties"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 101
    .restart local v1       #is:Ljava/io/InputStream;
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 103
    const-string/jumbo v2, "com/itextpdf/text/pdf/fonts/cjkencodings.properties"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/itextpdf/text/pdf/CJKFont;->cjkEncodings:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_1
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/itextpdf/text/pdf/CJKFont;->propertiesLoaded:Z

    .line 112
    monitor-exit v3

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/CJKFont;->cjkFonts:Ljava/util/Properties;

    .line 109
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/CJKFont;->cjkEncodings:Ljava/util/Properties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static readCMap(Ljava/lang/String;)[C
    .locals 6
    .parameter "name"

    .prologue
    const/high16 v5, 0x1

    .line 425
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".cmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com/itextpdf/text/pdf/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 427
    .local v1, is:Ljava/io/InputStream;
    const/high16 v3, 0x1

    new-array v0, v3, [C

    .line 428
    .local v0, c:[C
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 429
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0           #c:[C
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #k:I
    :goto_1
    return-object v0

    .line 433
    :catch_0
    move-exception v3

    .line 436
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static readFontProperties(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com/itextpdf/text/pdf/fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/CJKFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 593
    .local v4, is:Ljava/io/InputStream;
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 594
    .local v7, p:Ljava/util/Properties;
    invoke-virtual {v7, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 595
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 596
    const-string/jumbo v8, "W"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/CJKFont;->createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v1

    .line 597
    .local v1, W:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string/jumbo v8, "W"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v8, "W2"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/CJKFont;->createMetric(Ljava/lang/String;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v2

    .line 599
    .local v2, W2:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string/jumbo v8, "W2"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 601
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v7}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 602
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 603
    .local v6, obj:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    check-cast v6, Ljava/lang/String;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 609
    .end local v1           #W:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v2           #W2:Lcom/itextpdf/text/pdf/IntHashtable;
    .end local v3           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #p:Ljava/util/Properties;
    :catch_0
    move-exception v8

    .line 612
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 605
    .restart local v1       #W:Lcom/itextpdf/text/pdf/IntHashtable;
    .restart local v2       #W2:Lcom/itextpdf/text/pdf/IntHashtable;
    .restart local v3       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7       #p:Ljava/util/Properties;
    :cond_0
    const-string/jumbo v8, "W"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v8, "W2"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public charExists(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    aget-char v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 407
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 1
    .parameter "c"

    .prologue
    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCidCode(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v0, :cond_0

    .line 626
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    aget-char p1, v0, p1

    goto :goto_0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CJKFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 4
    .parameter "key"
    .parameter "fontSize"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v2, 0x447a

    .line 352
    packed-switch p1, :pswitch_data_0

    .line 376
    :goto_0
    :pswitch_0
    return v0

    .line 355
    :pswitch_1
    const-string/jumbo v0, "Ascent"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 357
    :pswitch_2
    const-string/jumbo v0, "CapHeight"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 360
    :pswitch_3
    const-string/jumbo v0, "Descent"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 362
    :pswitch_4
    const-string/jumbo v0, "ItalicAngle"

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getDescNumber(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 364
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 366
    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 368
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 370
    :pswitch_8
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 374
    :pswitch_9
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v0

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getBBox(I)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKerning(II)I
    .locals 1
    .parameter "char1"
    .parameter "char2"

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public getUnicodeEquivalent(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    aget-char p1, v0, p1

    .line 619
    .end local p1
    :cond_0
    return p1
.end method

.method public getWidth(I)I
    .locals 3
    .parameter "char1"

    .prologue
    .line 202
    move v0, p1

    .line 203
    .local v0, c:I
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    aget-char v0, v2, v0

    .line 206
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .line 210
    .local v1, v:I
    :goto_0
    if-lez v1, :cond_2

    .line 213
    .end local v1           #v:I
    :goto_1
    return v1

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .restart local v1       #v:I
    goto :goto_0

    .line 213
    :cond_2
    const/16 v1, 0x3e8

    goto :goto_1
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 5
    .parameter "text"

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, c:I
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->cidDirect:Z

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->translationMap:[C

    aget-char v0, v4, v0

    .line 224
    :cond_0
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vertical:Z

    if-eqz v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->vMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    .line 228
    .local v3, v:I
    :goto_1
    if-lez v3, :cond_2

    .line 229
    add-int/2addr v2, v3

    .line 219
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v3           #v:I
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CJKFont;->hMetrics:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    .restart local v3       #v:I
    goto :goto_1

    .line 231
    :cond_2
    add-int/lit16 v2, v2, 0x3e8

    goto :goto_2

    .line 233
    .end local v0           #c:I
    .end local v3           #v:I
    :cond_3
    return v2
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public setCharAdvance(II)Z
    .locals 1
    .parameter "c"
    .parameter "advance"

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(III)Z
    .locals 1
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CJKFont;->fontName:Ljava/lang/String;

    .line 668
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 5
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v4, 0x0

    aget-object v0, p3, v4

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 302
    .local v0, cjkTag:Lcom/itextpdf/text/pdf/IntHashtable;
    const/4 v1, 0x0

    .line 303
    .local v1, ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v3, 0x0

    .line 304
    .local v3, pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 305
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CJKFont;->getFontDescriptor()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 310
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/text/pdf/CJKFont;->getCIDFont(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 311
    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 315
    :cond_1
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/CJKFont;->getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 316
    invoke-virtual {p1, v3, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 317
    return-void
.end method
