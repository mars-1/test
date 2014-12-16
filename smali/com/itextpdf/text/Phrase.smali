.class public Lcom/itextpdf/text/Phrase;
.super Ljava/util/ArrayList;
.source "Phrase.java"

# interfaces
.implements Lcom/itextpdf/text/TextElementArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/itextpdf/text/Element;",
        ">;",
        "Lcom/itextpdf/text/TextElementArray;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x24afef48d9796e47L


# instance fields
.field protected font:Lcom/itextpdf/text/Font;

.field protected hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

.field protected leading:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const/high16 v0, 0x4180

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 104
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "leading"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 123
    iput p1, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 124
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 125
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "leading"
    .parameter "chunk"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 146
    iput p1, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 147
    invoke-super {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p2}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 149
    invoke-virtual {p2}, Lcom/itextpdf/text/Chunk;->getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Phrase;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V

    .line 150
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1
    .parameter "leading"
    .parameter "string"

    .prologue
    .line 178
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 179
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 190
    iput p1, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 191
    iput-object p3, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 193
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0, p2, p3}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 133
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Phrase;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 1
    .parameter "phrase"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 111
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Phrase;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getLeading()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Phrase;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 158
    const/high16 v0, 0x7fc0

    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-direct {v1}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "string"
    .parameter "font"

    .prologue
    .line 168
    const/high16 v0, 0x7fc0

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "dummy"

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 536
    return-void
.end method

