.class public Lcom/itextpdf/text/html/Markup;
.super Ljava/lang/Object;
.source "Markup.java"


# static fields
.field public static final CSS_KEY_BGCOLOR:Ljava/lang/String; = "background-color"

.field public static final CSS_KEY_BORDERCOLOR:Ljava/lang/String; = "border-color"

.field public static final CSS_KEY_BORDERWIDTH:Ljava/lang/String; = "border-width"

.field public static final CSS_KEY_BORDERWIDTHBOTTOM:Ljava/lang/String; = "border-bottom-width"

.field public static final CSS_KEY_BORDERWIDTHLEFT:Ljava/lang/String; = "border-left-width"

.field public static final CSS_KEY_BORDERWIDTHRIGHT:Ljava/lang/String; = "border-right-width"

.field public static final CSS_KEY_BORDERWIDTHTOP:Ljava/lang/String; = "border-top-width"

.field public static final CSS_KEY_COLOR:Ljava/lang/String; = "color"

.field public static final CSS_KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final CSS_KEY_FONTFAMILY:Ljava/lang/String; = "font-family"

.field public static final CSS_KEY_FONTSIZE:Ljava/lang/String; = "font-size"

.field public static final CSS_KEY_FONTSTYLE:Ljava/lang/String; = "font-style"

.field public static final CSS_KEY_FONTWEIGHT:Ljava/lang/String; = "font-weight"

.field public static final CSS_KEY_LINEHEIGHT:Ljava/lang/String; = "line-height"

.field public static final CSS_KEY_MARGIN:Ljava/lang/String; = "margin"

.field public static final CSS_KEY_MARGINBOTTOM:Ljava/lang/String; = "margin-bottom"

.field public static final CSS_KEY_MARGINLEFT:Ljava/lang/String; = "margin-left"

.field public static final CSS_KEY_MARGINRIGHT:Ljava/lang/String; = "margin-right"

.field public static final CSS_KEY_MARGINTOP:Ljava/lang/String; = "margin-top"

.field public static final CSS_KEY_PADDING:Ljava/lang/String; = "padding"

.field public static final CSS_KEY_PADDINGBOTTOM:Ljava/lang/String; = "padding-bottom"

.field public static final CSS_KEY_PADDINGLEFT:Ljava/lang/String; = "padding-left"

.field public static final CSS_KEY_PADDINGRIGHT:Ljava/lang/String; = "padding-right"

.field public static final CSS_KEY_PADDINGTOP:Ljava/lang/String; = "padding-top"

.field public static final CSS_KEY_PAGE_BREAK_AFTER:Ljava/lang/String; = "page-break-after"

.field public static final CSS_KEY_PAGE_BREAK_BEFORE:Ljava/lang/String; = "page-break-before"

.field public static final CSS_KEY_TEXTALIGN:Ljava/lang/String; = "text-align"

.field public static final CSS_KEY_TEXTDECORATION:Ljava/lang/String; = "text-decoration"

.field public static final CSS_KEY_VERTICALALIGN:Ljava/lang/String; = "vertical-align"

.field public static final CSS_KEY_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final CSS_VALUE_ALWAYS:Ljava/lang/String; = "always"

.field public static final CSS_VALUE_BLOCK:Ljava/lang/String; = "block"

.field public static final CSS_VALUE_BOLD:Ljava/lang/String; = "bold"

.field public static final CSS_VALUE_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final CSS_VALUE_INLINE:Ljava/lang/String; = "inline"

.field public static final CSS_VALUE_ITALIC:Ljava/lang/String; = "italic"

.field public static final CSS_VALUE_LINETHROUGH:Ljava/lang/String; = "line-through"

.field public static final CSS_VALUE_LISTITEM:Ljava/lang/String; = "list-item"

.field public static final CSS_VALUE_NONE:Ljava/lang/String; = "none"

.field public static final CSS_VALUE_NORMAL:Ljava/lang/String; = "normal"

.field public static final CSS_VALUE_OBLIQUE:Ljava/lang/String; = "oblique"

.field public static final CSS_VALUE_TABLE:Ljava/lang/String; = "table"

.field public static final CSS_VALUE_TABLECELL:Ljava/lang/String; = "table-cell"

.field public static final CSS_VALUE_TABLEROW:Ljava/lang/String; = "table-row"

.field public static final CSS_VALUE_TEXTALIGNCENTER:Ljava/lang/String; = "center"

.field public static final CSS_VALUE_TEXTALIGNJUSTIFY:Ljava/lang/String; = "justify"

.field public static final CSS_VALUE_TEXTALIGNLEFT:Ljava/lang/String; = "left"

