.class public Lcom/itextpdf/text/factories/ElementFactory;
.super Ljava/lang/Object;
.source "ElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnchor(Ljava/util/Properties;)Lcom/itextpdf/text/Anchor;
    .locals 3
    .parameter "attributes"

    .prologue
    .line 164
    new-instance v0, Lcom/itextpdf/text/Anchor;

    invoke-static {p0}, Lcom/itextpdf/text/factories/ElementFactory;->getPhrase(Ljava/util/Properties;)Lcom/itextpdf/text/Phrase;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/Anchor;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 166
    .local v0, anchor:Lcom/itextpdf/text/Anchor;
    const-string/jumbo v2, "name"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Anchor;->setName(Ljava/lang/String;)V

    .line 170
    :cond_0
    const-string/jumbo v2, "reference"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 171
    .restart local v1       #value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Anchor;->setReference(Ljava/lang/String;)V

    .line 174
    :cond_1
    return-object v0
.end method

.method public static getAnnotation(Ljava/util/Properties;)Lcom/itextpdf/text/Annotation;
    .locals 29
    .parameter "attributes"

    .prologue
    .line 377
    const/4 v4, 0x0

    .local v4, llx:F
    const/4 v5, 0x0

    .local v5, lly:F
    const/4 v6, 0x0

    .local v6, urx:F
    const/4 v7, 0x0

    .line 380
    .local v7, ury:F
    const-string/jumbo v1, "llx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 381
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "f"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 384
    :cond_0
    const-string/jumbo v1, "lly"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 385
    if-eqz v13, :cond_1

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "f"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 388
    :cond_1
    const-string/jumbo v1, "urx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 389
    if-eqz v13, :cond_2

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "f"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 392
    :cond_2
    const-string/jumbo v1, "ury"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 393
    if-eqz v13, :cond_3

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "f"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 397
    :cond_3
    const-string/jumbo v1, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, title:Ljava/lang/String;
    const-string/jumbo v1, "content"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, text:Ljava/lang/String;
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 400
    :cond_4
    new-instance v1, Lcom/itextpdf/text/Annotation;

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;FFFF)V

    move-object v14, v1

    .line 422
    :goto_0
    return-object v14

    .line 402
    :cond_5
    const-string/jumbo v1, "url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 403
    if-eqz v13, :cond_6

    .line 404
    new-instance v8, Lcom/itextpdf/text/Annotation;

    move v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/itextpdf/text/Annotation;-><init>(FFFFLjava/lang/String;)V

    move-object v14, v8

    goto :goto_0

    .line 406
    :cond_6
    const-string/jumbo v1, "named"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 407
    if-eqz v13, :cond_7

    .line 408
    new-instance v14, Lcom/itextpdf/text/Annotation;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v14 .. v19}, Lcom/itextpdf/text/Annotation;-><init>(FFFFI)V

    goto :goto_0

    .line 410
    :cond_7
    const-string/jumbo v1, "file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 411
    .local v19, file:Ljava/lang/String;
    const-string/jumbo v1, "destination"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 412
    .local v20, destination:Ljava/lang/String;
    const-string/jumbo v1, "page"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 413
    .local v28, page:Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 414
    if-eqz v20, :cond_8

    .line 415
    new-instance v14, Lcom/itextpdf/text/Annotation;

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v14 .. v20}, Lcom/itextpdf/text/Annotation;-><init>(FFFFLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_8
    if-eqz v28, :cond_9

    .line 418
    new-instance v21, Lcom/itextpdf/text/Annotation;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v19

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/text/Annotation;-><init>(FFFFLjava/lang/String;I)V

    move-object/from16 v14, v21

    goto :goto_0

    .line 422
    :cond_9
    new-instance v21, Lcom/itextpdf/text/Annotation;

    const-string/jumbo v22, ""

    const-string/jumbo v23, ""

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-direct/range {v21 .. v27}, Lcom/itextpdf/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;FFFF)V

    move-object/from16 v14, v21

    goto/16 :goto_0
.end method

.method public static getChapter(Ljava/util/Properties;)Lcom/itextpdf/text/ChapterAutoNumber;
    .locals 2
    .parameter "attributes"

    .prologue
    .line 272
    new-instance v0, Lcom/itextpdf/text/ChapterAutoNumber;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/itextpdf/text/ChapterAutoNumber;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, chapter:Lcom/itextpdf/text/ChapterAutoNumber;
    invoke-static {v0, p0}, Lcom/itextpdf/text/factories/ElementFactory;->setSectionParameters(Lcom/itextpdf/text/Section;Ljava/util/Properties;)V

    .line 274
    return-object v0
.end method