.method public static final getInstance(ILjava/lang/String;)Lcom/itextpdf/text/Phrase;
    .locals 1
    .parameter "leading"
    .parameter "string"

    .prologue
    .line 554
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/Phrase;->getInstance(ILjava/lang/String;Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Phrase;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(ILjava/lang/String;Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Phrase;
    .locals 11
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 565
    new-instance v3, Lcom/itextpdf/text/Phrase;

    invoke-direct {v3, v10}, Lcom/itextpdf/text/Phrase;-><init>(Z)V

    .line 566
    .local v3, p:Lcom/itextpdf/text/Phrase;
    int-to-float v5, p0

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/Phrase;->setLeading(F)V

    .line 567
    iput-object p2, v3, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 568
    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v5, v6, :cond_2

    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v5, v6, :cond_2

    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v5

    if-nez v5, :cond_2

    .line 570
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/text/SpecialSymbol;->index(Ljava/lang/String;)I

    move-result v2

    .local v2, index:I
    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    .line 571
    if-lez v2, :cond_0

    .line 572
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, firstPart:Ljava/lang/String;
    new-instance v5, Lcom/itextpdf/text/Chunk;

    invoke-direct {v5, v1, p2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 574
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 576
    .end local v1           #firstPart:Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/itextpdf/text/Font;

    sget-object v5, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v6

    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v7

    invoke-virtual {p2}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 577
    .local v4, symbol:Lcom/itextpdf/text/Font;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/itextpdf/text/SpecialSymbol;->getCorrespondingSymbol(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 580
    :goto_1
    invoke-static {p1}, Lcom/itextpdf/text/SpecialSymbol;->index(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 581
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/itextpdf/text/SpecialSymbol;->getCorrespondingSymbol(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 584
    :cond_1
    new-instance v5, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 587
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #index:I
    .end local v4           #symbol:Lcom/itextpdf/text/Font;
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 588
    new-instance v5, Lcom/itextpdf/text/Chunk;

    invoke-direct {v5, p1, p2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 590
    :cond_3
    return-object v3
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Phrase;
    .locals 2
    .parameter "string"

    .prologue
    .line 544
    const/16 v0, 0x10

    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-direct {v1}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/itextpdf/text/Phrase;->getInstance(ILjava/lang/String;Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Phrase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/itextpdf/text/Element;)V
    .locals 6
    .parameter "index"
    .parameter "element"

    .prologue
    .line 270
    if-nez p2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 273
    move-object v0, p2

    check-cast v0, Lcom/itextpdf/text/Chunk;

    move-object v2, v0

    .line 274
    .local v2, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v3, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->isStandardFont()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/Font;->difference(Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/Chunk;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)Lcom/itextpdf/text/Chunk;

    .line 280
    :cond_2
    invoke-super {p0, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v2           #chunk:Lcom/itextpdf/text/Chunk;
    :catch_0
    move-exception v1

    .line 294
    .local v1, cce:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    const-string/jumbo v4, "insertion.of.illegal.element.1"

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v1           #cce:Ljava/lang/ClassCastException;
    :cond_3
    :try_start_1
    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_4

    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_4

    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0x37

    if-eq v3, v4, :cond_4

    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_5

    .line 287
    :cond_4
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_5
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-interface {p2}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p2, Lcom/itextpdf/text/Element;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/Phrase;->add(ILcom/itextpdf/text/Element;)V

    return-void
.end method

.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 10
    .parameter "element"

    .prologue
    .line 323
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 349
    .end local p1
    :cond_0
    :goto_0
    return v6

    .line 325
    .restart local p1
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 351
    new-instance v7, Ljava/lang/ClassCastException;

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local p1
    :catch_0
    move-exception v1

    .line 355
    .local v1, cce:Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/ClassCastException;

    const-string/jumbo v8, "insertion.of.illegal.element.1"

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 327
    .end local v1           #cce:Ljava/lang/ClassCastException;
    .restart local p1
    :sswitch_0
    :try_start_1
    check-cast p1, Lcom/itextpdf/text/Chunk;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Phrase;->addChunk(Lcom/itextpdf/text/Chunk;)Z

    move-result v6

    goto :goto_0

    .line 330
    .restart local p1
    :sswitch_1
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/Phrase;

    move-object v5, v0

    .line 331
    .local v5, phrase:Lcom/itextpdf/text/Phrase;
    const/4 v6, 0x1

    .line 333
    .local v6, success:Z
    invoke-virtual {v5}, Lcom/itextpdf/text/Phrase;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Element;

    .line 334
    .local v3, element2:Lcom/itextpdf/text/Element;
    move-object v0, v3

    check-cast v0, Lcom/itextpdf/text/Element;

    move-object v2, v0

    .line 335
    .local v2, e:Lcom/itextpdf/text/Element;
    instance-of v7, v2, Lcom/itextpdf/text/Chunk;

    if-eqz v7, :cond_2

    .line 336
    check-cast v2, Lcom/itextpdf/text/Chunk;

    .end local v2           #e:Lcom/itextpdf/text/Element;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Phrase;->addChunk(Lcom/itextpdf/text/Chunk;)Z

    move-result v7

    and-int/2addr v6, v7

    goto :goto_1

    .line 339
    .restart local v2       #e:Lcom/itextpdf/text/Element;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v7

    and-int/2addr v6, v7

    goto :goto_1

    .line 349
    .end local v2           #e:Lcom/itextpdf/text/Element;
    .end local v3           #element2:Lcom/itextpdf/text/Element;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #phrase:Lcom/itextpdf/text/Phrase;
    .end local v6           #success:Z
    :sswitch_2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x17 -> :sswitch_2
        0x1d -> :sswitch_2
        0x32 -> :sswitch_2
        0x37 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    check-cast p1, Lcom/itextpdf/text/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v1, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/itextpdf/text/Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/itextpdf/text/Element;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 370
    .local v0, e:Lcom/itextpdf/text/Element;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 372
    .end local v0           #e:Lcom/itextpdf/text/Element;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected addChunk(Lcom/itextpdf/text/Chunk;)Z
    .locals 6
    .parameter "chunk"

    .prologue
    .line 384
    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    .line 385
    .local v1, f:Lcom/itextpdf/text/Font;
    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, c:Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {v4}, Lcom/itextpdf/text/Font;->isStandardFont()Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    iget-object v4, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/Font;->difference(Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Font;

    move-result-object v1

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->hasAttributes()Z

    move-result v4

    if-nez v4, :cond_2

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Phrase;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Chunk;

    .line 392
    .local v3, previous:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->hasAttributes()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/Font;->compareTo(Lcom/itextpdf/text/Font;)I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string/jumbo v4, ""

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 397
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    const/4 v4, 0x1

    .line 409
    .end local v3           #previous:Lcom/itextpdf/text/Chunk;
    :goto_0
    return v4

    .line 401
    :catch_0
    move-exception v4

    .line 404
    :cond_2
    new-instance v2, Lcom/itextpdf/text/Chunk;

    invoke-direct {v2, v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 405
    .local v2, newChunk:Lcom/itextpdf/text/Chunk;
    invoke-virtual {p1}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/Chunk;->setAttributes(Ljava/util/HashMap;)V

    .line 406
    iget-object v4, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 407
    iget-object v4, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/Chunk;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)Lcom/itextpdf/text/Chunk;

    .line 409
    :cond_3
    invoke-super {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method protected addSpecial(Lcom/itextpdf/text/Element;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 418
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 236
    .local v0, element:Lcom/itextpdf/text/Element;
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->getChunks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 238
    .end local v0           #element:Lcom/itextpdf/text/Element;
    :cond_0
    return-object v2
.end method

.method public getContent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 482
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Chunk;

    .line 483
    .local v1, c:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 485
    .end local v1           #c:Lcom/itextpdf/text/Chunk;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getFont()Lcom/itextpdf/text/Font;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    return-object v0
.end method

.method public getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    return-object v0
.end method

.method public getLeading()F
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    const/high16 v1, 0x3fc0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Font;->getCalculatedLeading(F)F

    move-result v0

    .line 452
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    goto :goto_0
.end method

.method public hasLeading()Z
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/itextpdf/text/Phrase;->leading:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 506
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 500
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/Phrase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 501
    .local v0, element:Lcom/itextpdf/text/Element;
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .end local v0           #element:Lcom/itextpdf/text/Element;
    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    move v1, v2

    .line 504
    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Element;

    .line 210
    .local v1, element:Lcom/itextpdf/text/Element;
    check-cast v1, Lcom/itextpdf/text/Element;

    .end local v1           #element:Lcom/itextpdf/text/Element;
    invoke-interface {p1, v1}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 215
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v3, 0x0

    .end local v0           #de:Lcom/itextpdf/text/DocumentException;
    :goto_1
    return v3

    .line 212
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setFont(Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/itextpdf/text/Phrase;->font:Lcom/itextpdf/text/Font;

    .line 439
    return-void
.end method

.method public setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V
    .locals 0
    .parameter "hyphenation"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/itextpdf/text/Phrase;->hyphenation:Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 526
    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .parameter "leading"

    .prologue
    .line 430
    iput p1, p0, Lcom/itextpdf/text/Phrase;->leading:F

    .line 431
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xb

    return v0
.end method