.field public static final CSS_VALUE_TEXTALIGNRIGHT:Ljava/lang/String; = "right"

.field public static final CSS_VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field public static final DEFAULT_FONT_SIZE:F = 12.0f

.field public static final HTML_ATTR_CSS_CLASS:Ljava/lang/String; = "class"

.field public static final HTML_ATTR_CSS_ID:Ljava/lang/String; = "id"

.field public static final HTML_ATTR_HEIGHT:Ljava/lang/String; = "height"

.field public static final HTML_ATTR_HREF:Ljava/lang/String; = "href"

.field public static final HTML_ATTR_REL:Ljava/lang/String; = "rel"

.field public static final HTML_ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final HTML_ATTR_STYLESHEET:Ljava/lang/String; = "stylesheet"

.field public static final HTML_ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final HTML_ATTR_WIDTH:Ljava/lang/String; = "width"

.field public static final HTML_TAG_BODY:Ljava/lang/String; = "body"

.field public static final HTML_TAG_DIV:Ljava/lang/String; = "div"

.field public static final HTML_TAG_LINK:Ljava/lang/String; = "link"

.field public static final HTML_TAG_SPAN:Ljava/lang/String; = "span"

.field public static final HTML_VALUE_CSS:Ljava/lang/String; = "text/css"

.field public static final HTML_VALUE_JAVASCRIPT:Ljava/lang/String; = "text/javascript"

.field public static final ITEXT_TAG:Ljava/lang/String; = "tag"

.field private static sizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    .line 275
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x40c0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4100

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4120

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4150

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x4190

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    new-instance v2, Ljava/lang/Float;

    const/high16 v3, 0x41d0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 377
    if-nez p0, :cond_0

    .line 384
    :goto_0
    return-object v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 381
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/text/html/WebColors;->getRGBColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static parseAttributes(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .parameter "string"

    .prologue
    .line 398
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 399
    .local v3, result:Ljava/util/Properties;
    if-nez p0, :cond_1

    .line 421
    :cond_0
    return-object v3

    .line 401
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ";"

    invoke-direct {v2, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v2, keyValuePairs:Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-direct {v1, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v1, keyValuePair:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, value:Ljava/lang/String;
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 416
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 417
    :cond_3
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 418
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 419
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static parseLength(Ljava/lang/String;)F
    .locals 1
    .parameter "string"

    .prologue
    .line 294
    const/high16 v0, 0x4140

    invoke-static {p0, v0}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static parseLength(Ljava/lang/String;F)F
    .locals 8
    .parameter "string"
    .parameter "actualFontSize"

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x4290

    .line 303
    if-nez p0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    sget-object v5, Lcom/itextpdf/text/html/Markup;->sizes:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 306
    .local v1, fl:Ljava/lang/Float;
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 308
    :cond_2
    const/4 v4, 0x0

    .line 309
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 310
    .local v2, length:I
    const/4 v3, 0x1

    .line 311
    .local v3, ok:Z
    :goto_1
    if-eqz v3, :cond_3

    if-ge v4, v2, :cond_3

    .line 312
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 329
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 326
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 327
    goto :goto_1

    .line 332
    :cond_3
    if-eqz v4, :cond_0

    .line 334
    if-ne v4, v2, :cond_4

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 336
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 337
    .local v0, f:F
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 339
    const-string/jumbo v5, "in"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 340
    mul-float/2addr v0, v7

    goto :goto_0

    .line 343
    :cond_5
    const-string/jumbo v5, "cm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 344
    const v5, 0x40228f5c

    div-float v5, v0, v5

    mul-float v0, v5, v7

    goto/16 :goto_0

    .line 347
    :cond_6
    const-string/jumbo v5, "mm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 348
    const v5, 0x41cb3333

    div-float v5, v0, v5

    mul-float v0, v5, v7

    goto/16 :goto_0

    .line 351
    :cond_7
    const-string/jumbo v5, "pc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 352
    const/high16 v5, 0x4140

    mul-float/2addr v0, v5

    goto/16 :goto_0

    .line 355
    :cond_8
    const-string/jumbo v5, "em"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 356
    mul-float/2addr v0, p1

    goto/16 :goto_0

    .line 360
    :cond_9
    const-string/jumbo v5, "ex"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    mul-float v5, v0, p1

    const/high16 v6, 0x4000

    div-float v0, v5, v6

    goto/16 :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static removeComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"
    .parameter "startComment"
    .parameter "endComment"

    .prologue
    .line 437
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    .local v2, result:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 439
    .local v1, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    .local v0, end:I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 441
    .local v3, start:I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 442
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int v1, v4, v0

    .line 444
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
