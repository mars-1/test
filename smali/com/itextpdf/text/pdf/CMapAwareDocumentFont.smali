.class public Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
.super Lcom/itextpdf/text/pdf/DocumentFont;
.source "CMapAwareDocumentFont.java"


# instance fields
.field private cidbyte2uni:[C

.field private fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private spaceWidth:I

.field private toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 1
    .parameter "refFont"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 80
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->processToUnicode()V

    .line 83
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->processUni2Byte()V

    .line 86
    :cond_0
    const/16 v0, 0x20

    invoke-super {p0, v0}, Lcom/itextpdf/text/pdf/DocumentFont;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 87
    iget v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->computeAverageWidth()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 91
    :cond_1
    return-void
.end method

.method private computeAverageWidth()I
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, count:I
    const/4 v2, 0x0

    .line 146
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    if-eqz v0, :cond_2

    div-int v3, v2, v0

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private decodeSingleCID([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    if-eqz v0, :cond_1

    .line 176
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "invalid.index.1"

    add-int v2, p2, p3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->lookup([BII)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 181
    :cond_1
    if-ne p3, v3, :cond_2

    .line 182
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "Multi-byte glyphs not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processToUnicode()V
    .locals 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 100
    .local v1, toUni:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v2

    .line 105
    .local v2, touni:[B
    new-instance v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;-><init>()V

    .line 106
    .local v0, cmapParser:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #cmapParser:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
    .end local v2           #touni:[B
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private processUni2Byte()V
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getUni2Byte()Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v3

    .line 121
    .local v3, uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v0

    .line 123
    .local v0, e:[I
    const/16 v4, 0x100

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    .line 124
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 125
    aget v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v2

    .line 130
    .local v2, n:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget-char v4, v4, v2

    if-nez v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget v5, v0, v1

    int-to-char v5, v5

    aput-char v5, v4, v2

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v2           #n:I
    :cond_1
    return-void
.end method


# virtual methods
.method public decode([BII)Ljava/lang/String;
    .locals 4
    .parameter "cidbytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 197
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v2, sb:Ljava/lang/StringBuffer;
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_1

    .line 199
    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decodeSingleCID([BII)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, rslt:Ljava/lang/String;
    if-nez v1, :cond_0

    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 201
    const/4 v3, 0x2

    invoke-direct {p0, p1, v0, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decodeSingleCID([BII)Ljava/lang/String;

    move-result-object v1

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v1           #rslt:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public encode([BII)Ljava/lang/String;
    .locals 1
    .parameter "bytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "char1"

    .prologue
    .line 161
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 162
    iget v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/DocumentFont;->getWidth(I)I

    move-result v0

    goto :goto_0
.end method
