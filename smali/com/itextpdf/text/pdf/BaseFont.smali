.class public abstract Lcom/itextpdf/text/pdf/BaseFont;
.super Ljava/lang/Object;
.source "BaseFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/BaseFont$StreamFont;
    }
.end annotation


# static fields
.field public static final ASCENT:I = 0x1

.field public static final AWT_ASCENT:I = 0x9

.field public static final AWT_DESCENT:I = 0xa

.field public static final AWT_LEADING:I = 0xb

.field public static final AWT_MAXADVANCE:I = 0xc

.field public static final BBOXLLX:I = 0x5

.field public static final BBOXLLY:I = 0x6

.field public static final BBOXURX:I = 0x7

.field public static final BBOXURY:I = 0x8

.field protected static final BuiltinFonts14:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field public static final CACHED:Z = true

.field public static final CAPHEIGHT:I = 0x2

.field public static final CHAR_RANGE_ARABIC:[I = null

.field public static final CHAR_RANGE_CYRILLIC:[I = null

.field public static final CHAR_RANGE_HEBREW:[I = null

.field public static final CHAR_RANGE_LATIN:[I = null

.field public static final CID_NEWLINE:C = '\u7fff'

.field public static final COURIER:Ljava/lang/String; = "Courier"

.field public static final COURIER_BOLD:Ljava/lang/String; = "Courier-Bold"

.field public static final COURIER_BOLDOBLIQUE:Ljava/lang/String; = "Courier-BoldOblique"

.field public static final COURIER_OBLIQUE:Ljava/lang/String; = "Courier-Oblique"

.field public static final CP1250:Ljava/lang/String; = "Cp1250"

.field public static final CP1252:Ljava/lang/String; = "Cp1252"

.field public static final CP1257:Ljava/lang/String; = "Cp1257"

.field public static final DESCENT:I = 0x3

.field public static final EMBEDDED:Z = true

.field public static final FONT_TYPE_CJK:I = 0x2

.field public static final FONT_TYPE_DOCUMENT:I = 0x4

.field public static final FONT_TYPE_T1:I = 0x0

.field public static final FONT_TYPE_T3:I = 0x5

.field public static final FONT_TYPE_TT:I = 0x1

.field public static final FONT_TYPE_TTUNI:I = 0x3

.field public static final HELVETICA:Ljava/lang/String; = "Helvetica"

.field public static final HELVETICA_BOLD:Ljava/lang/String; = "Helvetica-Bold"

.field public static final HELVETICA_BOLDOBLIQUE:Ljava/lang/String; = "Helvetica-BoldOblique"

.field public static final HELVETICA_OBLIQUE:Ljava/lang/String; = "Helvetica-Oblique"

.field public static final IDENTITY_H:Ljava/lang/String; = "Identity-H"

.field public static final IDENTITY_V:Ljava/lang/String; = "Identity-V"

.field public static final ITALICANGLE:I = 0x4

.field public static final MACROMAN:Ljava/lang/String; = "MacRoman"

.field public static final NOT_CACHED:Z = false

.field public static final NOT_EMBEDDED:Z = false

.field public static final RESOURCE_PATH:Ljava/lang/String; = "com/itextpdf/text/pdf/fonts/"

.field public static final STRIKETHROUGH_POSITION:I = 0xf

.field public static final STRIKETHROUGH_THICKNESS:I = 0x10

.field public static final SUBSCRIPT_OFFSET:I = 0x12

.field public static final SUBSCRIPT_SIZE:I = 0x11

.field public static final SUPERSCRIPT_OFFSET:I = 0x14

.field public static final SUPERSCRIPT_SIZE:I = 0x13

.field public static final SYMBOL:Ljava/lang/String; = "Symbol"

.field public static final TIMES_BOLD:Ljava/lang/String; = "Times-Bold"

.field public static final TIMES_BOLDITALIC:Ljava/lang/String; = "Times-BoldItalic"

.field public static final TIMES_ITALIC:Ljava/lang/String; = "Times-Italic"

.field public static final TIMES_ROMAN:Ljava/lang/String; = "Times-Roman"

.field public static final UNDERLINE_POSITION:I = 0xd

.field public static final UNDERLINE_THICKNESS:I = 0xe

.field public static final WEIGHT_CLASS:I = 0x15

.field public static final WIDTH_CLASS:I = 0x16

.field public static final WINANSI:Ljava/lang/String; = "Cp1252"

.field public static final ZAPFDINGBATS:Ljava/lang/String; = "ZapfDingbats"

.field protected static fontCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field public static final notdef:Ljava/lang/String; = ".notdef"


# instance fields
.field protected charBBoxes:[[I

.field protected compressionLevel:I

.field protected differences:[Ljava/lang/String;

.field protected directTextToByte:Z

.field protected embedded:Z

.field protected encoding:Ljava/lang/String;

.field protected fastWinansi:Z

.field protected fontSpecific:Z

.field fontType:I

.field protected forceWidthsOutput:Z

.field protected specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

.field protected subset:Z

.field protected subsetRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field protected unicodeDifferences:[C

.field protected widths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 224
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->CHAR_RANGE_LATIN:[I

    .line 225
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->CHAR_RANGE_ARABIC:[I

    .line 226
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->CHAR_RANGE_HEBREW:[I

    .line 227
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->CHAR_RANGE_CYRILLIC:[I

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    .line 309
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Courier"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COURIER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Courier-Bold"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COURIER_BOLD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Courier-BoldOblique"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COURIER_BOLDOBLIQUE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Courier-Oblique"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COURIER_OBLIQUE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Helvetica"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Helvetica-Bold"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA_BOLD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Helvetica-BoldOblique"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA_BOLDOBLIQUE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Helvetica-Oblique"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA_OBLIQUE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Symbol"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SYMBOL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Times-Roman"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TIMES_ROMAN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Times-Bold"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TIMES_BOLD:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Times-BoldItalic"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TIMES_BOLDITALIC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "Times-Italic"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TIMES_ITALIC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    const-string/jumbo v1, "ZapfDingbats"

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ZAPFDINGBATS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void

    .line 224
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7ft 0x1t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x6ft 0x20t 0x0t 0x0t
        0xa0t 0x20t 0x0t 0x0t
        0xcft 0x20t 0x0t 0x0t
        0x0t 0xfbt 0x0t 0x0t
        0x6t 0xfbt 0x0t 0x0t
    .end array-data

    .line 225
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x6t 0x0t 0x0t
        0x7ft 0x6t 0x0t 0x0t
        0xa0t 0x20t 0x0t 0x0t
        0xcft 0x20t 0x0t 0x0t
        0x50t 0xfbt 0x0t 0x0t
        0xfft 0xfbt 0x0t 0x0t
        0x70t 0xfet 0x0t 0x0t
        0xfft 0xfet 0x0t 0x0t
    .end array-data

    .line 226
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x90t 0x5t 0x0t 0x0t
        0xfft 0x5t 0x0t 0x0t
        0xa0t 0x20t 0x0t 0x0t
        0xcft 0x20t 0x0t 0x0t
        0x1dt 0xfbt 0x0t 0x0t
        0x4ft 0xfbt 0x0t 0x0t
    .end array-data

    .line 227
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x2ft 0x5t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x6ft 0x20t 0x0t 0x0t
        0xa0t 0x20t 0x0t 0x0t
        0xcft 0x20t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x100

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    .line 255
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    .line 257
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    .line 259
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->compressionLevel:I

    .line 277
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->fontSpecific:Z

    .line 288
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/BaseFont;->forceWidthsOutput:Z

    .line 293
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/BaseFont;->directTextToByte:Z

    .line 298
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->subset:Z

    .line 300
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/BaseFont;->fastWinansi:Z

    .line 378
    return-void
.end method

.method private static addFont(Lcom/itextpdf/text/pdf/PRIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "fontRef"
    .parameter "hits"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PRIndirectReference;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v7, 0x1

    .line 1425
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 1426
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 1428
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1429
    .local v0, font:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    .line 1430
    .local v3, subtype:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1432
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 1433
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p0, v4, v7

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {p1, v4, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0
.end method

.method public static createFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const-string/jumbo v0, "Helvetica"

    const-string/jumbo v1, "Cp1252"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1
    .parameter "fontRef"

    .prologue
    .line 718
    new-instance v0, Lcom/itextpdf/text/pdf/DocumentFont;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 7
    .parameter "name"
    .parameter "encoding"
    .parameter "embedded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 441
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZ)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 7
    .parameter "name"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "forceRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 495
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZ)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 7
    .parameter "name"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "cached"
    .parameter "ttfAfm"
    .parameter "pfb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZ)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZ)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 8
    .parameter "name"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "cached"
    .parameter "ttfAfm"
    .parameter "pfb"
    .parameter "noThrow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZZ)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZZ)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 13
    .parameter "name"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "cached"
    .parameter "ttfAfm"
    .parameter "pfb"
    .parameter "noThrow"
    .parameter "forceRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {p0}, Lcom/itextpdf/text/pdf/BaseFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 665
    .local v12, nameBase:Ljava/lang/String;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BaseFont;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 666
    sget-object v2, Lcom/itextpdf/text/pdf/BaseFont;->BuiltinFonts14:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 667
    .local v9, isBuiltinFonts14:Z
    if-eqz v9, :cond_2

    const/4 v10, 0x0

    .line 668
    .local v10, isCJKFont:Z
    :goto_0
    if-nez v9, :cond_0

    if-eqz v10, :cond_3

    .line 669
    :cond_0
    const/4 p2, 0x0

    .line 672
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 673
    .local v8, fontFound:Lcom/itextpdf/text/pdf/BaseFont;
    const/4 v1, 0x0

    .line 674
    .local v1, fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, key:Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 676
    sget-object v3, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 677
    :try_start_0
    sget-object v2, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/BaseFont;

    move-object v8, v0

    .line 678
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    if-eqz v8, :cond_5

    move-object v2, v8

    .line 708
    :goto_2
    return-object v2

    .line 667
    .end local v1           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v8           #fontFound:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v10           #isCJKFont:Z
    .end local v11           #key:Ljava/lang/String;
    :cond_2
    invoke-static {v12, p1}, Lcom/itextpdf/text/pdf/CJKFont;->isCJKFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_0

    .line 670
    .restart local v10       #isCJKFont:Z
    :cond_3
    const-string/jumbo v2, "Identity-H"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "Identity-V"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    :cond_4
    const/4 p2, 0x1

    goto :goto_1

    .line 678
    .restart local v1       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v8       #fontFound:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v11       #key:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 682
    :cond_5
    if-nez v9, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".afm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".pfm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 683
    :cond_6
    new-instance v1, Lcom/itextpdf/text/pdf/Type1Font;

    .end local v1           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;Z[B[BZ)V

    .line 684
    .restart local v1       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const-string/jumbo v2, "Cp1252"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/itextpdf/text/pdf/BaseFont;->fastWinansi:Z

    .line 700
    :goto_3
    if-eqz p3, :cond_f

    .line 701
    sget-object v3, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 702
    :try_start_2
    sget-object v2, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/BaseFont;

    move-object v8, v0

    .line 703
    if-eqz v8, :cond_e

    .line 704
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v8

    goto :goto_2

    .line 686
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".otf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".ttc,"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    .line 687
    :cond_8
    const-string/jumbo v2, "Identity-H"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "Identity-V"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 688
    :cond_9
    new-instance v1, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;

    .end local v1           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;-><init>(Ljava/lang/String;Ljava/lang/String;Z[BZ)V

    .restart local v1       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    goto :goto_3

    .line 690
    :cond_a
    new-instance v1, Lcom/itextpdf/text/pdf/TrueTypeFont;

    .end local v1           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/String;Z[BZZ)V

    .line 691
    .restart local v1       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const-string/jumbo v2, "Cp1252"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/itextpdf/text/pdf/BaseFont;->fastWinansi:Z

    goto :goto_3

    .line 694
    :cond_b
    if-eqz v10, :cond_c

    .line 695
    new-instance v1, Lcom/itextpdf/text/pdf/CJKFont;

    .end local v1           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-direct {v1, p0, p1, p2}, Lcom/itextpdf/text/pdf/CJKFont;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v1       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    goto :goto_3

    .line 696
    :cond_c
    if-eqz p6, :cond_d

    .line 697
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 699
    :cond_d
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "font.1.with.2.is.not.recognized"

    invoke-static {v3, p0, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    :cond_e
    :try_start_3
    sget-object v2, Lcom/itextpdf/text/pdf/BaseFont;->fontCache:Ljava/util/HashMap;

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v3

    :cond_f
    move-object v2, v1

    .line 708
    goto/16 :goto_2

    .line 706
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static createSubsetPrefix()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1113
    const-string/jumbo v1, ""

    .line 1114
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x403a

    mul-double/2addr v3, v5

    const-wide v5, 0x4050400000000000L

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static enumerateTTCNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "ttcFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    new-instance v0, Lcom/itextpdf/text/pdf/EnumerateTTC;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/EnumerateTTC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/EnumerateTTC;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enumerateTTCNames([B)[Ljava/lang/String;
    .locals 1
    .parameter "ttcArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1257
    new-instance v0, Lcom/itextpdf/text/pdf/EnumerateTTC;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/EnumerateTTC;-><init>([B)V

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/EnumerateTTC;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;
    .locals 13
    .parameter "name"
    .parameter "encoding"
    .parameter "ttfAfm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1192
    invoke-static {p0}, Lcom/itextpdf/text/pdf/BaseFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1193
    .local v12, nameBase:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1194
    .local v0, fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".otf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttc,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1195
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont;

    .end local v0           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const-string/jumbo v2, "Cp1252"

    move-object v1, p0

    move-object v4, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/String;Z[BZZ)V

    .line 1198
    .restart local v0       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFamilyFontName()[[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 1197
    :cond_1
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    move v9, v3

    move-object v10, p2

    invoke-static/range {v6 .. v11}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAllNameEntries(Ljava/lang/String;Ljava/lang/String;[B)[[Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "encoding"
    .parameter "ttfAfm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1211
    invoke-static {p0}, Lcom/itextpdf/text/pdf/BaseFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1212
    .local v7, nameBase:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1213
    .local v0, fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".otf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttc,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1214
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont;

    .end local v0           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const-string/jumbo v2, "Cp1252"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/String;Z[BZZ)V

    .line 1217
    .restart local v0       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getAllNameEntries()[[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1216
    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 727
    const-string/jumbo v0, ",Bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 734
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 729
    .restart local p0
    :cond_1
    const-string/jumbo v0, ",Italic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 731
    :cond_2
    const-string/jumbo v0, ",BoldItalic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDocumentFonts(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/ArrayList;
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 1477
    .local v1, hits:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    .local v0, fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v3

    .line 1479
    .local v3, npages:I
    const/4 v2, 0x1

    .local v2, k:I
    :goto_0
    if-gt v2, v3, :cond_0

    .line 1480
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v0, v5}, Lcom/itextpdf/text/pdf/BaseFont;->recourseFonts(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;I)V

    .line 1479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1481
    :cond_0
    return-object v0
.end method

.method public static getDocumentFonts(Lcom/itextpdf/text/pdf/PdfReader;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "reader"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "I)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 1494
    .local v1, hits:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v0, fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/itextpdf/text/pdf/BaseFont;->recourseFonts(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;I)V

    .line 1496
    return-object v0
.end method

.method public static getFullFontName(Ljava/lang/String;Ljava/lang/String;[B)[[Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "encoding"
    .parameter "ttfAfm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1174
    invoke-static {p0}, Lcom/itextpdf/text/pdf/BaseFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1175
    .local v7, nameBase:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1176
    .local v0, fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".otf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttc,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1177
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont;

    .end local v0           #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    const-string/jumbo v2, "Cp1252"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>(Ljava/lang/String;Ljava/lang/String;Z[BZZ)V

    .line 1180
    .restart local v0       #fontBuilt:Lcom/itextpdf/text/pdf/BaseFont;
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1179
    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "key"

    .prologue
    .line 1339
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;
    .locals 6
    .parameter "key"
    .parameter "loader"

    .prologue
    .line 1349
    const-string/jumbo v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1350
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1351
    :cond_0
    const/4 v1, 0x0

    .line 1352
    .local v1, is:Ljava/io/InputStream;
    if-eqz p1, :cond_1

    .line 1353
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1354
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 1371
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 1359
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1360
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 1361
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1365
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1366
    const-class v3, Lcom/itextpdf/text/pdf/BaseFont;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1368
    :cond_3
    if-nez v1, :cond_4

    .line 1369
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_4
    move-object v2, v1

    .line 1371
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 1363
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected static normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "enc"

    .prologue
    .line 744
    const-string/jumbo v0, "winansi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    :cond_0
    const-string/jumbo p0, "Cp1252"

    .line 749
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 746
    .restart local p0
    :cond_2
    const-string/jumbo v0, "macroman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    const-string/jumbo p0, "MacRoman"

    goto :goto_0
.end method

.method private static recourseFonts(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;I)V
    .locals 9
    .parameter "page"
    .parameter "hits"
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p2, fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    add-int/lit8 p3, p3, 0x1

    .line 1439
    const/16 v8, 0x32

    if-le p3, v8, :cond_1

    .line 1466
    :cond_0
    return-void

    .line 1441
    :cond_1
    if-eqz p0, :cond_0

    .line 1443
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 1444
    .local v6, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v6, :cond_0

    .line 1446
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1447
    .local v0, font:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_3

    .line 1448
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 1449
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 1450
    .local v1, ft:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v1

    .line 1452
    check-cast v8, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    .line 1453
    .local v2, hit:I
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1455
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v1           #ft:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1, p1, p2}, Lcom/itextpdf/text/pdf/BaseFont;->addFont(Lcom/itextpdf/text/pdf/PRIndirectReference;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1458
    .end local v2           #hit:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_3
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 1459
    .local v7, xobj:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v7, :cond_0

    .line 1460
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 1461
    .restart local v4       #key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 1462
    .local v5, po:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v8, v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v8, :cond_4

    .line 1463
    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v5           #po:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v5, p1, p2, p3}, Lcom/itextpdf/text/pdf/BaseFont;->recourseFonts(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Ljava/util/ArrayList;I)V

    goto :goto_1
.end method


# virtual methods
.method public addSubsetRange([I)V
    .locals 1
    .parameter "range"

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->subsetRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->subsetRanges:Ljava/util/ArrayList;

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->subsetRanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    return-void
.end method

.method public charExists(I)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1405
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v0

    .line 1406
    .local v0, b:[B
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 3
    .parameter "char1"

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->directTextToByte:Z

    if-eqz v0, :cond_0

    .line 1041
    int-to-char v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(CLjava/lang/String;)[B

    move-result-object v0

    .line 1048
    :goto_0
    return-object v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    const/4 v0, 0x1

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 1046
    :cond_1
    new-array v0, v2, [B

    goto :goto_0

    .line 1048
    :cond_2
    int-to-char v0, p1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(CLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    .line 1011
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/BaseFont;->directTextToByte:Z

    if-eqz v7, :cond_0

    .line 1012
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1030
    :goto_0
    return-object v1

    .line 1013
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v7, :cond_3

    .line 1014
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    new-array v0, v7, [B

    .line 1015
    .local v0, b:[B
    const/4 v5, 0x0

    .line 1016
    .local v5, ptr:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1017
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, k:I
    move v6, v5

    .end local v5           #ptr:I
    .local v6, ptr:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1018
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1019
    .local v2, c:C
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1020
    add-int/lit8 v5, v6, 0x1

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 1017
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_1

    .line 1022
    .end local v2           #c:C
    :cond_1
    if-ge v6, v4, :cond_2

    .line 1023
    new-array v1, v6, [B

    .line 1024
    .local v1, b2:[B
    invoke-static {v0, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1           #b2:[B
    :cond_2
    move-object v1, v0

    .line 1028
    goto :goto_0

    .line 1030
    .end local v0           #b:[B
    .end local v3           #k:I
    .end local v4           #length:I
    .end local v6           #ptr:I
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .restart local v0       #b:[B
    .restart local v2       #c:C
    .restart local v3       #k:I
    .restart local v4       #length:I
    .restart local v6       #ptr:I
    :cond_4
    move v5, v6

    .end local v6           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_2
.end method

.method public correctArabicAdvance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1526
    const/16 v0, 0x64b

    .local v0, c:C
    :goto_0
    const/16 v1, 0x658

    if-gt v0, v1, :cond_0

    .line 1527
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1526
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 1528
    :cond_0
    const/16 v1, 0x670

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1529
    const/16 v0, 0x6d6

    :goto_1
    const/16 v1, 0x6dc

    if-gt v0, v1, :cond_1

    .line 1530
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1529
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 1531
    :cond_1
    const/16 v0, 0x6df

    :goto_2
    const/16 v1, 0x6e4

    if-gt v0, v1, :cond_2

    .line 1532
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1531
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_2

    .line 1533
    :cond_2
    const/16 v0, 0x6e7

    :goto_3
    const/16 v1, 0x6e8

    if-gt v0, v1, :cond_3

    .line 1534
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1533
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_3

    .line 1535
    :cond_3
    const/16 v0, 0x6ea

    :goto_4
    const/16 v1, 0x6ed

    if-gt v0, v1, :cond_4

    .line 1536
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/pdf/BaseFont;->setCharAdvance(II)Z

    .line 1535
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_4

    .line 1537
    :cond_4
    return-void
.end method

.method protected createEncoding()V
    .locals 12

    .prologue
    .line 756
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    const-string/jumbo v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 757
    new-instance v10, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 758
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, " ,\t\n\r\u000c"

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .local v8, tok:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "full"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 760
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 761
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, order:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-char v9, v10

    .line 765
    .local v9, uni:C
    const-string/jumbo v10, "\'"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 766
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 769
    .local v6, orderK:I
    :goto_1
    rem-int/lit16 v6, v6, 0x100

    .line 770
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v10, v9, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 771
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    aput-object v4, v10, v6

    .line 772
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    aput-char v9, v10, v6

    .line 773
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    invoke-virtual {p0, v9, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v11

    aput v11, v10, v6

    .line 774
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    invoke-virtual {p0, v9, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawCharBBox(ILjava/lang/String;)[I

    move-result-object v11

    aput-object v11, v10, v6

    goto :goto_0

    .line 768
    .end local v6           #orderK:I
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #orderK:I
    goto :goto_1

    .line 778
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #order:Ljava/lang/String;
    .end local v6           #orderK:I
    .end local v9           #uni:C
    :cond_1
    const/4 v3, 0x0

    .line 779
    .local v3, k:I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 780
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 781
    :cond_2
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x100

    if-ge v3, v10, :cond_3

    .line 782
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, hex:Ljava/lang/String;
    const/16 v10, 0x10

    invoke-static {v2, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    const/high16 v11, 0x1

    rem-int v9, v10, v11

    .line 784
    .local v9, uni:I
    invoke-static {v9}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v4

    .line 785
    .restart local v4       #name:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 786
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v10, v9, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 787
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    aput-object v4, v10, v3

    .line 788
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    int-to-char v11, v9

    aput-char v11, v10, v3

    .line 789
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    invoke-virtual {p0, v9, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v11

    aput v11, v10, v3

    .line 790
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    invoke-virtual {p0, v9, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawCharBBox(ILjava/lang/String;)[I

    move-result-object v11

    aput-object v11, v10, v3

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 795
    .end local v2           #hex:Ljava/lang/String;
    .end local v3           #k:I
    .end local v4           #name:Ljava/lang/String;
    .end local v9           #uni:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_3
    const/16 v10, 0x100

    if-ge v3, v10, :cond_9

    .line 796
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    aget-object v10, v10, v3

    if-nez v10, :cond_4

    .line 797
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    const-string/jumbo v11, ".notdef"

    aput-object v11, v10, v3

    .line 795
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 801
    .end local v3           #k:I
    .end local v8           #tok:Ljava/util/StringTokenizer;
    :cond_5
    iget-boolean v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->fontSpecific:Z

    if-eqz v10, :cond_6

    .line 802
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_4
    const/16 v10, 0x100

    if-ge v3, v10, :cond_9

    .line 803
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    const/4 v11, 0x0

    invoke-virtual {p0, v3, v11}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v11

    aput v11, v10, v3

    .line 804
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    const/4 v11, 0x0

    invoke-virtual {p0, v3, v11}, Lcom/itextpdf/text/pdf/BaseFont;->getRawCharBBox(ILjava/lang/String;)[I

    move-result-object v11

    aput-object v11, v10, v3

    .line 802
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 811
    .end local v3           #k:I
    :cond_6
    const/4 v10, 0x1

    new-array v0, v10, [B

    .line 812
    .local v0, b:[B
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_5
    const/16 v10, 0x100

    if-ge v3, v10, :cond_9

    .line 813
    const/4 v10, 0x0

    int-to-byte v11, v3

    aput-byte v11, v0, v10

    .line 814
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 815
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 816
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 821
    .local v1, c:C
    :goto_6
    invoke-static {v1}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v4

    .line 822
    .restart local v4       #name:Ljava/lang/String;
    if-nez v4, :cond_7

    .line 823
    const-string/jumbo v4, ".notdef"

    .line 824
    :cond_7
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    aput-object v4, v10, v3

    .line 825
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    aput-char v1, v10, v3

    .line 826
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v11

    aput v11, v10, v3

    .line 827
    iget-object v10, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getRawCharBBox(ILjava/lang/String;)[I

    move-result-object v11

    aput-object v11, v10, v3

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 819
    .end local v1           #c:C
    .end local v4           #name:Ljava/lang/String;
    :cond_8
    const/16 v1, 0x3f

    .restart local v1       #c:C
    goto :goto_6

    .line 830
    .end local v0           #b:[B
    .end local v1           #c:C
    .end local v7           #s:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public abstract getAllNameEntries()[[Ljava/lang/String;
.end method

.method public getAscent(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x3

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, max:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 931
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 932
    aget-char v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getCharBBox(I)[I

    move-result-object v0

    .line 933
    .local v0, bbox:[I
    if-eqz v0, :cond_0

    aget v4, v0, v5

    if-le v4, v3, :cond_0

    .line 934
    aget v3, v0, v5

    .line 931
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    .end local v0           #bbox:[I
    :cond_1
    return v3
.end method

.method public getAscentPoint(Ljava/lang/String;F)F
    .locals 2
    .parameter "text"
    .parameter "fontSize"

    .prologue
    .line 960
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getAscent(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    return v0
.end method

.method public getCharBBox(I)[I
    .locals 3
    .parameter "c"

    .prologue
    .line 1509
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v0

    .line 1510
    .local v0, b:[B
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1511
    const/4 v1, 0x0

    .line 1513
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BaseFont;->charBBoxes:[[I

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getCidCode(I)I
    .locals 0
    .parameter "c"

    .prologue
    .line 1390
    return p1
.end method

.method public getCodePagesSupported()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->compressionLevel:I

    return v0
.end method

.method public getDescent(Ljava/lang/String;)I
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    .line 912
    const/4 v3, 0x0

    .line 913
    .local v3, min:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 914
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 915
    aget-char v4, v1, v2

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getCharBBox(I)[I

    move-result-object v0

    .line 916
    .local v0, bbox:[I
    if-eqz v0, :cond_0

    aget v4, v0, v5

    if-ge v4, v3, :cond_0

    .line 917
    aget v3, v0, v5

    .line 914
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 919
    .end local v0           #bbox:[I
    :cond_1
    return v3
.end method

.method public getDescentPoint(Ljava/lang/String;F)F
    .locals 2
    .parameter "text"
    .parameter "fontSize"

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getDescent(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    return v0
.end method

.method public getDifferences()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->differences:[Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFamilyFontName()[[Ljava/lang/String;
.end method

.method public abstract getFontDescriptor(IF)F
.end method

.method public getFontType()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->fontType:I

    return v0
.end method

.method public abstract getFullFontName()[[Ljava/lang/String;
.end method

.method abstract getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation
.end method

.method public abstract getKerning(II)I
.end method

.method public abstract getPostscriptFontName()Ljava/lang/String;
.end method

.method protected abstract getRawCharBBox(ILjava/lang/String;)[I
.end method

.method abstract getRawWidth(ILjava/lang/String;)I
.end method

.method getUnicodeDifferences(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getUnicodeDifferences()[C
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->unicodeDifferences:[C

    return-object v0
.end method

.method public getUnicodeEquivalent(I)I
    .locals 0
    .parameter "c"

    .prologue
    .line 1381
    return p1
.end method

.method public getWidth(I)I
    .locals 5
    .parameter "char1"

    .prologue
    .line 864
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->fastWinansi:Z

    if-eqz v3, :cond_3

    .line 865
    const/16 v3, 0x80

    if-lt p1, v3, :cond_0

    const/16 v3, 0xa0

    if-lt p1, v3, :cond_2

    const/16 v3, 0xff

    if-gt p1, v3, :cond_2

    .line 866
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    aget v2, v3, p1

    .line 875
    :cond_1
    :goto_0
    return v2

    .line 868
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v4

    aget v2, v3, v4

    goto :goto_0

    .line 871
    :cond_3
    const/4 v2, 0x0

    .line 872
    .local v2, total:I
    int-to-char v3, p1

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v1

    .line 873
    .local v1, mbytes:[B
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 874
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    .line 885
    const/4 v4, 0x0

    .line 886
    .local v4, total:I
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/BaseFont;->fastWinansi:Z

    if-eqz v6, :cond_3

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 888
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 889
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 890
    .local v0, char1:C
    const/16 v6, 0x80

    if-lt v0, v6, :cond_0

    const/16 v6, 0xa0

    if-lt v0, v6, :cond_1

    const/16 v6, 0xff

    if-gt v0, v6, :cond_1

    .line 891
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    aget v6, v6, v0

    add-int/2addr v4, v6

    .line 888
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    sget-object v7, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v7

    aget v6, v6, v7

    add-int/2addr v4, v6

    goto :goto_1

    .end local v0           #char1:C
    :cond_2
    move v5, v4

    .line 902
    .end local v2           #len:I
    .end local v4           #total:I
    .local v5, total:I
    :goto_2
    return v5

    .line 898
    .end local v1           #k:I
    .end local v5           #total:I
    .restart local v4       #total:I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 899
    .local v3, mbytes:[B
    const/4 v1, 0x0

    .restart local v1       #k:I
    :goto_3
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 900
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    aget-byte v7, v3, v1

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    add-int/2addr v4, v6

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v5, v4

    .line 902
    .end local v4           #total:I
    .restart local v5       #total:I
    goto :goto_2
.end method

.method public getWidthPoint(IF)F
    .locals 2
    .parameter "char1"
    .parameter "fontSize"

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    return v0
.end method

.method public getWidthPoint(Ljava/lang/String;F)F
    .locals 2
    .parameter "text"
    .parameter "fontSize"

    .prologue
    .line 991
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    return v0
.end method

.method public getWidthPointKerned(Ljava/lang/String;F)F
    .locals 8
    .parameter "text"
    .parameter "fontSize"

    .prologue
    const v7, 0x3a83126f

    .line 972
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    mul-float v4, v5, p2

    .line 973
    .local v4, size:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/BaseFont;->hasKernPairs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 981
    .end local v4           #size:F
    :goto_0
    return v4

    .line 975
    .restart local v4       #size:F
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 976
    .local v3, len:I
    const/4 v2, 0x0

    .line 977
    .local v2, kern:I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 978
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 979
    aget-char v5, v0, v1

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v0, v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getKerning(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 981
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v7

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    goto :goto_0
.end method

.method public getWidths()[I
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    return-object v0
.end method

.method public abstract hasKernPairs()Z
.end method

.method public isDirectTextToByte()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->directTextToByte:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->embedded:Z

    return v0
.end method

.method public isFontSpecific()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->fontSpecific:Z

    return v0
.end method

.method public isForceWidthsOutput()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->forceWidthsOutput:Z

    return v0
.end method

.method public isSubset()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->subset:Z

    return v0
.end method

.method public setCharAdvance(II)Z
    .locals 3
    .parameter "c"
    .parameter "advance"

    .prologue
    const/4 v1, 0x0

    .line 1417
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->convertToBytes(I)[B

    move-result-object v0

    .line 1418
    .local v0, b:[B
    array-length v2, v0

    if-nez v2, :cond_0

    .line 1421
    :goto_0
    return v1

    .line 1420
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BaseFont;->widths:[I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aput p2, v2, v1

    .line 1421
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setCompressionLevel(I)V
    .locals 1
    .parameter "compressionLevel"

    .prologue
    .line 1566
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 1567
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/BaseFont;->compressionLevel:I

    .line 1570
    :goto_0
    return-void

    .line 1569
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/BaseFont;->compressionLevel:I

    goto :goto_0
.end method

.method public setDirectTextToByte(Z)V
    .locals 0
    .parameter "directTextToByte"

    .prologue
    .line 1311
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/BaseFont;->directTextToByte:Z

    .line 1312
    return-void
.end method

.method public setForceWidthsOutput(Z)V
    .locals 0
    .parameter "forceWidthsOutput"

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/BaseFont;->forceWidthsOutput:Z

    .line 1295
    return-void
.end method

.method public abstract setKerning(III)Z
.end method

.method public abstract setPostscriptFontName(Ljava/lang/String;)V
.end method

.method public setSubset(Z)V
    .locals 0
    .parameter "subset"

    .prologue
    .line 1330
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/BaseFont;->subset:Z

    .line 1331
    return-void
.end method

.method abstract writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