.method public static getChunk(Ljava/util/Properties;)Lcom/itextpdf/text/Chunk;
    .locals 8
    .parameter "attributes"

    .prologue
    .line 78
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0}, Lcom/itextpdf/text/Chunk;-><init>()V

    .line 80
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    invoke-static {p0}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/util/Properties;)Lcom/itextpdf/text/Font;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 83
    const-string/jumbo v5, "itext"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    sget-object v5, Lcom/itextpdf/text/ElementTags;->LOCALGOTO:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 91
    :cond_1
    sget-object v5, Lcom/itextpdf/text/ElementTags;->REMOTEGOTO:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    const-string/jumbo v5, "page"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, page:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/Chunk;->setRemoteGoto(Ljava/lang/String;I)Lcom/itextpdf/text/Chunk;

    .line 104
    .end local v3           #page:Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v5, Lcom/itextpdf/text/ElementTags;->LOCALDESTINATION:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 108
    :cond_3
    sget-object v5, Lcom/itextpdf/text/ElementTags;->SUBSUPSCRIPT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    .line 112
    :cond_4
    const-string/jumbo v5, "vertical-align"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    if-eqz v4, :cond_5

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x42c8

    div-float v2, v5, v6

    .line 116
    .local v2, p:F
    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v5

    mul-float/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Chunk;->setTextRise(F)Lcom/itextpdf/text/Chunk;

    .line 118
    .end local v2           #p:F
    :cond_5
    sget-object v5, Lcom/itextpdf/text/ElementTags;->GENERICTAG:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->setGenericTag(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 122
    :cond_6
    const-string/jumbo v5, "backgroundcolor"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    if-eqz v4, :cond_7

    .line 124
    invoke-static {v4}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/Chunk;->setBackground(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Chunk;

    .line 126
    :cond_7
    return-object v0

    .line 97
    .restart local v3       #page:Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "destination"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, destination:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/Chunk;->setRemoteGoto(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    goto/16 :goto_0
.end method

.method public static getImage(Ljava/util/Properties;)Lcom/itextpdf/text/Image;
    .locals 8
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const-string/jumbo v5, "url"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 324
    new-instance v5, Ljava/net/MalformedURLException;

    const-string/jumbo v6, "the.url.of.the.image.is.missing"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_0
    invoke-static {v2}, Lcom/itextpdf/text/Image;->getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v1

    .line 327
    .local v1, image:Lcom/itextpdf/text/Image;
    const-string/jumbo v5, "align"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, align:I
    if-eqz v2, :cond_1

    .line 330
    const-string/jumbo v5, "Left"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 331
    or-int/lit8 v0, v0, 0x0

    .line 337
    :cond_1
    :goto_0
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "underlying"

    invoke-virtual {p0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    or-int/lit8 v0, v0, 0x8

    .line 340
    :cond_2
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "textwrap"

    invoke-virtual {p0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    or-int/lit8 v0, v0, 0x4

    .line 343
    :cond_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/Image;->setAlignment(I)V

    .line 345
    const-string/jumbo v5, "alt"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_4

    .line 347
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Image;->setAlt(Ljava/lang/String;)V

    .line 350
    :cond_4
    const-string/jumbo v5, "absolutex"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, x:Ljava/lang/String;
    const-string/jumbo v5, "absolutey"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, y:Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 356
    :cond_5
    const-string/jumbo v5, "plainwidth"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_6

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/Image;->scaleAbsoluteWidth(F)V

    .line 360
    :cond_6
    const-string/jumbo v5, "plainheight"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_7

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/Image;->scaleAbsoluteHeight(F)V

    .line 364
    :cond_7
    const-string/jumbo v5, "rotation"

    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_8

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/Image;->setRotation(F)V

    .line 368
    :cond_8
    return-object v1

    .line 332
    .end local v3           #x:Ljava/lang/String;
    .end local v4           #y:Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "Right"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 333
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 334
    :cond_a
    const-string/jumbo v5, "Middle"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getList(Ljava/util/Properties;)Lcom/itextpdf/text/List;
    .locals 5
    .parameter "attributes"

    .prologue
    .line 216
    new-instance v1, Lcom/itextpdf/text/List;

    invoke-direct {v1}, Lcom/itextpdf/text/List;-><init>()V

    .line 218
    .local v1, list:Lcom/itextpdf/text/List;
    const-string/jumbo v3, "numbered"

    invoke-static {p0, v3}, Lcom/itextpdf/text/Utilities;->checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setNumbered(Z)V

    .line 220
    const-string/jumbo v3, "lettered"

    invoke-static {p0, v3}, Lcom/itextpdf/text/Utilities;->checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setLettered(Z)V

    .line 222
    const-string/jumbo v3, "lowercase"

    invoke-static {p0, v3}, Lcom/itextpdf/text/Utilities;->checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setLowercase(Z)V

    .line 224
    const-string/jumbo v3, "autoindent"

    invoke-static {p0, v3}, Lcom/itextpdf/text/Utilities;->checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setAutoindent(Z)V

    .line 226
    const-string/jumbo v3, "alignindent"

    invoke-static {p0, v3}, Lcom/itextpdf/text/Utilities;->checkTrueOrFalse(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setAlignindent(Z)V

    .line 231
    const-string/jumbo v3, "first"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, character:C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/List;->setFirst(I)V

    .line 241
    .end local v0           #character:C
    :cond_0
    :goto_0
    const-string/jumbo v3, "listsymbol"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_1

    .line 243
    new-instance v3, Lcom/itextpdf/text/Chunk;

    invoke-static {p0}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/util/Properties;)Lcom/itextpdf/text/Font;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 248
    :cond_1
    const-string/jumbo v3, "indentationleft"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_2

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 253
    :cond_2
    const-string/jumbo v3, "indentationright"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_3

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setIndentationRight(F)V

    .line 258
    :cond_3
    const-string/jumbo v3, "symbolindent"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_4

    .line 260
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setSymbolIndent(F)V

    .line 263
    :cond_4
    return-object v1

    .line 237
    .restart local v0       #character:C
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setFirst(I)V

    goto :goto_0
.end method

.method public static getListItem(Ljava/util/Properties;)Lcom/itextpdf/text/ListItem;
    .locals 2
    .parameter "attributes"

    .prologue
    .line 206
    new-instance v0, Lcom/itextpdf/text/ListItem;

    invoke-static {p0}, Lcom/itextpdf/text/factories/ElementFactory;->getParagraph(Ljava/util/Properties;)Lcom/itextpdf/text/Paragraph;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/ListItem;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 207
    .local v0, item:Lcom/itextpdf/text/ListItem;
    return-object v0
.end method

.method public static getParagraph(Ljava/util/Properties;)Lcom/itextpdf/text/Paragraph;
    .locals 4
    .parameter "attributes"

    .prologue
    .line 183
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-static {p0}, Lcom/itextpdf/text/factories/ElementFactory;->getPhrase(Ljava/util/Properties;)Lcom/itextpdf/text/Phrase;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 185
    .local v0, paragraph:Lcom/itextpdf/text/Paragraph;
    const-string/jumbo v2, "align"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string/jumbo v2, "indentationleft"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Paragraph;->setIndentationLeft(F)V

    .line 193
    :cond_1
    const-string/jumbo v2, "indentationright"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_2

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Paragraph;->setIndentationRight(F)V

    .line 197
    :cond_2
    return-object v0
.end method

.method public static getPhrase(Ljava/util/Properties;)Lcom/itextpdf/text/Phrase;
    .locals 5
    .parameter "attributes"

    .prologue
    .line 135
    new-instance v1, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1}, Lcom/itextpdf/text/Phrase;-><init>()V

    .line 136
    .local v1, phrase:Lcom/itextpdf/text/Phrase;
    invoke-static {p0}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/util/Properties;)Lcom/itextpdf/text/Font;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/Phrase;->setFont(Lcom/itextpdf/text/Font;)V

    .line 138
    const-string/jumbo v3, "leading"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/Phrase;->setLeading(F)V

    .line 142
    :cond_0
    const-string/jumbo v3, "line-height"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/Phrase;->setLeading(F)V

    .line 147
    :cond_1
    const-string/jumbo v3, "itext"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    sget-object v3, Lcom/itextpdf/text/ElementTags;->GENERICTAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Chunk;->setGenericTag(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 153
    :cond_2
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 155
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    :cond_3
    return-object v1
.end method

.method public static getSection(Lcom/itextpdf/text/Section;Ljava/util/Properties;)Lcom/itextpdf/text/Section;
    .locals 2
    .parameter "parent"
    .parameter "attributes"

    .prologue
    .line 283
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Section;->addSection(Ljava/lang/String;)Lcom/itextpdf/text/Section;

    move-result-object v0

    .line 284
    .local v0, section:Lcom/itextpdf/text/Section;
    invoke-static {v0, p1}, Lcom/itextpdf/text/factories/ElementFactory;->setSectionParameters(Lcom/itextpdf/text/Section;Ljava/util/Properties;)V

    .line 285
    return-object v0
.end method

.method private static setSectionParameters(Lcom/itextpdf/text/Section;Ljava/util/Properties;)V
    .locals 3
    .parameter "section"
    .parameter "attributes"

    .prologue
    .line 295
    const-string/jumbo v1, "numberdepth"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Section;->setNumberDepth(I)V

    .line 299
    :cond_0
    const-string/jumbo v1, "indent"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_1

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Section;->setIndentation(F)V

    .line 303
    :cond_1
    const-string/jumbo v1, "indentationleft"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Section;->setIndentationLeft(F)V

    .line 307
    :cond_2
    const-string/jumbo v1, "indentationright"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_3

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Section;->setIndentationRight(F)V

    .line 311
    :cond_3
    return-void
.end method
