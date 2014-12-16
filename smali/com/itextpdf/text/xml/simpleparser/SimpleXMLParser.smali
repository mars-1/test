.class public final Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;
.super Ljava/lang/Object;
.source "SimpleXMLParser.java"


# static fields
.field private static final ATTRIBUTE_EQUAL:I = 0xd

.field private static final ATTRIBUTE_KEY:I = 0xc

.field private static final ATTRIBUTE_VALUE:I = 0xe

.field private static final CDATA:I = 0x7

.field private static final COMMENT:I = 0x8

.field private static final ENTITY:I = 0xa

.field private static final EXAMIN_TAG:I = 0x3

.field private static final IN_CLOSETAG:I = 0x5

.field private static final PI:I = 0x9

.field private static final QUOTE:I = 0xb

.field private static final SINGLE_TAG:I = 0x6

.field private static final TAG_ENCOUNTERED:I = 0x2

.field private static final TAG_EXAMINED:I = 0x4

.field private static final TEXT:I = 0x1

.field private static final UNKNOWN:I


# instance fields
.field attributekey:Ljava/lang/String;

.field attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field attributevalue:Ljava/lang/String;

.field character:I

.field columns:I

.field comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

.field doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

.field entity:Ljava/lang/StringBuffer;

.field eol:Z

.field html:Z

.field lines:I

.field nested:I

.field nowhite:Z

.field previousCharacter:I

.field quoteCharacter:I

.field stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field state:I

.field tag:Ljava/lang/String;

.field text:Ljava/lang/StringBuffer;


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Z)V
    .locals 4
    .parameter "doc"
    .parameter "comment"
    .parameter "html"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 126
    const/4 v2, -0x1

    iput v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    .line 128
    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 130
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 139
    iput-boolean v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    .line 145
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    .line 147
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    .line 149
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    .line 157
    iput v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 159
    const/16 v2, 0x22

    iput v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 161
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    .line 163
    iput-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    .line 171
    iput-object p2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    .line 172
    iput-boolean p3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    .line 173
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    .line 174
    if-eqz p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 175
    return-void

    :cond_0
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method private doTag()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 547
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 550
    return-void
.end method

