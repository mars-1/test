.class public Lcom/itextpdf/text/html/simpleparser/FactoryProperties;
.super Ljava/lang/Object;
.source "FactoryProperties.java"


# static fields
.field public static followTags:Ljava/util/HashMap;
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


# instance fields
.field private fontImp:Lcom/itextpdf/text/FontProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    .line 398
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "i"

    const-string/jumbo v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "b"

    const-string/jumbo v2, "b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "u"

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "sub"

    const-string/jumbo v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "sup"

    const-string/jumbo v2, "sup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "em"

    const-string/jumbo v2, "i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "strong"

    const-string/jumbo v2, "b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "s"

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    const-string/jumbo v1, "strike"

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/itextpdf/text/FontFactory;->getFontImp()Lcom/itextpdf/text/FontFactoryImp;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->fontImp:Lcom/itextpdf/text/FontProvider;

    .line 77
    return-void
.end method

.method public static createListItem(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/ListItem;
    .locals 1
    .parameter "props"

    .prologue
    .line 155
    new-instance v0, Lcom/itextpdf/text/ListItem;

    invoke-direct {v0}, Lcom/itextpdf/text/ListItem;-><init>()V

    .line 156
    .local v0, p:Lcom/itextpdf/text/ListItem;
    invoke-static {v0, p0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createParagraph(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 157
    return-object v0
.end method

.method public static createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;
    .locals 1
    .parameter "props"

    .prologue
    .line 149
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 150
    .local v0, p:Lcom/itextpdf/text/Paragraph;
    invoke-static {v0, p0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createParagraph(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 151
    return-object v0
.end method

.method public static createParagraph(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V
    .locals 2
    .parameter "p"
    .parameter "props"

    .prologue
    .line 114
    const-string/jumbo v1, "align"

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 123
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)V

    .line 124
    const-string/jumbo v1, "leading"

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->setParagraphLeading(Lcom/itextpdf/text/Paragraph;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "before"

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 128
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :cond_1
    :goto_1
    const-string/jumbo v1, "after"

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 135
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_2
    :goto_2
    const-string/jumbo v1, "extraparaspace"

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_3

    .line 142
    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setExtraParagraphSpace(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :cond_3
    :goto_3
    return-void

    .line 118
    :cond_4
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    goto :goto_0

    .line 120
    :cond_5
    const-string/jumbo v1, "justify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_3

    .line 136
    :catch_1
    move-exception v1

    goto :goto_2

    .line 129
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 1
    .parameter "props"

    .prologue
    .line 201
    const-string/jumbo v0, "hyphenation"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->getHyphenation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v0

    return-object v0
.end method

.method public static getHyphenation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 223
    :cond_0
    const/4 v5, 0x0

    .line 249
    :goto_0
    return-object v5

    .line 225
    :cond_1
    move-object v1, p0

    .line 226
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .line 227
    .local v0, country:Ljava/lang/String;
    const/4 v2, 0x2

    .line 228
    .local v2, leftMin:I
    const/4 v4, 0x2

    .line 230
    .local v4, rightMin:I
    const/16 v5, 0x5f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 231
    .local v3, pos:I
    if-ne v3, v6, :cond_2

    .line 232
    new-instance v5, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v5, v1, v0, v2, v4}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 237
    if-ne v3, v6, :cond_3

    .line 238
    new-instance v5, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v5, v1, v0, v2, v4}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 240
    :cond_3
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 243
    if-ne v3, v6, :cond_4

    .line 244
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 249
    :goto_1
    new-instance v5, Lcom/itextpdf/text/pdf/HyphenationAuto;

    invoke-direct {v5, v1, v0, v2, v4}, Lcom/itextpdf/text/pdf/HyphenationAuto;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public static getHyphenation(Ljava/util/HashMap;)Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/text/pdf/HyphenationEvent;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "hyphenation"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->getHyphenation(Ljava/lang/String;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v0

    return-object v0
.end method

.method public static insertStyle(Ljava/util/HashMap;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 262
    const-string/jumbo v10, "style"

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 263
    .local v8, style:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 312
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-static {v8}, Lcom/itextpdf/text/html/Markup;->parseAttributes(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v6

    .line 266
    .local v6, prop:Ljava/util/Properties;
    invoke-virtual {v6}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, o:Ljava/lang/Object;
    move-object v4, v5

    .line 267
    check-cast v4, Ljava/lang/String;

    .line 268
    .local v4, key:Ljava/lang/String;
    const-string/jumbo v10, "font-family"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 269
    const-string/jumbo v10, "face"

    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_3
    const-string/jumbo v10, "font-size"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 271
    const-string/jumbo v10, "size"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "pt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_4
    const-string/jumbo v10, "font-style"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 275
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, ss:Ljava/lang/String;
    const-string/jumbo v10, "italic"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "oblique"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 277
    :cond_5
    const-string/jumbo v10, "i"

    invoke-virtual {p0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    .end local v7           #ss:Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "font-weight"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 279
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 280
    .restart local v7       #ss:Ljava/lang/String;
    const-string/jumbo v10, "bold"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "700"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "800"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "900"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 282
    :cond_7
    const-string/jumbo v10, "b"

    invoke-virtual {p0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 283
    .end local v7           #ss:Ljava/lang/String;
    :cond_8
    const-string/jumbo v10, "text-decoration"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 284
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 285
    .restart local v7       #ss:Ljava/lang/String;
    const-string/jumbo v10, "underline"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 286
    const-string/jumbo v10, "u"

    invoke-virtual {p0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 287
    .end local v7           #ss:Ljava/lang/String;
    :cond_9
    const-string/jumbo v10, "color"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 288
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    .line 289
    .local v0, c:Lcom/itextpdf/text/BaseColor;
    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v1

    .line 291
    .local v1, hh:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, hs:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "000000"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string/jumbo v10, "color"

    invoke-virtual {p0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 296
    .end local v0           #c:Lcom/itextpdf/text/BaseColor;
    .end local v1           #hh:I
    .end local v2           #hs:Ljava/lang/String;
    :cond_a
    const-string/jumbo v10, "line-height"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 297
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7       #ss:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;)F

    move-result v9

    .line 299
    .local v9, v:F
    const-string/jumbo v10, "%"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 300
    const-string/jumbo v10, "leading"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "0,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/high16 v12, 0x42c8

    div-float v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 301
    :cond_b
    const-string/jumbo v10, "normal"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 302
    const-string/jumbo v10, "leading"

    const-string/jumbo v11, "0,1.5"

    invoke-virtual {p0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 305
    :cond_c
    const-string/jumbo v10, "leading"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 307
    .end local v7           #ss:Ljava/lang/String;
    .end local v9           #v:F
    :cond_d
    const-string/jumbo v10, "text-align"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 308
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 309
    .restart local v7       #ss:Ljava/lang/String;
    const-string/jumbo v10, "align"

    invoke-virtual {p0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static insertStyle(Ljava/util/HashMap;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V
    .locals 14
    .parameter
    .parameter "cprops"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/text/html/simpleparser/ChainedProperties;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "style"

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 322
    .local v9, style:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-static {v9}, Lcom/itextpdf/text/html/Markup;->parseAttributes(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v7

    .line 325
    .local v7, prop:Ljava/util/Properties;
    invoke-virtual {v7}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, element:Ljava/lang/Object;
    move-object v6, v2

    .line 326
    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, key:Ljava/lang/String;
    const-string/jumbo v11, "font-family"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 328
    const-string/jumbo v11, "face"

    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 329
    :cond_3
    const-string/jumbo v11, "font-size"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 330
    const-string/jumbo v11, "size"

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x4140

    invoke-static {v11, v12}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v0

    .line 333
    .local v0, actualFontSize:F
    const/4 v11, 0x0

    cmpg-float v11, v0, v11

    if-gtz v11, :cond_4

    .line 334
    const/high16 v0, 0x4140

    .line 335
    :cond_4
    const-string/jumbo v11, "size"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "pt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 338
    .end local v0           #actualFontSize:F
    :cond_5
    const-string/jumbo v11, "font-style"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 339
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, ss:Ljava/lang/String;
    const-string/jumbo v11, "italic"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "oblique"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 341
    :cond_6
    const-string/jumbo v11, "i"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 342
    .end local v8           #ss:Ljava/lang/String;
    :cond_7
    const-string/jumbo v11, "font-weight"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 343
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 344
    .restart local v8       #ss:Ljava/lang/String;
    const-string/jumbo v11, "bold"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "700"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "800"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string/jumbo v11, "900"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 346
    :cond_8
    const-string/jumbo v11, "b"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 347
    .end local v8           #ss:Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, "text-decoration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 348
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 349
    .restart local v8       #ss:Ljava/lang/String;
    const-string/jumbo v11, "underline"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 350
    const-string/jumbo v11, "u"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 351
    .end local v8           #ss:Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, "color"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    .line 353
    .local v1, c:Lcom/itextpdf/text/BaseColor;
    if-eqz v1, :cond_2

    .line 354
    invoke-virtual {v1}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v3

    .line 355
    .local v3, hh:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, hs:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "000000"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x6

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    const-string/jumbo v11, "color"

    invoke-virtual {p0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 360
    .end local v1           #c:Lcom/itextpdf/text/BaseColor;
    .end local v3           #hh:I
    .end local v4           #hs:Ljava/lang/String;
    :cond_b
    const-string/jumbo v11, "line-height"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 361
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 362
    .restart local v8       #ss:Ljava/lang/String;
    const-string/jumbo v11, "size"

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x4140

    invoke-static {v11, v12}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v0

    .line 365
    .restart local v0       #actualFontSize:F
    const/4 v11, 0x0

    cmpg-float v11, v0, v11

    if-gtz v11, :cond_c

    .line 366
    const/high16 v0, 0x4140

    .line 367
    :cond_c
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v10

    .line 369
    .local v10, v:F
    const-string/jumbo v11, "%"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 370
    const-string/jumbo v11, "leading"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "0,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/high16 v13, 0x42c8

    div-float v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 373
    :cond_d
    const-string/jumbo v11, "normal"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 374
    const-string/jumbo v11, "leading"

    const-string/jumbo v12, "0,1.5"

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 377
    :cond_e
    const-string/jumbo v11, "leading"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 378
    .end local v0           #actualFontSize:F
    .end local v8           #ss:Ljava/lang/String;
    .end local v10           #v:F
    :cond_f
    const-string/jumbo v11, "text-align"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 379
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 380
    .restart local v8       #ss:Ljava/lang/String;
    const-string/jumbo v11, "align"

    invoke-virtual {p0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 381
    .end local v8           #ss:Ljava/lang/String;
    :cond_10
    const-string/jumbo v11, "padding-left"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 382
    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 383
    .restart local v8       #ss:Ljava/lang/String;
    const-string/jumbo v11, "indent"

    invoke-static {v8}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private static setParagraphLeading(Lcom/itextpdf/text/Paragraph;Ljava/lang/String;)V
    .locals 8
    .parameter "p"
    .parameter "leading"

    .prologue
    const/high16 v7, 0x3fc0

    const/4 v6, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    .line 111
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v5, " ,"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, v:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 101
    .local v3, v1:F
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1           #tk:Ljava/util/StringTokenizer;
    .end local v2           #v:Ljava/lang/String;
    .end local v3           #v1:F
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #tk:Ljava/util/StringTokenizer;
    .restart local v2       #v:Ljava/lang/String;
    .restart local v3       #v1:F
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 107
    .local v4, v2:F
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;
    .locals 4
    .parameter "text"
    .parameter "props"

    .prologue
    .line 80
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->getFont(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Font;

    move-result-object v1

    .line 81
    .local v1, font:Lcom/itextpdf/text/Font;
    invoke-virtual {v1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v2

    .line 82
    .local v2, size:F
    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 83
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 84
    .local v0, ck:Lcom/itextpdf/text/Chunk;
    const-string/jumbo v3, "sub"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    neg-float v3, v2

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    .line 88
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->getHyphenation(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/pdf/HyphenationEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Chunk;->setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)Lcom/itextpdf/text/Chunk;

    .line 89
    return-object v0

    .line 86
    :cond_1
    const-string/jumbo v3, "sup"

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    goto :goto_0
.end method

.method public getFont(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Font;
    .locals 10
    .parameter "props"

    .prologue
    const/4 v3, 0x1

    .line 161
    const-string/jumbo v0, "face"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, face:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 163
    new-instance v7, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v7, v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v7, tok:Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_1
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->fontImp:Lcom/itextpdf/text/FontProvider;

    invoke-interface {v0, v1}, Lcom/itextpdf/text/FontProvider;->isRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    .end local v7           #tok:Ljava/util/StringTokenizer;
    :cond_3
    const/4 v5, 0x0

    .line 175
    .local v5, style:I
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    or-int/lit8 v5, v5, 0x2

    .line 177
    :cond_4
    const-string/jumbo v0, "b"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    or-int/lit8 v5, v5, 0x1

    .line 179
    :cond_5
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    or-int/lit8 v5, v5, 0x4

    .line 181
    :cond_6
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    or-int/lit8 v5, v5, 0x8

    .line 183
    :cond_7
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, value:Ljava/lang/String;
    const/high16 v4, 0x4140

    .line 185
    .local v4, size:F
    if-eqz v8, :cond_8

    .line 186
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 187
    :cond_8
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    .line 188
    .local v6, color:Lcom/itextpdf/text/BaseColor;
    const-string/jumbo v0, "encoding"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, encoding:Ljava/lang/String;
    if-nez v2, :cond_9

    .line 190
    const-string/jumbo v2, "Cp1252"

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->fontImp:Lcom/itextpdf/text/FontProvider;

    invoke-interface/range {v0 .. v6}, Lcom/itextpdf/text/FontProvider;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontImp()Lcom/itextpdf/text/FontProvider;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->fontImp:Lcom/itextpdf/text/FontProvider;

    return-object v0
.end method

.method public setFontImp(Lcom/itextpdf/text/FontProvider;)V
    .locals 0
    .parameter "fontImp"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->fontImp:Lcom/itextpdf/text/FontProvider;

    .line 394
    return-void
.end method
