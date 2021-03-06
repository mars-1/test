.class public Lcom/thoughtworks/xstream/io/json/JsonWriter;
.super Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;
    }
.end annotation


# instance fields
.field private depth:I

.field protected final format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

.field private newLineProposed:Z

.field protected final writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 6
    .parameter "writer"

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    aput-char v3, v2, v5

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v5, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 77
    return-void

    .line 74
    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x20t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .parameter "writer"
    .parameter "mode"

    .prologue
    .line 98
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1
    .parameter "writer"
    .parameter "mode"
    .parameter "format"

    .prologue
    .line 133
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V
    .locals 1
    .parameter "writer"
    .parameter "mode"
    .parameter "format"
    .parameter "bufferSize"

    .prologue
    .line 147
    invoke-virtual {p3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 148
    new-instance v0, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {v0, p1, p4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    .line 149
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    .line 150
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1
    .parameter "writer"
    .parameter "format"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .parameter "writer"
    .parameter "lineIndenter"

    .prologue
    const/4 v5, 0x0

    .line 68
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    aput-char v3, v2, v5

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v5, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "writer"
    .parameter "lineIndenter"
    .parameter "newLine"

    .prologue
    .line 59
    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v5, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 5
    .parameter "writer"
    .parameter "lineIndenter"

    .prologue
    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0xa

    aput-char v2, v1, v4

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 5
    .parameter "writer"
    .parameter "lineIndenter"
    .parameter "newLine"

    .prologue
    .line 42
    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v1, p2, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;I)V
    .locals 4
    .parameter "writer"
    .parameter "lineIndenter"
    .parameter "newLine"
    .parameter "mode"

    .prologue
    .line 84
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, p4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    .line 87
    return-void
.end method

.method private endNewLine()V
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    goto :goto_0
.end method

.method private startNewLine()V
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    .line 246
    :cond_0
    return-void
.end method

.method private writeNewLine()V
    .locals 4

    .prologue
    .line 259
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    .line 260
    .local v0, depth:I
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNewLine()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    move v1, v0

    .line 261
    .end local v0           #depth:I
    .local v1, depth:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #depth:I
    .restart local v0       #depth:I
    if-lez v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getLineIndenter()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0

    .line 264
    .end local v1           #depth:I
    .restart local v0       #depth:I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    .line 265
    return-void
.end method

.method private writeText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 269
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 270
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 271
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 298
    const/16 v4, 0x1f

    if-le v0, v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v4, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 269
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :sswitch_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\\""

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :sswitch_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\\\"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :sswitch_2
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\b"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :sswitch_3
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\f"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :sswitch_4
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\n"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :sswitch_5
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\r"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :sswitch_6
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\t"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v5, "\\u"

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, hex:Ljava/lang/String;
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    .end local v0           #c:C
    .end local v1           #hex:Ljava/lang/String;
    :cond_1
    return-void

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected addLabel(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 184
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v1, "\":"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 189
    :cond_1
    return-void
.end method

.method protected addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
    .locals 2
    .parameter "value"
    .parameter "type"

    .prologue
    const/16 v1, 0x22

    .line 195
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 198
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    if-ne p2, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    if-ne p2, v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 205
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

    .line 159
    return-void
.end method

.method protected endArray()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    .line 231
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method protected endObject()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    .line 239
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 155
    return-void
.end method

.method protected nextElement()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 224
    return-void
.end method

.method protected startArray()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    .line 216
    return-void
.end method

.method protected startObject()V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    .line 173
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    .line 174
    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    .prologue
    .line 162
    return-object p0
.end method