.method public static escapeXML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "onlyASCII"

    .prologue
    .line 658
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 659
    .local v1, cc:[C
    array-length v3, v1

    .line 660
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 662
    aget-char v0, v1, v2

    .line 663
    .local v0, c:I
    sparse-switch v0, :sswitch_data_0

    .line 680
    const/16 v5, 0x9

    if-eq v0, v5, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2

    const/16 v5, 0x20

    if-lt v0, v5, :cond_0

    const v5, 0xd7ff

    if-le v0, v5, :cond_2

    :cond_0
    const v5, 0xe000

    if-lt v0, v5, :cond_1

    const v5, 0xfffd

    if-le v0, v5, :cond_2

    :cond_1
    const/high16 v5, 0x1

    if-lt v0, v5, :cond_3

    const v5, 0x10ffff

    if-gt v0, v5, :cond_3

    .line 684
    :cond_2
    if-eqz p1, :cond_4

    const/16 v5, 0x7f

    if-le v0, v5, :cond_4

    .line 685
    const-string/jumbo v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 661
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :sswitch_0
    const-string/jumbo v5, "&lt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 668
    :sswitch_1
    const-string/jumbo v5, "&gt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 671
    :sswitch_2
    const-string/jumbo v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 674
    :sswitch_3
    const-string/jumbo v5, "&quot;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 677
    :sswitch_4
    const-string/jumbo v5, "&apos;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 687
    :cond_4
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 691
    .end local v0           #c:I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private flush()V
    .locals 3

    .prologue
    .line 509
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    packed-switch v0, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 535
    return-void

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->text(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->comment:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    .line 523
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    goto :goto_0

    .line 528
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributekey:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributevalue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getDeclaredEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "decl"

    .prologue
    const/16 v7, 0x27

    const/16 v6, 0x22

    const/4 v4, 0x0

    .line 623
    if-nez p0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-object v4

    .line 625
    :cond_1
    const-string/jumbo v5, "encoding"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 626
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 628
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 629
    .local v1, idx1:I
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 630
    .local v2, idx2:I
    if-eq v1, v2, :cond_0

    .line 632
    if-gez v1, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    if-lez v2, :cond_4

    if-ge v2, v1, :cond_4

    .line 633
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 634
    .local v3, idx3:I
    if-ltz v3, :cond_0

    .line 636
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 638
    .end local v3           #idx3:I
    :cond_4
    if-gez v2, :cond_5

    if-gtz v1, :cond_6

    :cond_5
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 639
    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 640
    .restart local v3       #idx3:I
    if-ltz v3, :cond_0

    .line 642
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getEncodingName([B)Ljava/lang/String;
    .locals 9
    .parameter "b4"

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0xfe

    const/16 v6, 0x3f

    const/16 v5, 0x3c

    .line 705
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 706
    .local v0, b0:I
    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 707
    .local v1, b1:I
    if-ne v0, v7, :cond_0

    if-ne v1, v8, :cond_0

    .line 709
    const-string/jumbo v4, "UTF-16BE"

    .line 760
    :goto_0
    return-object v4

    .line 711
    :cond_0
    if-ne v0, v8, :cond_1

    if-ne v1, v7, :cond_1

    .line 713
    const-string/jumbo v4, "UTF-16LE"

    goto :goto_0

    .line 717
    :cond_1
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 718
    .local v2, b2:I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_2

    .line 719
    const-string/jumbo v4, "UTF-8"

    goto :goto_0

    .line 723
    :cond_2
    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 724
    .local v3, b3:I
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v5, :cond_3

    .line 726
    const-string/jumbo v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 728
    :cond_3
    if-ne v0, v5, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 730
    const-string/jumbo v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 732
    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-ne v2, v5, :cond_5

    if-nez v3, :cond_5

    .line 735
    const-string/jumbo v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 737
    :cond_5
    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 740
    const-string/jumbo v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 742
    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v5, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_7

    .line 746
    const-string/jumbo v4, "UTF-16BE"

    goto :goto_0

    .line 748
    :cond_7
    if-ne v0, v5, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v6, :cond_8

    if-nez v3, :cond_8

    .line 751
    const-string/jumbo v4, "UTF-16LE"

    goto :goto_0

    .line 753
    :cond_8
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_9

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_9

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_9

    const/16 v4, 0x94

    if-ne v3, v4, :cond_9

    .line 756
    const-string/jumbo v4, "CP037"

    goto :goto_0

    .line 760
    :cond_9
    const-string/jumbo v4, "UTF-8"

    goto/16 :goto_0
.end method

.method private go(Ljava/io/Reader;)V
    .locals 10
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/16 v7, 0x3e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    instance-of v3, p1, Ljava/io/BufferedReader;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 184
    check-cast v2, Ljava/io/BufferedReader;

    .line 187
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->startDocument()V

    .line 190
    :cond_0
    :goto_1
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 191
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 200
    :goto_2
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 201
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_5

    .line 202
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    if-ne v3, v6, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endDocument()V

    .line 337
    :cond_2
    :goto_3
    return-void

    .line 186
    .end local v2           #reader:Ljava/io/BufferedReader;
    :cond_3
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 195
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 196
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    goto :goto_2

    .line 206
    :cond_5
    const-string/jumbo v3, "missing.end.tag"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto :goto_3

    .line 212
    :cond_6
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_7

    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    if-eqz v3, :cond_7

    .line 213
    iput-boolean v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    goto :goto_1

    .line 215
    :cond_7
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    if-eqz v3, :cond_8

    .line 216
    iput-boolean v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 229
    :goto_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 232
    :pswitch_0
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_0

    .line 233
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 234
    const/4 v3, 0x2

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto :goto_1

    .line 217
    :cond_8
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v8, :cond_9

    .line 218
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 219
    iput v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 220
    :cond_9
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_a

    .line 221
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->eol:Z

    .line 222
    iput v8, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    .line 223
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    .line 224
    iput v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 226
    :cond_a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    goto :goto_4

    .line 239
    :pswitch_1
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_b

    .line 240
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 241
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 242
    const/4 v3, 0x2

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 243
    :cond_b
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x26

    if-ne v3, v4, :cond_c

    .line 244
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 245
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 246
    iput v8, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 247
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 248
    :cond_c
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 249
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    if-eqz v3, :cond_d

    .line 250
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    :cond_d
    iput-boolean v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 253
    :cond_e
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    iput-boolean v6, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nowhite:Z

    goto/16 :goto_1

    .line 260
    :pswitch_2
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 261
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_f

    .line 262
    const/4 v3, 0x5

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 263
    :cond_f
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_10

    .line 264
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    .line 265
    const/16 v3, 0x9

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 267
    :cond_10
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    const/4 v3, 0x3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 274
    :pswitch_3
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_11

    .line 275
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 276
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 277
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 278
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 279
    :cond_11
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_12

    .line 280
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 281
    :cond_12
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "!-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 282
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 283
    const/16 v3, 0x8

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 284
    :cond_13
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_14

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "![CDATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 285
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 286
    const/4 v3, 0x7

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 287
    :cond_14
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x45

    if-ne v3, v4, :cond_15

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "!DOCTYP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 288
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 289
    const/16 v3, 0x9

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 290
    :cond_15
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 291
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 292
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 294
    :cond_16
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 299
    :pswitch_4
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_17

    .line 300
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 301
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 302
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 303
    :cond_17
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_18

    .line 304
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 305
    :cond_18
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    const/16 v3, 0xc

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 315
    :pswitch_5
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_1a

    .line 316
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 317
    invoke-direct {p0, v5}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 318
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-nez v3, :cond_19

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    if-eqz v3, :cond_2

    .line 319
    :cond_19
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 321
    :cond_1a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 329
    :pswitch_6
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-eq v3, v7, :cond_1b

    .line 330
    const-string/jumbo v3, "expected.gt.for.tag.lt.1.gt"

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    .line 331
    :cond_1b
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doTag()V

    .line 332
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 333
    invoke-direct {p0, v5}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 334
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 335
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-nez v3, :cond_1c

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    if-nez v3, :cond_1c

    .line 336
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    invoke-interface {v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endDocument()V

    goto/16 :goto_3

    .line 339
    :cond_1c
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 344
    :pswitch_7
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_1d

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "]]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 346
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 347
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 348
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 350
    :cond_1d
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 356
    :pswitch_8
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_1e

    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 358
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 359
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 360
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 362
    :cond_1e
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 367
    :pswitch_9
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 369
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    if-ne v3, v6, :cond_0

    iput v5, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 375
    :pswitch_a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_20

    .line 376
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 377
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, cent:Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 379
    invoke-static {v1}, Lcom/itextpdf/text/xml/simpleparser/EntitiesToUnicode;->decodeEntity(Ljava/lang/String;)C

    move-result v0

    .line 380
    .local v0, ce:C
    if-nez v0, :cond_1f

    .line 381
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 383
    :cond_1f
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 384
    .end local v0           #ce:C
    .end local v1           #cent:Ljava/lang/String;
    :cond_20
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x23

    if-eq v3, v4, :cond_23

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x30

    if-lt v3, v4, :cond_21

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x39

    if-le v3, v4, :cond_23

    :cond_21
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x61

    if-lt v3, v4, :cond_22

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x7a

    if-le v3, v4, :cond_23

    :cond_22
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x41

    if-lt v3, v4, :cond_24

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_24

    :cond_23
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_25

    .line 386
    :cond_24
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 387
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->previousCharacter:I

    .line 388
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 392
    :cond_25
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 397
    :pswitch_b
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_26

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_26

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_26

    .line 398
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 399
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 400
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 401
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 403
    :cond_26
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_27

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_27

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 404
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 405
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 407
    :cond_27
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_28

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v9, :cond_28

    .line 408
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 410
    :cond_28
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    if-ne v3, v4, :cond_29

    .line 411
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 412
    const/4 v3, 0x4

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 413
    :cond_29
    const-string/jumbo v3, " \r\n\t"

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2a

    .line 414
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 415
    :cond_2a
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x26

    if-ne v3, v4, :cond_2b

    .line 416
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->saveState(I)V

    .line 417
    iput v8, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    .line 418
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->entity:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 420
    :cond_2b
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 425
    :pswitch_c
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 426
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 427
    const/16 v3, 0xd

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 428
    :cond_2c
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2d

    .line 429
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 430
    const/16 v3, 0xe

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 431
    :cond_2d
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_2e

    .line 432
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 433
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 434
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 435
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 437
    :cond_2e
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 442
    :pswitch_d
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2f

    .line 443
    const/16 v3, 0xe

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 444
    :cond_2f
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_30

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_30

    .line 447
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 448
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 449
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 450
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 451
    :cond_30
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_31

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_31

    .line 452
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 453
    const/4 v3, 0x6

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 454
    :cond_31
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_32

    .line 455
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 456
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    const/16 v3, 0xc

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 459
    :cond_32
    const-string/jumbo v3, "error.in.attribute.processing"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 464
    :pswitch_e
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_33

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    const/16 v4, 0x27

    if-ne v3, v4, :cond_34

    .line 465
    :cond_33
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 466
    const/16 v3, 0xb

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 467
    :cond_34
    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_35

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    if-ne v3, v7, :cond_35

    .line 470
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->flush()V

    .line 471
    invoke-direct {p0, v6}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->processTag(Z)V

    .line 472
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->initTag()V

    .line 473
    invoke-direct {p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->restoreState()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 474
    :cond_35
    iget-boolean v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->html:Z

    if-eqz v3, :cond_36

    .line 475
    iget-object v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->text:Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->character:I

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    iput v9, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->quoteCharacter:I

    .line 477
    const/16 v3, 0xb

    iput v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->state:I

    goto/16 :goto_1

    .line 479
    :cond_36
    const-string/jumbo v3, "error.in.attribute.processing"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->throwException(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initTag()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    .line 542
    return-void
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V
    .locals 1
    .parameter "doc"
    .parameter "comment"
    .parameter "r"
    .parameter "html"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;

    invoke-direct {v0, p0, p1, p3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;-><init>(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Z)V

    .line 578
    .local v0, parser:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;
    invoke-direct {v0, p2}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->go(Ljava/io/Reader;)V

    .line 579
    return-void
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V
    .locals 9
    .parameter "doc"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v8, -0x1

    .line 588
    new-array v0, v7, [B

    .line 589
    .local v0, b4:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 590
    .local v3, count:I
    if-eq v3, v7, :cond_0

    .line 591
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "insufficient.length"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 592
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->getEncodingName([B)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, encoding:Ljava/lang/String;
    const/4 v4, 0x0

    .line 594
    .local v4, decl:Ljava/lang/String;
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 595
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, c:I
    if-eq v2, v8, :cond_1

    .line 598
    const/16 v7, 0x3e

    if-ne v2, v7, :cond_4

    .line 602
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 614
    .end local v2           #c:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 615
    invoke-static {v4}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->getDeclaredEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 616
    if-eqz v4, :cond_3

    .line 617
    move-object v5, v4

    .line 619
    :cond_3
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-static {v5}, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V

    .line 620
    return-void

    .line 600
    .restart local v2       #c:I
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 604
    .end local v2           #c:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_5
    const-string/jumbo v7, "CP037"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 605
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 607
    .local v1, bi:Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .restart local v2       #c:I
    if-eq v2, v8, :cond_6

    .line 608
    const/16 v7, 0x6e

    if-ne v2, v7, :cond_7

    .line 612
    :cond_6
    new-instance v4, Ljava/lang/String;

    .end local v4           #decl:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string/jumbo v8, "CP037"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v4       #decl:Ljava/lang/String;
    goto :goto_1

    .line 610
    :cond_7
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V
    .locals 2
    .parameter "doc"
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V

    .line 649
    return-void
.end method

.method private processTag(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 556
    if-eqz p1, :cond_0

    .line 557
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 558
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->attributes:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->startElement(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->nested:I

    .line 562
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->doc:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;

    iget-object v1, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;->endElement(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreState()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveState(I)V
    .locals 2
    .parameter "s"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->stack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-void
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "1.near.line.2.column.3"

    iget v2, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->lines:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->columns:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
