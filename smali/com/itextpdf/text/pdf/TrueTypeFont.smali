.class Lcom/itextpdf/text/pdf/TrueTypeFont;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "TrueTypeFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;,
        Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;,
        Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;
    }
.end annotation


# static fields
.field static final codePages:[Ljava/lang/String;


# instance fields
.field protected GlyphWidths:[I

.field protected allNameEntries:[[Ljava/lang/String;

.field protected bboxes:[[I

.field protected cff:Z

.field protected cffLength:I

.field protected cffOffset:I

.field protected cmap10:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field protected cmap31:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field protected cmapExt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field protected directoryOffset:I

.field protected familyName:[[Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected fontName:Ljava/lang/String;

.field protected fullName:[[Ljava/lang/String;

.field protected head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

.field protected hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

.field protected isFixedPitch:Z

.field protected italicAngle:D

.field protected justNames:Z

.field protected kerning:Lcom/itextpdf/text/pdf/IntHashtable;

.field protected os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

.field protected rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected style:Ljava/lang/String;

.field protected tables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field protected ttcIndex:Ljava/lang/String;

.field protected underlinePosition:I

.field protected underlineThickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "1252 Latin 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1250 Latin 2: Eastern Europe"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1251 Cyrillic"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "1253 Greek"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "1254 Turkish"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1255 Hebrew"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "1256 Arabic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "1257 Windows Baltic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "1258 Vietnamese"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "874 Thai"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "932 JIS/Japan"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "936 Chinese: Simplified chars--PRC and Singapore"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "949 Korean Wansung"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "950 Chinese: Traditional chars--Taiwan and Hong Kong"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "1361 Korean Johab"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "Macintosh Character Set (US Roman)"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "OEM Character Set"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "Symbol Character Set"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    aput-object v3, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "869 IBM Greek"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "866 MS-DOS Russian"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "865 MS-DOS Nordic"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "864 Arabic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "863 MS-DOS Canadian French"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "862 Hebrew"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "861 MS-DOS Icelandic"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "860 MS-DOS Portuguese"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "857 IBM Turkish"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "855 IBM Cyrillic; primarily Russian"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "852 Latin 2"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "775 MS-DOS Baltic"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "737 Greek; former 437 G"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "708 Arabic; ASMO 708"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "850 WE/Latin 1"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "437 US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->codePages:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 132
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->justNames:Z

    .line 146
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    .line 161
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    .line 167
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    .line 170
    new-instance v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    .line 200
    new-instance v0, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 229
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->isFixedPitch:Z

    .line 343
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z[BZZ)V
    .locals 6
    .parameter "ttFile"
    .parameter "enc"
    .parameter "emb"
    .parameter "ttfAfm"
    .parameter "justNames"
    .parameter "forceRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 132
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->justNames:Z

    .line 146
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    .line 161
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    .line 164
    new-instance v2, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    .line 167
    new-instance v2, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    .line 170
    new-instance v2, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    .line 200
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 229
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->isFixedPitch:Z

    .line 356
    iput-boolean p5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->justNames:Z

    .line 357
    invoke-static {p1}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, nameBase:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getTTCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, ttcName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    .line 362
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    .line 363
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->embedded:Z

    .line 364
    iput-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    .line 365
    const/4 v2, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontType:I

    .line 366
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->ttcIndex:Ljava/lang/String;

    .line 367
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->ttcIndex:Ljava/lang/String;

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".otf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".ttc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    :cond_2
    invoke-virtual {p0, p4, p6}, Lcom/itextpdf/text/pdf/TrueTypeFont;->process([BZ)V

    .line 371
    if-nez p5, :cond_4

    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->embedded:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v2, v2, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->fsType:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 372
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "1.cannot.be.embedded.due.to.licensing.restrictions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_3
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "1.is.not.a.ttf.otf.or.ttc.font.file"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 377
    const-string/jumbo v2, " "

    invoke-static {v2, p2}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 378
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->createEncoding()V

    .line 379
    return-void
.end method

.method protected static compactRanges(Ljava/util/ArrayList;)[I
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p0, ranges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1165
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v8, simp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 1167
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1168
    .local v4, r:[I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    array-length v9, v4

    if-ge v0, v9, :cond_0

    .line 1169
    const/4 v9, 0x2

    new-array v9, v9, [I

    aget v10, v4, v0

    add-int/lit8 v11, v0, 0x1

    aget v11, v4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v9, v13

    const v10, 0xffff

    aget v11, v4, v0

    add-int/lit8 v12, v0, 0x1

    aget v12, v4, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v9, v14

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    .end local v0           #j:I
    .end local v4           #r:[I
    :cond_1
    const/4 v2, 0x0

    .local v2, k1:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_6

    .line 1173
    add-int/lit8 v3, v2, 0x1

    .local v3, k2:I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 1174
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1175
    .local v5, r1:[I
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1176
    .local v6, r2:[I
    aget v9, v5, v13

    aget v10, v6, v13

    if-lt v9, v10, :cond_2

    aget v9, v5, v13

    aget v10, v6, v14

    if-le v9, v10, :cond_3

    :cond_2
    aget v9, v5, v14

    aget v10, v6, v13

    if-lt v9, v10, :cond_4

    aget v9, v5, v13

    aget v10, v6, v14

    if-gt v9, v10, :cond_4

    .line 1177
    :cond_3
    aget v9, v5, v13

    aget v10, v6, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v5, v13

    .line 1178
    aget v9, v5, v14

    aget v10, v6, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v5, v14

    .line 1179
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1180
    add-int/lit8 v3, v3, -0x1

    .line 1173
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1172
    .end local v5           #r1:[I
    .end local v6           #r2:[I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1184
    .end local v3           #k2:I
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    new-array v7, v9, [I

    .line 1185
    .local v7, s:[I
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 1186
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1187
    .restart local v4       #r:[I
    mul-int/lit8 v9, v1, 0x2

    aget v10, v4, v13

    aput v10, v7, v9

    .line 1188
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v10, v4, v14

    aput v10, v7, v9

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1190
    .end local v4           #r:[I
    :cond_7
    return-object v7
.end method

.method protected static getTTCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".ttc,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 392
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private readBbox()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 744
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v11, "head"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 745
    .local v7, tableLocation:[I
    if-nez v7, :cond_0

    .line 746
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "table.1.does.not.exist.in.2"

    const-string/jumbo v10, "head"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 747
    :cond_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v11, v7, v9

    add-int/lit8 v11, v11, 0x33

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 748
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    if-nez v10, :cond_2

    move v3, v8

    .line 749
    .local v3, locaShortTable:Z
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v11, "loca"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tableLocation:[I
    check-cast v7, [I

    .line 750
    .restart local v7       #tableLocation:[I
    if-nez v7, :cond_3

    .line 782
    :cond_1
    return-void

    .end local v3           #locaShortTable:Z
    :cond_2
    move v3, v9

    .line 748
    goto :goto_0

    .line 752
    .restart local v3       #locaShortTable:Z
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v11, v7, v9

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 754
    if-eqz v3, :cond_4

    .line 755
    aget v10, v7, v8

    div-int/lit8 v0, v10, 0x2

    .line 756
    .local v0, entries:I
    new-array v4, v0, [I

    .line 757
    .local v4, locaTable:[I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 758
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    aput v10, v4, v2

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 761
    .end local v0           #entries:I
    .end local v2           #k:I
    .end local v4           #locaTable:[I
    :cond_4
    aget v10, v7, v8

    div-int/lit8 v0, v10, 0x4

    .line 762
    .restart local v0       #entries:I
    new-array v4, v0, [I

    .line 763
    .restart local v4       #locaTable:[I
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 764
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v10

    aput v10, v4, v2

    .line 763
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 766
    :cond_5
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v11, "glyf"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tableLocation:[I
    check-cast v7, [I

    .line 767
    .restart local v7       #tableLocation:[I
    if-nez v7, :cond_6

    .line 768
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "table.1.does.not.exist.in.2"

    const-string/jumbo v10, "glyf"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 769
    :cond_6
    aget v6, v7, v9

    .line 770
    .local v6, tableGlyphOffset:I
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    new-array v10, v10, [[I

    iput-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->bboxes:[[I

    .line 771
    const/4 v1, 0x0

    .local v1, glyph:I
    :goto_3
    array-length v10, v4

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_1

    .line 772
    aget v5, v4, v1

    .line 773
    .local v5, start:I
    add-int/lit8 v10, v1, 0x1

    aget v10, v4, v10

    if-eq v5, v10, :cond_7

    .line 774
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    add-int v11, v6, v5

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 775
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->bboxes:[[I

    const/4 v11, 0x4

    new-array v11, v11, [I

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v13, v13, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v12, v13

    aput v12, v11, v9

    iget-object v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v13, v13, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v12, v13

    aput v12, v11, v8

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    iget-object v14, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v14, v14, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v13, v14

    aput v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    iget-object v14, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v14, v14, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v13, v14

    aput v13, v11, v12

    aput-object v11, v10, v1

    .line 771
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected addRangeUni(Ljava/util/HashMap;ZZ)V
    .locals 12
    .parameter
    .parameter "includeMetrics"
    .parameter "subsetp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, longTag:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    if-nez p3, :cond_9

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    if-lez v9, :cond_9

    .line 1195
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    if-lez v9, :cond_3

    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 1197
    .local v5, rg:[I
    :goto_0
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v9, :cond_4

    .line 1198
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    .line 1205
    .local v7, usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :goto_1
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1206
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1207
    .local v8, v:[I
    new-instance v2, Ljava/lang/Integer;

    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 1208
    .local v2, gi:Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1211
    .local v0, c:I
    const/4 v6, 0x1

    .line 1212
    .local v6, skip:Z
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    array-length v9, v5

    if-ge v4, v9, :cond_2

    .line 1213
    aget v9, v5, v4

    if-lt v0, v9, :cond_7

    add-int/lit8 v9, v4, 0x1

    aget v9, v5, v9

    if-gt v0, v9, :cond_7

    .line 1214
    const/4 v6, 0x0

    .line 1218
    :cond_2
    if-nez v6, :cond_1

    .line 1219
    if-eqz p2, :cond_8

    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v8, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v8, v11

    aput v11, v9, v10

    const/4 v10, 0x2

    aput v0, v9, v10

    :goto_4
    invoke-virtual {p1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1195
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .end local v2           #gi:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:I
    .end local v5           #rg:[I
    .end local v6           #skip:Z
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v8           #v:[I
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/TrueTypeFont;->compactRanges(Ljava/util/ArrayList;)[I

    move-result-object v5

    goto :goto_0

    .line 1199
    .restart local v5       #rg:[I
    :cond_4
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 1200
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1201
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 1202
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1204
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1212
    .restart local v0       #c:I
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .restart local v2       #gi:Ljava/lang/Integer;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #k:I
    .restart local v6       #skip:Z
    .restart local v8       #v:[I
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 1219
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 1222
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .end local v2           #gi:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:I
    .end local v5           #rg:[I
    .end local v6           #skip:Z
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v8           #v:[I
    :cond_9
    return-void

    .line 1195
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method protected addRangeUni(Ljava/util/HashSet;Z)V
    .locals 10
    .parameter
    .parameter "subsetp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p1, longTag:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-nez p2, :cond_8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    if-lez v9, :cond_8

    .line 1226
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    if-lez v9, :cond_3

    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 1228
    .local v5, rg:[I
    :goto_0
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v9, :cond_4

    .line 1229
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    .line 1236
    .local v7, usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :goto_1
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1237
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 1238
    .local v8, v:[I
    new-instance v2, Ljava/lang/Integer;

    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 1239
    .local v2, gi:Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1242
    .local v0, c:I
    const/4 v6, 0x1

    .line 1243
    .local v6, skip:Z
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    array-length v9, v5

    if-ge v4, v9, :cond_2

    .line 1244
    aget v9, v5, v4

    if-lt v0, v9, :cond_7

    add-int/lit8 v9, v4, 0x1

    aget v9, v5, v9

    if-gt v0, v9, :cond_7

    .line 1245
    const/4 v6, 0x0

    .line 1249
    :cond_2
    if-nez v6, :cond_1

    .line 1250
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1226
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .end local v2           #gi:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:I
    .end local v5           #rg:[I
    .end local v6           #skip:Z
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v8           #v:[I
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/TrueTypeFont;->compactRanges(Ljava/util/ArrayList;)[I

    move-result-object v5

    goto :goto_0

    .line 1230
    .restart local v5       #rg:[I
    :cond_4
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    if-eqz v9, :cond_5

    .line 1231
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1232
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 1233
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1235
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .restart local v7       #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    goto :goto_1

    .line 1243
    .restart local v0       #c:I
    .restart local v1       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .restart local v2       #gi:Ljava/lang/Integer;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #k:I
    .restart local v6       #skip:Z
    .restart local v8       #v:[I
    :cond_7
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 1253
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .end local v2           #gi:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:I
    .end local v5           #rg:[I
    .end local v6           #skip:Z
    .end local v7           #usemap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .end local v8           #v:[I
    :cond_8
    return-void

    .line 1226
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method checkCff()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 608
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v2, "CFF "

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 609
    .local v0, table_location:[I
    if-eqz v0, :cond_0

    .line 610
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    .line 611
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cffOffset:I

    .line 612
    aget v1, v0, v3

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cffLength:I

    .line 614
    :cond_0
    return-void
.end method

.method fillTables()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 403
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v7, "head"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 404
    .local v2, table_location:[I
    if-nez v2, :cond_0

    .line 405
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v5, "table.1.does.not.exist.in.2"

    const-string/jumbo v6, "head"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v7, v2, v5

    add-int/lit8 v7, v7, 0x10

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 407
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->flags:I

    .line 408
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    .line 409
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 410
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMin:S

    .line 411
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMin:S

    .line 412
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMax:S

    .line 413
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMax:S

    .line 414
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->macStyle:I

    .line 416
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v7, "hhea"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #table_location:[I
    check-cast v2, [I

    .line 417
    .restart local v2       #table_location:[I
    if-nez v2, :cond_1

    .line 418
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v5, "table.1.does.not.exist.in.2"

    const-string/jumbo v6, "hhea"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v7, v2, v5

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 420
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->Ascender:S

    .line 421
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->Descender:S

    .line 422
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->LineGap:S

    .line 423
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->advanceWidthMax:I

    .line 424
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->minLeftSideBearing:S

    .line 425
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->minRightSideBearing:S

    .line 426
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->xMaxExtent:S

    .line 427
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->caretSlopeRise:S

    .line 428
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->caretSlopeRun:S

    .line 429
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 430
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->numberOfHMetrics:I

    .line 432
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v7, "OS/2"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #table_location:[I
    check-cast v2, [I

    .line 433
    .restart local v2       #table_location:[I
    if-nez v2, :cond_2

    .line 434
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v5, "table.1.does.not.exist.in.2"

    const-string/jumbo v6, "OS/2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v7, v2, v5

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 436
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 437
    .local v3, version:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->xAvgCharWidth:S

    .line 438
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWeightClass:I

    .line 439
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWidthClass:I

    .line 440
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->fsType:S

    .line 441
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptXSize:S

    .line 442
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptYSize:S

    .line 443
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptXOffset:S

    .line 444
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptYOffset:S

    .line 445
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptXSize:S

    .line 446
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptYSize:S

    .line 447
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptXOffset:S

    .line 448
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptYOffset:S

    .line 449
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->yStrikeoutSize:S

    .line 450
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->yStrikeoutPosition:S

    .line 451
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sFamilyClass:S

    .line 452
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, v7, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->panose:[B

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 453
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 454
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, v7, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->achVendID:[B

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 455
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->fsSelection:I

    .line 456
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usFirstCharIndex:I

    .line 457
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usLastCharIndex:I

    .line 458
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoAscender:S

    .line 459
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    .line 460
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v6, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    if-lez v6, :cond_3

    .line 461
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v7, v7, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    neg-int v7, v7

    int-to-short v7, v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    .line 462
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput-short v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoLineGap:S

    .line 463
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWinAscent:I

    .line 464
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWinDescent:I

    .line 465
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iput v5, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange1:I

    .line 466
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iput v5, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange2:I

    .line 467
    if-lez v3, :cond_4

    .line 468
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange1:I

    .line 469
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange2:I

    .line 471
    :cond_4
    if-le v3, v4, :cond_5

    .line 472
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 473
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sCapHeight:I

    .line 478
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v7, "post"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #table_location:[I
    check-cast v2, [I

    .line 479
    .restart local v2       #table_location:[I
    if-nez v2, :cond_6

    .line 480
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-short v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->caretSlopeRun:S

    int-to-double v4, v4

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-short v6, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->caretSlopeRise:S

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    const-wide v6, 0x4066800000000000L

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->italicAngle:D

    .line 490
    :goto_1
    return-void

    .line 476
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    const-wide v7, 0x3fe6666666666666L

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v9, v9, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sCapHeight:I

    goto :goto_0

    .line 483
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v7, v2, v5

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 484
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v1

    .line 485
    .local v1, mantissa:S
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 486
    .local v0, fraction:I
    int-to-double v6, v1

    int-to-double v8, v0

    const-wide/high16 v10, 0x40d0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->italicAngle:D

    .line 487
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->underlinePosition:I

    .line 488
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->underlineThickness:I

    .line 489
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->isFixedPitch:Z

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->allNameEntries:[[Ljava/lang/String;

    return-object v0
.end method

.method getAllNames()[[Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v16, "name"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 574
    .local v13, table_location:[I
    if-nez v13, :cond_0

    .line 575
    new-instance v15, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v16, "table.1.does.not.exist.in.2"

    const-string/jumbo v17, "name"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 576
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v16, 0x0

    aget v16, v13, v16

    add-int/lit8 v16, v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 578
    .local v7, numRecords:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 579
    .local v12, startOfStorage:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v6, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 582
    .local v10, platformID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 583
    .local v9, platformEncodingID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 584
    .local v2, languageID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 585
    .local v5, nameID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 586
    .local v3, length:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 587
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v11

    .line 588
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v16, 0x0

    aget v16, v13, v16

    add-int v16, v16, v12

    add-int v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 590
    if-eqz v10, :cond_1

    const/4 v15, 0x3

    if-eq v10, v15, :cond_1

    const/4 v15, 0x2

    if-ne v10, v15, :cond_2

    const/4 v15, 0x1

    if-ne v9, v15, :cond_2

    .line 591
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readUnicodeString(I)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, name:Ljava/lang/String;
    :goto_1
    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object v4, v15, v16

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 594
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readStandardString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 600
    .end local v2           #languageID:I
    .end local v3           #length:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameID:I
    .end local v8           #offset:I
    .end local v9           #platformEncodingID:I
    .end local v10           #platformID:I
    .end local v11           #pos:I
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v14, v15, [[Ljava/lang/String;

    .line 601
    .local v14, thisName:[[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_4

    .line 602
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    aput-object v15, v14, v1

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 603
    :cond_4
    return-object v14
.end method

.method getBaseFont()Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v13, "name"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 501
    .local v11, table_location:[I
    if-nez v11, :cond_0

    .line 502
    new-instance v12, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v13, "table.1.does.not.exist.in.2"

    const-string/jumbo v14, "name"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 503
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 505
    .local v6, numRecords:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 506
    .local v10, startOfStorage:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 508
    .local v9, platformID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 509
    .local v8, platformEncodingID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 510
    .local v3, languageID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 511
    .local v5, nameID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 512
    .local v4, length:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 513
    .local v7, offset:I
    const/4 v12, 0x6

    if-ne v5, v12, :cond_3

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/2addr v13, v10

    add-int/2addr v13, v7

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 515
    if-eqz v9, :cond_1

    const/4 v12, 0x3

    if-ne v9, v12, :cond_2

    .line 516
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readUnicodeString(I)Ljava/lang/String;

    move-result-object v12

    .line 522
    .end local v3           #languageID:I
    .end local v4           #length:I
    .end local v5           #nameID:I
    .end local v7           #offset:I
    .end local v8           #platformEncodingID:I
    .end local v9           #platformID:I
    :goto_1
    return-object v12

    .line 518
    .restart local v3       #languageID:I
    .restart local v4       #length:I
    .restart local v5       #nameID:I
    .restart local v7       #offset:I
    .restart local v8       #platformEncodingID:I
    .restart local v9       #platformID:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readStandardString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 506
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v3           #languageID:I
    .end local v4           #length:I
    .end local v5           #nameID:I
    .end local v7           #offset:I
    .end local v8           #platformEncodingID:I
    .end local v9           #platformID:I
    :cond_4
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x20

    const/16 v14, 0x2d

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method public getCodePagesSupported()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 1463
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v8, v8, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange2:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v10, v10, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ulCodePageRange1:I

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long v4, v8, v10

    .line 1464
    .local v4, cp:J
    const/4 v2, 0x0

    .line 1465
    .local v2, count:I
    const-wide/16 v0, 0x1

    .line 1466
    .local v0, bit:J
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    const/16 v8, 0x40

    if-ge v6, v8, :cond_1

    .line 1467
    and-long v8, v4, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    sget-object v8, Lcom/itextpdf/text/pdf/TrueTypeFont;->codePages:[Ljava/lang/String;

    aget-object v8, v8, v6

    if-eqz v8, :cond_0

    .line 1468
    add-int/lit8 v2, v2, 0x1

    .line 1469
    :cond_0
    const/4 v8, 0x1

    shl-long/2addr v0, v8

    .line 1466
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1471
    :cond_1
    new-array v7, v2, [Ljava/lang/String;

    .line 1472
    .local v7, ret:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1473
    const-wide/16 v0, 0x1

    .line 1474
    const/4 v6, 0x0

    move v3, v2

    .end local v2           #count:I
    .local v3, count:I
    :goto_1
    const/16 v8, 0x40

    if-ge v6, v8, :cond_2

    .line 1475
    and-long v8, v4, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/TrueTypeFont;->codePages:[Ljava/lang/String;

    aget-object v8, v8, v6

    if-eqz v8, :cond_3

    .line 1476
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    sget-object v8, Lcom/itextpdf/text/pdf/TrueTypeFont;->codePages:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v3

    .line 1477
    :goto_2
    const/4 v8, 0x1

    shl-long/2addr v0, v8

    .line 1474
    add-int/lit8 v6, v6, 0x1

    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_1

    .line 1479
    :cond_2
    return-object v7

    :cond_3
    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_2
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->familyName:[[Ljava/lang/String;

    return-object v0
.end method

.method protected getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;II[B)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 10
    .parameter "fontDescriptor"
    .parameter "subsetPrefix"
    .parameter "firstChar"
    .parameter "lastChar"
    .parameter "shortTag"

    .prologue
    .line 1097
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1098
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    if-eqz v6, :cond_3

    .line 1099
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1100
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1106
    :goto_0
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1107
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-nez v6, :cond_2

    .line 1108
    move v4, p3

    .local v4, k:I
    :goto_1
    if-gt v4, p4, :cond_0

    .line 1109
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->differences:[Ljava/lang/String;

    aget-object v6, v6, v4

    const-string/jumbo v7, ".notdef"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1110
    move p3, v4

    .line 1114
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    const-string/jumbo v7, "Cp1252"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    const-string/jumbo v7, "MacRoman"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1115
    :cond_1
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    const-string/jumbo v8, "Cp1252"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    :goto_2
    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1135
    .end local v4           #k:I
    :cond_2
    :goto_3
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FIRSTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v7, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1136
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->LASTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v7, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1137
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1138
    .local v5, wd:Lcom/itextpdf/text/pdf/PdfArray;
    move v4, p3

    .restart local v4       #k:I
    :goto_4
    if-gt v4, p4, :cond_b

    .line 1139
    aget-byte v6, p5, v4

    if-nez v6, :cond_a

    .line 1140
    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1138
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1103
    .end local v4           #k:I
    .end local v5           #wd:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1104
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 1108
    .restart local v4       #k:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1115
    :cond_5
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 1117
    :cond_6
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1118
    .local v2, enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1119
    .local v1, dif:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x1

    .line 1120
    .local v3, gap:Z
    move v4, p3

    :goto_6
    if-gt v4, p4, :cond_9

    .line 1121
    aget-byte v6, p5, v4

    if-eqz v6, :cond_8

    .line 1122
    if-eqz v3, :cond_7

    .line 1123
    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v6, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1124
    const/4 v3, 0x0

    .line 1126
    :cond_7
    new-instance v6, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->differences:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1120
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1129
    :cond_8
    const/4 v3, 0x1

    goto :goto_7

    .line 1131
    :cond_9
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DIFFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1132
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 1142
    .end local v1           #dif:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #gap:Z
    .restart local v5       #wd:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_a
    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->widths:[I

    aget v7, v7, v4

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_5

    .line 1144
    :cond_b
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->WIDTHS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1145
    if-eqz p1, :cond_c

    .line 1146
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1147
    :cond_c
    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 2
    .parameter "key"
    .parameter "fontSize"

    .prologue
    .line 1383
    packed-switch p1, :pswitch_data_0

    .line 1429
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1385
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoAscender:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1387
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sCapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1389
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1391
    :pswitch_3
    iget-wide v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->italicAngle:D

    double-to-float v0, v0

    goto :goto_0

    .line 1393
    :pswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMin:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1395
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMin:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1397
    :pswitch_6
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMax:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1399
    :pswitch_7
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMax:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1401
    :pswitch_8
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->Ascender:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1403
    :pswitch_9
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->Descender:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 1405
    :pswitch_a
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->LineGap:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1407
    :pswitch_b
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->advanceWidthMax:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1409
    :pswitch_c
    iget v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->underlinePosition:I

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->underlineThickness:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1411
    :pswitch_d
    iget v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->underlineThickness:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1413
    :pswitch_e
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->yStrikeoutPosition:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1415
    :pswitch_f
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->yStrikeoutSize:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1417
    :pswitch_10
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptYSize:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1419
    :pswitch_11
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySubscriptYOffset:S

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1421
    :pswitch_12
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptYSize:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1423
    :pswitch_13
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->ySuperscriptYOffset:S

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v1, v1, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto/16 :goto_0

    .line 1425
    :pswitch_14
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWeightClass:I

    int-to-float v0, v0

    goto/16 :goto_0

    .line 1427
    :pswitch_15
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->usWidthClass:I

    int-to-float v0, v0

    goto/16 :goto_0

    .line 1383
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected getFontDescriptor(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 9
    .parameter "fontStream"
    .parameter "subsetPrefix"
    .parameter "cidset"

    .prologue
    .line 1048
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1049
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoAscender:S

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v5, v5, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1050
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sCapHeight:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v5, v5, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1051
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->sTypoDescender:S

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v5, v5, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1052
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMin:S

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v5, v5, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v5, v5, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMin:S

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v6, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v6, v6, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->xMax:S

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v7, v7, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget-short v7, v7, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->yMax:S

    mul-int/lit16 v7, v7, 0x3e8

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v8, v8, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1057
    if-eqz p3, :cond_0

    .line 1058
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CIDSET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1059
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    if-eqz v2, :cond_6

    .line 1060
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    const-string/jumbo v3, "Identity-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1061
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->encoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1067
    :goto_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-wide v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->italicAngle:D

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1068
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STEMV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1069
    if-eqz p1, :cond_1

    .line 1070
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    if-eqz v2, :cond_7

    .line 1071
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE3:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1075
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 1076
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->isFixedPitch:Z

    if-eqz v2, :cond_2

    .line 1077
    or-int/lit8 v1, v1, 0x1

    .line 1078
    :cond_2
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    :goto_2
    or-int/2addr v1, v2

    .line 1079
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v2, v2, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->macStyle:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1080
    or-int/lit8 v1, v1, 0x40

    .line 1081
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v2, v2, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->macStyle:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1082
    const/high16 v2, 0x4

    or-int/2addr v1, v2

    .line 1083
    :cond_4
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1085
    return-object v0

    .line 1063
    .end local v1           #flags:I
    :cond_5
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 1066
    :cond_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 1073
    :cond_7
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 1078
    .restart local v1       #flags:I
    :cond_8
    const/16 v2, 0x20

    goto :goto_2
.end method

.method protected getFullFont()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v1, 0x0

    .line 1153
    .local v1, rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    .end local v1           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .local v2, rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 1155
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 1156
    .local v0, b:[B
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1160
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    .end local v0           #b:[B
    .end local v2           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v1       #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v3

    .end local v1           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v0       #b:[B
    .restart local v2       #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #b:[B
    .end local v2           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v1       #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v1           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v2       #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v1       #rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_1
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fullName:[[Ljava/lang/String;

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    if-eqz v2, :cond_0

    .line 1365
    new-instance v2, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readCffFont()[B

    move-result-object v3

    const-string/jumbo v4, "Type1C"

    iget v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->compressionLevel:I

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([BLjava/lang/String;I)V

    .line 1370
    :goto_0
    return-object v2

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getFullFont()[B

    move-result-object v0

    .line 1369
    .local v0, b:[B
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    array-length v3, v0

    aput v3, v1, v2

    .line 1370
    .local v1, lengths:[I
    new-instance v2, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    iget v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->compressionLevel:I

    invoke-direct {v2, v0, v1, v3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([B[II)V

    goto :goto_0
.end method

.method protected getGlyphWidth(I)I
    .locals 1
    .parameter "glyph"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method public getKerning(II)I
    .locals 5
    .parameter "char1"
    .parameter "char2"

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v2

    .line 1018
    .local v2, metrics:[I
    if-nez v2, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v3

    .line 1020
    :cond_1
    aget v0, v2, v3

    .line 1021
    .local v0, c1:I
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v2

    .line 1022
    if-eqz v2, :cond_0

    .line 1024
    aget v1, v2, v3

    .line 1025
    .local v1, c2:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    shl-int/lit8 v4, v0, 0x10

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    goto :goto_0
.end method

.method public getMetricsTT(I)[I
    .locals 2
    .parameter "c"

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1447
    :goto_0
    return-object v0

    .line 1439
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1441
    :cond_1
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 1446
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1447
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNames(I)[[Ljava/lang/String;
    .locals 20
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v16, "name"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 533
    .local v13, table_location:[I
    if-nez v13, :cond_0

    .line 534
    new-instance v15, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v16, "table.1.does.not.exist.in.2"

    const-string/jumbo v17, "name"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v16, 0x0

    aget v16, v13, v16

    add-int/lit8 v16, v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 537
    .local v7, numRecords:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 538
    .local v12, startOfStorage:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v6, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 540
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 541
    .local v10, platformID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 542
    .local v9, platformEncodingID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 543
    .local v2, languageID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 544
    .local v5, nameID:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 545
    .local v3, length:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 546
    .local v8, offset:I
    move/from16 v0, p1

    if-ne v5, v0, :cond_2

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v11

    .line 548
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v16, 0x0

    aget v16, v13, v16

    add-int v16, v16, v12

    add-int v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 550
    if-eqz v10, :cond_1

    const/4 v15, 0x3

    if-eq v10, v15, :cond_1

    const/4 v15, 0x2

    if-ne v10, v15, :cond_3

    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    .line 551
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readUnicodeString(I)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, name:Ljava/lang/String;
    :goto_1
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v4, v15, v16

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v15, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 539
    .end local v4           #name:Ljava/lang/String;
    .end local v11           #pos:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 554
    .restart local v11       #pos:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readStandardString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 561
    .end local v2           #languageID:I
    .end local v3           #length:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameID:I
    .end local v8           #offset:I
    .end local v9           #platformEncodingID:I
    .end local v10           #platformID:I
    .end local v11           #pos:I
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v14, v15, [[Ljava/lang/String;

    .line 562
    .local v14, thisName:[[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_5

    .line 563
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    aput-object v15, v14, v1

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 564
    :cond_5
    return-object v14
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 4
    .parameter "c"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 1562
    const/4 v0, 0x0

    .line 1563
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .line 1567
    :goto_0
    if-nez v0, :cond_3

    .line 1572
    :cond_1
    :goto_1
    return-object v2

    .line 1566
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    goto :goto_0

    .line 1569
    :cond_3
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1570
    .local v1, metric:[I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->bboxes:[[I

    if-eqz v3, :cond_1

    .line 1572
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->bboxes:[[I

    const/4 v3, 0x0

    aget v3, v1, v3

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 2
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v0

    .line 1037
    .local v0, metric:[I
    if-nez v0, :cond_0

    .line 1038
    const/4 v1, 0x0

    .line 1039
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method process([BZ)V
    .locals 13
    .parameter "ttfAfm"
    .parameter "preload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    .line 626
    if-nez p1, :cond_1

    .line 627
    :try_start_0
    new-instance v8, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    sget-boolean v10, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    invoke-direct {v8, v9, p2, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 630
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->ttcIndex:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 631
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->ttcIndex:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 632
    .local v1, dirIdx:I
    if-gez v1, :cond_2

    .line 633
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "the.font.index.for.1.must.be.positive"

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    .end local v1           #dirIdx:I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    if-eqz v9, :cond_0

    .line 674
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 675
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->embedded:Z

    if-nez v9, :cond_0

    .line 676
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    :cond_0
    throw v8

    .line 629
    :cond_1
    :try_start_1
    new-instance v8, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v8, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    goto :goto_0

    .line 634
    .restart local v1       #dirIdx:I
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readStandardString(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, mainTag:Ljava/lang/String;
    const-string/jumbo v8, "ttcf"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 636
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "1.is.not.a.valid.ttc.file"

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 637
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 638
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 639
    .local v0, dirCount:I
    if-lt v1, v0, :cond_4

    .line 640
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "the.font.index.for.1.must.be.between.0.and.2.it.was.3"

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 641
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    mul-int/lit8 v9, v1, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 642
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v8

    iput v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    .line 644
    .end local v0           #dirCount:I
    .end local v1           #dirIdx:I
    .end local v3           #mainTag:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 645
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v7

    .line 646
    .local v7, ttId:I
    const/high16 v8, 0x1

    if-eq v7, v8, :cond_6

    const v8, 0x4f54544f

    if-eq v7, v8, :cond_6

    .line 647
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v9, "1.is.not.a.valid.ttf.or.otf.file"

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 648
    :cond_6
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 649
    .local v4, num_tables:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 650
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 651
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readStandardString(I)Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, tag:Ljava/lang/String;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 653
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 654
    .local v5, table_location:[I
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v5, v8

    .line 655
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v5, v8

    .line 656
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 658
    .end local v5           #table_location:[I
    .end local v6           #tag:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->checkCff()V

    .line 659
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getBaseFont()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    .line 660
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getNames(I)[[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fullName:[[Ljava/lang/String;

    .line 661
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getNames(I)[[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->familyName:[[Ljava/lang/String;

    .line 662
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getAllNames()[[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->allNameEntries:[[Ljava/lang/String;

    .line 663
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->justNames:Z

    if-nez v8, :cond_8

    .line 664
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->fillTables()V

    .line 665
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readGlyphWidths()V

    .line 666
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readCMaps()V

    .line 667
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readKerning()V

    .line 668
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readBbox()V

    .line 669
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    :cond_8
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    if-eqz v8, :cond_9

    .line 674
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 675
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->embedded:Z

    if-nez v8, :cond_9

    .line 676
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 679
    :cond_9
    return-void
.end method

.method readCMaps()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v13, "cmap"

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 792
    .local v11, table_location:[I
    if-nez v11, :cond_0

    .line 793
    new-instance v12, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v13, "table.1.does.not.exist.in.2"

    const-string/jumbo v14, "cmap"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 794
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 796
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 797
    .local v7, num_tables:I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, map10:I
    const/4 v5, 0x0

    .line 800
    .local v5, map31:I
    const/4 v4, 0x0

    .line 801
    .local v4, map30:I
    const/4 v6, 0x0

    .line 802
    .local v6, mapExt:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v7, :cond_5

    .line 803
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 804
    .local v9, platId:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 805
    .local v10, platSpecId:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v8

    .line 806
    .local v8, offset:I
    const/4 v12, 0x3

    if-ne v9, v12, :cond_3

    if-nez v10, :cond_3

    .line 807
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    .line 808
    move v4, v8

    .line 816
    :cond_1
    :goto_1
    const/4 v12, 0x1

    if-ne v9, v12, :cond_2

    if-nez v10, :cond_2

    .line 817
    move v3, v8

    .line 802
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_3
    const/4 v12, 0x3

    if-ne v9, v12, :cond_4

    const/4 v12, 0x1

    if-ne v10, v12, :cond_4

    .line 811
    move v5, v8

    goto :goto_1

    .line 813
    :cond_4
    const/4 v12, 0x3

    if-ne v9, v12, :cond_1

    const/16 v12, 0xa

    if-ne v10, v12, :cond_1

    .line 814
    move v6, v8

    goto :goto_1

    .line 820
    .end local v8           #offset:I
    .end local v9           #platId:I
    .end local v10           #platSpecId:I
    :cond_5
    if-lez v3, :cond_6

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/2addr v13, v3

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 823
    .local v1, format:I
    sparse-switch v1, :sswitch_data_0

    .line 835
    .end local v1           #format:I
    :cond_6
    :goto_2
    if-lez v5, :cond_7

    .line 836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/2addr v13, v5

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 838
    .restart local v1       #format:I
    const/4 v12, 0x4

    if-ne v1, v12, :cond_7

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat4()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap31:Ljava/util/HashMap;

    .line 842
    .end local v1           #format:I
    :cond_7
    if-lez v4, :cond_8

    .line 843
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/2addr v13, v4

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 845
    .restart local v1       #format:I
    const/4 v12, 0x4

    if-ne v1, v12, :cond_8

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat4()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    .line 849
    .end local v1           #format:I
    :cond_8
    if-lez v6, :cond_9

    .line 850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v13, 0x0

    aget v13, v11, v13

    add-int/2addr v13, v6

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 851
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 852
    .restart local v1       #format:I
    sparse-switch v1, :sswitch_data_1

    .line 867
    .end local v1           #format:I
    :cond_9
    :goto_3
    return-void

    .line 825
    .restart local v1       #format:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat0()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    goto :goto_2

    .line 828
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat4()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    goto :goto_2

    .line 831
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat6()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmap10:Ljava/util/HashMap;

    goto :goto_2

    .line 854
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat0()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    goto :goto_3

    .line 857
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat4()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    goto :goto_3

    .line 860
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat6()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    goto :goto_3

    .line 863
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readFormat12()Ljava/util/HashMap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cmapExt:Ljava/util/HashMap;

    goto :goto_3

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch

    .line 852
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x4 -> :sswitch_4
        0x6 -> :sswitch_5
        0xc -> :sswitch_6
    .end sparse-switch
.end method

.method protected readCffFont()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v1, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 1340
    .local v1, rf2:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    iget v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cffLength:I

    new-array v0, v2, [B

    .line 1342
    .local v0, b:[B
    :try_start_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 1343
    iget v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cffOffset:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 1344
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1354
    :goto_0
    return-object v0

    .line 1347
    :catchall_0
    move-exception v2

    .line 1348
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1352
    :goto_1
    throw v2

    .line 1350
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method readFormat0()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    .local v0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 898
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    .line 899
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 900
    .local v2, r:[I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedByte()I

    move-result v3

    aput v3, v2, v5

    .line 901
    const/4 v3, 0x1

    aget v4, v2, v5

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getGlyphWidth(I)I

    move-result v4

    aput v4, v2, v3

    .line 902
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    .end local v2           #r:[I
    :cond_0
    return-object v0
.end method

.method readFormat12()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 870
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 872
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v8

    .line 873
    .local v8, table_lenght:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 874
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v4

    .line 875
    .local v4, nGroups:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 876
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v6

    .line 877
    .local v6, startCharCode:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 878
    .local v0, endCharCode:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v7

    .line 879
    .local v7, startGlyphID:I
    move v2, v6

    .local v2, i:I
    :goto_1
    if-gt v2, v0, :cond_0

    .line 880
    new-array v5, v12, [I

    .line 881
    .local v5, r:[I
    aput v7, v5, v11

    .line 882
    const/4 v9, 0x1

    aget v10, v5, v11

    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getGlyphWidth(I)I

    move-result v10

    aput v10, v5, v9

    .line 883
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    add-int/lit8 v7, v7, 0x1

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 875
    .end local v5           #r:[I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    .end local v0           #endCharCode:I
    .end local v2           #i:I
    .end local v6           #startCharCode:I
    .end local v7           #startGlyphID:I
    :cond_1
    return-object v1
.end method

.method readFormat4()Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v4, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v13

    .line 915
    .local v13, table_lenght:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 916
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    div-int/lit8 v11, v14, 0x2

    .line 917
    .local v11, segCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 918
    new-array v1, v11, [I

    .line 919
    .local v1, endCount:[I
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    aput v14, v1, v9

    .line 919
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 922
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 923
    new-array v12, v11, [I

    .line 924
    .local v12, startCount:[I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_1

    .line 925
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    aput v14, v12, v9

    .line 924
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 927
    :cond_1
    new-array v5, v11, [I

    .line 928
    .local v5, idDelta:[I
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_2

    .line 929
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    aput v14, v5, v9

    .line 928
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 931
    :cond_2
    new-array v6, v11, [I

    .line 932
    .local v6, idRO:[I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_3

    .line 933
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    aput v14, v6, v9

    .line 932
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 935
    :cond_3
    div-int/lit8 v14, v13, 0x2

    add-int/lit8 v14, v14, -0x8

    mul-int/lit8 v15, v11, 0x4

    sub-int/2addr v14, v15

    new-array v3, v14, [I

    .line 936
    .local v3, glyphId:[I
    const/4 v9, 0x0

    :goto_4
    array-length v14, v3

    if-ge v9, v14, :cond_4

    .line 937
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    aput v14, v3, v9

    .line 936
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 939
    :cond_4
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v11, :cond_a

    .line 941
    aget v8, v12, v9

    .local v8, j:I
    :goto_6
    aget v14, v1, v9

    if-gt v8, v14, :cond_9

    const v14, 0xffff

    if-eq v8, v14, :cond_9

    .line 942
    aget v14, v6, v9

    if-nez v14, :cond_6

    .line 943
    aget v14, v5, v9

    add-int/2addr v14, v8

    const v15, 0xffff

    and-int v2, v14, v15

    .line 951
    .local v2, glyph:I
    :goto_7
    const/4 v14, 0x2

    new-array v10, v14, [I

    .line 952
    .local v10, r:[I
    const/4 v14, 0x0

    aput v2, v10, v14

    .line 953
    const/4 v14, 0x1

    const/4 v15, 0x0

    aget v15, v10, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getGlyphWidth(I)I

    move-result v15

    aput v15, v10, v14

    .line 954
    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v14, :cond_8

    const v14, 0xff00

    and-int/2addr v14, v8

    const v16, 0xf000

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    and-int/lit16 v14, v8, 0xff

    :goto_8
    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .end local v2           #glyph:I
    .end local v10           #r:[I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 946
    :cond_6
    aget v14, v6, v9

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    sub-int/2addr v14, v11

    add-int/2addr v14, v8

    aget v15, v12, v9

    sub-int v7, v14, v15

    .line 947
    .local v7, idx:I
    array-length v14, v3

    if-ge v7, v14, :cond_5

    .line 949
    aget v14, v3, v7

    aget v15, v5, v9

    add-int/2addr v14, v15

    const v15, 0xffff

    and-int v2, v14, v15

    .restart local v2       #glyph:I
    goto :goto_7

    .end local v7           #idx:I
    .restart local v10       #r:[I
    :cond_7
    move v14, v8

    .line 954
    goto :goto_8

    :cond_8
    move v14, v8

    goto :goto_8

    .line 939
    .end local v2           #glyph:I
    .end local v10           #r:[I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 957
    .end local v8           #j:I
    :cond_a
    return-object v4
.end method

.method readFormat6()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 967
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 968
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 969
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 970
    .local v4, start_code:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 971
    .local v0, code_count:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 972
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 973
    .local v3, r:[I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    aput v5, v3, v7

    .line 974
    const/4 v5, 0x1

    aget v6, v3, v7

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getGlyphWidth(I)I

    move-result v6

    aput v6, v3, v5

    .line 975
    new-instance v5, Ljava/lang/Integer;

    add-int v6, v2, v4

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 977
    .end local v3           #r:[I
    :cond_0
    return-object v1
.end method

.method protected readGlyphWidths()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v3, "hmtx"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 722
    .local v1, table_location:[I
    if-nez v1, :cond_0

    .line 723
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "table.1.does.not.exist.in.2"

    const-string/jumbo v4, "hmtx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->style:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 725
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget v2, v2, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->numberOfHMetrics:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I

    .line 726
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->hhea:Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;

    iget v2, v2, Lcom/itextpdf/text/pdf/TrueTypeFont$HorizontalHeader;->numberOfHMetrics:I

    if-ge v0, v2, :cond_1

    .line 727
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->GlyphWidths:[I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v4, v4, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int/2addr v3, v4

    aput v3, v2, v0

    .line 728
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    return-void
.end method

.method readKerning()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 985
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->tables:Ljava/util/HashMap;

    const-string/jumbo v11, "kern"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 986
    .local v8, table_location:[I
    if-nez v8, :cond_1

    .line 1008
    :cond_0
    return-void

    .line 988
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v11, v8, v12

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 989
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 990
    .local v6, nTables:I
    aget v10, v8, v12

    add-int/lit8 v0, v10, 0x4

    .line 991
    .local v0, checkpoint:I
    const/4 v4, 0x0

    .line 992
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 993
    add-int/2addr v0, v4

    .line 994
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 995
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 996
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 997
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 998
    .local v1, coverage:I
    const v10, 0xfff7

    and-int/2addr v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 999
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 1000
    .local v5, nPairs:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1001
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 1002
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v7

    .line 1003
    .local v7, pair:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->head:Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;

    iget v11, v11, Lcom/itextpdf/text/pdf/TrueTypeFont$FontHeader;->unitsPerEm:I

    div-int v9, v10, v11

    .line 1004
    .local v9, value:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v10, v7, v9}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 992
    .end local v2           #j:I
    .end local v5           #nPairs:I
    .end local v7           #pair:I
    .end local v9           #value:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected readStandardString(I)Ljava/lang/String;
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    new-array v0, p1, [B

    .line 689
    .local v0, buf:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 691
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "Cp1252"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected readUnicodeString(I)Ljava/lang/String;
    .locals 3
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v0, buf:Ljava/lang/StringBuffer;
    div-int/lit8 p1, p1, 0x2

    .line 708
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 709
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setKerning(III)Z
    .locals 5
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    const/4 v3, 0x0

    .line 1548
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v2

    .line 1549
    .local v2, metrics:[I
    if-nez v2, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return v3

    .line 1551
    :cond_1
    aget v0, v2, v3

    .line 1552
    .local v0, c1:I
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v2

    .line 1553
    if-eqz v2, :cond_0

    .line 1555
    aget v1, v2, v3

    .line 1556
    .local v1, c2:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->kerning:Lcom/itextpdf/text/pdf/IntHashtable;

    shl-int/lit8 v4, v0, 0x10

    add-int/2addr v4, v1

    invoke-virtual {v3, v4, p3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1557
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontName:Ljava/lang/String;

    .line 1537
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 22
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
    .line 1264
    const/4 v4, 0x0

    aget-object v4, p3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1265
    .local v10, firstChar:I
    const/4 v4, 0x1

    aget-object v4, p3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1266
    .local v11, lastChar:I
    const/4 v4, 0x2

    aget-object v4, p3, v4

    check-cast v4, [B

    move-object v12, v4

    check-cast v12, [B

    .line 1267
    .local v12, shortTag:[B
    const/4 v4, 0x3

    aget-object v4, p3, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subset:Z

    if-eqz v4, :cond_0

    const/16 v21, 0x1

    .line 1269
    .local v21, subsetp:Z
    :goto_0
    if-nez v21, :cond_1

    .line 1270
    const/4 v10, 0x0

    .line 1271
    array-length v4, v12

    add-int/lit8 v11, v4, -0x1

    .line 1272
    const/4 v15, 0x0

    .local v15, k:I
    :goto_1
    array-length v4, v12

    if-ge v15, v4, :cond_1

    .line 1273
    const/4 v4, 0x1

    aput-byte v4, v12, v15

    .line 1272
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1267
    .end local v15           #k:I
    .end local v21           #subsetp:Z
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 1275
    .restart local v21       #subsetp:Z
    :cond_1
    const/4 v8, 0x0

    .line 1276
    .local v8, ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/16 v19, 0x0

    .line 1277
    .local v19, pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v18, 0x0

    .line 1278
    .local v18, obj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    const-string/jumbo v9, ""

    .line 1279
    .local v9, subsetPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->embedded:Z

    if-eqz v4, :cond_2

    .line 1280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->cff:Z

    if-eqz v4, :cond_4

    .line 1281
    new-instance v19, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    .end local v19           #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->readCffFont()[B

    move-result-object v4

    const-string/jumbo v5, "Type1C"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->compressionLevel:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5, v7}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([BLjava/lang/String;I)V

    .line 1282
    .restart local v19       #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v18

    .line 1283
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    .line 1322
    :cond_2
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getFontDescriptor(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1323
    if-eqz v19, :cond_3

    .line 1324
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v18

    .line 1325
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    :cond_3
    move-object/from16 v7, p0

    .line 1327
    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;II[B)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1328
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1329
    return-void

    .line 1286
    :cond_4
    if-eqz v21, :cond_d

    .line 1287
    invoke-static {}, Lcom/itextpdf/text/pdf/TrueTypeFont;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v9

    .line 1288
    .end local v9           #subsetPrefix:Ljava/lang/String;
    .local v20, subsetPrefix:Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1289
    .local v6, glyphs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move v15, v10

    .restart local v15       #k:I
    :goto_4
    if-gt v15, v11, :cond_9

    .line 1290
    aget-byte v4, v12, v15

    if-eqz v4, :cond_6

    .line 1291
    const/16 v17, 0x0

    .line 1292
    .local v17, metrics:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v4, :cond_7

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->differences:[Ljava/lang/String;

    aget-object v4, v4, v15

    invoke-static {v4}, Lcom/itextpdf/text/pdf/GlyphList;->nameToUnicode(Ljava/lang/String;)[I

    move-result-object v14

    .line 1294
    .local v14, cd:[I
    if-eqz v14, :cond_5

    .line 1295
    const/4 v4, 0x0

    aget v4, v14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v17

    .line 1303
    .end local v14           #cd:[I
    :cond_5
    :goto_5
    if-eqz v17, :cond_6

    .line 1304
    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aget v5, v17, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1289
    .end local v17           #metrics:[I
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1298
    .restart local v17       #metrics:[I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fontSpecific:Z

    if-eqz v4, :cond_8

    .line 1299
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v17

    goto :goto_5

    .line 1301
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->unicodeDifferences:[C

    aget-char v4, v4, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getMetricsTT(I)[I

    move-result-object v17

    goto :goto_5

    .line 1307
    .end local v17           #metrics:[I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/text/pdf/TrueTypeFont;->addRangeUni(Ljava/util/HashSet;Z)V

    .line 1308
    const/4 v13, 0x0

    .line 1309
    .local v13, b:[B
    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->subsetRanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_c

    .line 1310
    :cond_a
    new-instance v3, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->fileName:Ljava/lang/String;

    new-instance v5, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v5, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->directoryOffset:I

    const/4 v8, 0x1

    if-nez v21, :cond_b

    .end local v8           #ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v9, 0x1

    :goto_6
    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/util/HashSet;IZZ)V

    .line 1311
    .local v3, sb:Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->process()[B

    move-result-object v13

    .line 1316
    .end local v3           #sb:Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;
    :goto_7
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v16, v0

    const/4 v4, 0x0

    array-length v5, v13

    aput v5, v16, v4

    .line 1317
    .local v16, lengths:[I
    new-instance v19, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    .end local v19           #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFont;->compressionLevel:I

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1, v4}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([B[II)V

    .line 1318
    .restart local v19       #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v18

    .line 1319
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    .restart local v8       #ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v9, v20

    .end local v20           #subsetPrefix:Ljava/lang/String;
    .restart local v9       #subsetPrefix:Ljava/lang/String;
    goto/16 :goto_2

    .line 1310
    .end local v8           #ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #subsetPrefix:Ljava/lang/String;
    .end local v16           #lengths:[I
    .restart local v20       #subsetPrefix:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    .line 1314
    .restart local v8       #ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getFullFont()[B

    move-result-object v13

    goto :goto_7

    .end local v6           #glyphs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v13           #b:[B
    .end local v15           #k:I
    .end local v20           #subsetPrefix:Ljava/lang/String;
    .restart local v9       #subsetPrefix:Ljava/lang/String;
    :cond_d
    move-object/from16 v20, v9

    .end local v9           #subsetPrefix:Ljava/lang/String;
    .restart local v20       #subsetPrefix:Ljava/lang/String;
    goto/16 :goto_3
.end method
