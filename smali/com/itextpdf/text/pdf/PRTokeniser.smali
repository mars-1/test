.class public Lcom/itextpdf/text/pdf/PRTokeniser;
.super Ljava/lang/Object;
.source "PRTokeniser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/String; = ""

.field public static final delims:[Z


# instance fields
.field protected file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected generation:I

.field protected hexString:Z

.field protected reference:I

.field protected stringValue:Ljava/lang/String;

.field protected type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x101

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 113
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pdfIn"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 117
    return-void
.end method

.method public static checkObjectStart([B)[I
    .locals 6
    .parameter "line"

    .prologue
    const/4 v3, 0x0

    .line 571
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v2, p0}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 572
    .local v2, tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    const/4 v1, 0x0

    .line 573
    .local v1, num:I
    const/4 v0, 0x0

    .line 574
    .local v0, gen:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_1

    .line 589
    .end local v0           #gen:I
    .end local v1           #num:I
    .end local v2           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_0
    :goto_0
    return-object v3

    .line 576
    .restart local v0       #gen:I
    .restart local v1       #num:I
    .restart local v2       #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v1

    .line 577
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_0

    .line 579
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->intValue()I

    move-result v0

    .line 580
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "obj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 586
    .end local v0           #gen:I
    .end local v1           #num:I
    .end local v2           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getHex(I)I
    .locals 1
    .parameter "v"

    .prologue
    .line 231
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 232
    add-int/lit8 v0, p0, -0x30

    .line 237
    :goto_0
    return v0

    .line 233
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 234
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 235
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 236
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isDelimiter(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 168
    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDelimiterWhitespace(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 172
    sget-object v0, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v1, p0, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public static final isWhitespace(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backOnePosition(I)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 192
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->pushBack(B)V

    .line 194
    :cond_0
    return-void
.end method

.method public checkFdfHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(I)V

    .line 212
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, str:Ljava/lang/String;
    const-string/jumbo v2, "%FDF-1.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 215
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v3, "fdf.header.not.found"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(I)V

    .line 217
    return-void
.end method

.method public checkPdfHeader()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(I)V

    .line 202
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, str:Ljava/lang/String;
    const-string/jumbo v2, "%PDF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 205
    new-instance v2, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v3, "pdf.header.not.found"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->setStartOffset(I)V

    .line 207
    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 133
    return-void
.end method

.method public getFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    return-object v0
.end method

.method public getFilePointer()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v0

    return v0
.end method

.method public getGeneration()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->generation:I

    return v0
.end method

.method public getReference()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->reference:I

    return v0
.end method

.method public getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    return-object v0
.end method

.method public getStartxref()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    .line 220
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 221
    .local v2, size:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v4

    sub-int v1, v4, v2

    .line 222
    .local v1, pos:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->readString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, str:Ljava/lang/String;
    const-string/jumbo v4, "startxref"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 226
    new-instance v4, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v5, "pdf.startxref.not.found"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_0
    add-int v4, v1, v0

    return v4
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isHexString()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    return v0
.end method

.method public length()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()I

    move-result v0

    return v0
.end method

.method public nextToken()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3e

    const/16 v11, 0x37

    const/16 v10, 0xa

    const/16 v9, 0x30

    const/4 v8, -0x1

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, ch:I
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 294
    if-eq v0, v8, :cond_1

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 295
    :cond_1
    if-ne v0, v8, :cond_2

    .line 296
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->ENDOFFILE:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 297
    const/4 v7, 0x0

    .line 496
    :goto_0
    return v7

    .line 303
    :cond_2
    const/4 v4, 0x0

    .line 304
    .local v4, outBuf:Ljava/lang/StringBuffer;
    const-string/jumbo v7, ""

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 306
    sparse-switch v0, :sswitch_data_0

    .line 475
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    .restart local v4       #outBuf:Ljava/lang/StringBuffer;
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_3

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_3

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_3

    if-lt v0, v9, :cond_21

    const/16 v7, 0x39

    if-gt v0, v7, :cond_21

    .line 477
    :cond_3
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 479
    :cond_4
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 481
    if-eq v0, v8, :cond_6

    if-lt v0, v9, :cond_5

    const/16 v7, 0x39

    if-le v0, v7, :cond_4

    :cond_5
    const/16 v7, 0x2e

    if-eq v0, v7, :cond_4

    .line 490
    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 494
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 495
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 496
    :cond_8
    const/4 v7, 0x1

    goto :goto_0

    .line 308
    :sswitch_0
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_2

    .line 311
    :sswitch_1
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_ARRAY:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_2

    .line 315
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .restart local v4       #outBuf:Ljava/lang/StringBuffer;
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NAME:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 318
    :goto_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 319
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v8, v0, 0x1

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_9

    .line 326
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    goto :goto_2

    .line 321
    :cond_9
    const/16 v7, 0x23

    if-ne v0, v7, :cond_a

    .line 322
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v8

    add-int v0, v7, v8

    .line 324
    :cond_a
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 330
    :sswitch_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 331
    if-eq v0, v12, :cond_b

    .line 332
    const-string/jumbo v7, "greaterthan.not.expected"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    .line 333
    :cond_b
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->END_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_2

    .line 337
    :sswitch_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    .line 338
    .local v5, v1:I
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_c

    .line 339
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->START_DIC:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    goto :goto_2

    .line 342
    :cond_c
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .restart local v4       #outBuf:Ljava/lang/StringBuffer;
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 344
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    .line 345
    const/4 v6, 0x0

    .line 347
    .local v6, v2:I
    :goto_4
    invoke-static {v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 348
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    goto :goto_4

    .line 349
    :cond_d
    if-ne v5, v12, :cond_10

    .line 369
    :cond_e
    :goto_5
    if-ltz v5, :cond_f

    if-gez v6, :cond_7

    .line 370
    :cond_f
    const-string/jumbo v7, "error.reading.string"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    :cond_10
    invoke-static {v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v5

    .line 352
    if-ltz v5, :cond_e

    .line 354
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v6

    .line 355
    :goto_6
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 356
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v6

    goto :goto_6

    .line 357
    :cond_11
    if-ne v6, v12, :cond_12

    .line 358
    shl-int/lit8 v0, v5, 0x4

    .line 359
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 362
    :cond_12
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->getHex(I)I

    move-result v6

    .line 363
    if-ltz v6, :cond_e

    .line 365
    shl-int/lit8 v7, v5, 0x4

    add-int v0, v7, v6

    .line 366
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    goto :goto_4

    .line 374
    .end local v5           #v1:I
    .end local v6           #v2:I
    :sswitch_5
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 376
    :cond_13
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 377
    if-eq v0, v8, :cond_7

    const/16 v7, 0xd

    if-eq v0, v7, :cond_7

    if-ne v0, v10, :cond_13

    goto/16 :goto_2

    .line 381
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #outBuf:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 382
    .restart local v4       #outBuf:Ljava/lang/StringBuffer;
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->STRING:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 383
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->hexString:Z

    .line 384
    const/4 v2, 0x0

    .line 386
    .local v2, nesting:I
    :cond_14
    :goto_7
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 387
    if-ne v0, v8, :cond_16

    .line 469
    :cond_15
    :goto_8
    if-ne v0, v8, :cond_7

    .line 470
    const-string/jumbo v7, "error.reading.string"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PRTokeniser;->throwError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 389
    :cond_16
    const/16 v7, 0x28

    if-ne v0, v7, :cond_18

    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 465
    :cond_17
    :goto_9
    if-eq v2, v8, :cond_15

    .line 467
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 392
    :cond_18
    const/16 v7, 0x29

    if-ne v0, v7, :cond_19

    .line 393
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 395
    :cond_19
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_20

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, lineBreak:Z
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 398
    sparse-switch v0, :sswitch_data_1

    .line 429
    if-lt v0, v9, :cond_1a

    if-le v0, v11, :cond_1b

    .line 451
    :cond_1a
    :goto_a
    :sswitch_7
    if-nez v1, :cond_14

    .line 453
    if-gez v0, :cond_17

    goto :goto_8

    .line 400
    :sswitch_8
    const/16 v0, 0xa

    .line 401
    goto :goto_a

    .line 403
    :sswitch_9
    const/16 v0, 0xd

    .line 404
    goto :goto_a

    .line 406
    :sswitch_a
    const/16 v0, 0x9

    .line 407
    goto :goto_a

    .line 409
    :sswitch_b
    const/16 v0, 0x8

    .line 410
    goto :goto_a

    .line 412
    :sswitch_c
    const/16 v0, 0xc

    .line 413
    goto :goto_a

    .line 419
    :sswitch_d
    const/4 v1, 0x1

    .line 420
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 421
    if-eq v0, v10, :cond_1a

    .line 422
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    goto :goto_a

    .line 425
    :sswitch_e
    const/4 v1, 0x1

    .line 426
    goto :goto_a

    .line 432
    :cond_1b
    add-int/lit8 v3, v0, -0x30

    .line 433
    .local v3, octal:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 434
    if-lt v0, v9, :cond_1c

    if-le v0, v11, :cond_1d

    .line 435
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 436
    move v0, v3

    .line 437
    goto :goto_a

    .line 439
    :cond_1d
    shl-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v0

    add-int/lit8 v3, v7, -0x30

    .line 440
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 441
    if-lt v0, v9, :cond_1e

    if-le v0, v11, :cond_1f

    .line 442
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 443
    move v0, v3

    .line 444
    goto :goto_a

    .line 446
    :cond_1f
    shl-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v0

    add-int/lit8 v3, v7, -0x30

    .line 447
    and-int/lit16 v0, v3, 0xff

    .line 448
    goto :goto_a

    .line 456
    .end local v1           #lineBreak:Z
    .end local v3           #octal:I
    :cond_20
    const/16 v7, 0xd

    if-ne v0, v7, :cond_17

    .line 457
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 458
    if-ltz v0, :cond_15

    .line 460
    if-eq v0, v10, :cond_17

    .line 461
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->backOnePosition(I)V

    .line 462
    const/16 v0, 0xa

    goto/16 :goto_9

    .line 484
    .end local v2           #nesting:I
    :cond_21
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 486
    :cond_22
    int-to-char v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 487
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 488
    sget-object v7, Lcom/itextpdf/text/pdf/PRTokeniser;->delims:[Z

    add-int/lit8 v8, v0, 0x1

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_22

    goto/16 :goto_1

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2f -> :sswitch_2
        0x3c -> :sswitch_4
        0x3e -> :sswitch_3
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 398
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_e
        0xd -> :sswitch_d
        0x28 -> :sswitch_7
        0x29 -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_b
        0x66 -> :sswitch_c
        0x6e -> :sswitch_8
        0x72 -> :sswitch_9
        0x74 -> :sswitch_a
    .end sparse-switch
.end method

.method public nextValidToken()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, level:I
    const/4 v1, 0x0

    .line 243
    .local v1, n1:Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, n2:Ljava/lang/String;
    const/4 v3, 0x0

    .line 245
    .local v3, ptr:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_0

    .line 248
    packed-switch v0, :pswitch_data_0

    .line 272
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    const-string/jumbo v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 273
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 274
    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 275
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 288
    :cond_2
    :goto_1
    return-void

    .line 251
    :pswitch_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v4, v5, :cond_2

    .line 253
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v3

    .line 254
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    sget-object v5, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v4, v5, :cond_3

    .line 261
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 262
    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->NUMBER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 263
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    goto :goto_1

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->stringValue:Ljava/lang/String;

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 268
    goto :goto_0

    .line 278
    :cond_4
    sget-object v4, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->REF:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->type:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->reference:I

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->generation:I

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    return v0
.end method

.method public readLineSegment([B)Z
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 504
    const/4 v0, -0x1

    .line 505
    .local v0, c:I
    const/4 v2, 0x0

    .line 506
    .local v2, eol:Z
    const/4 v4, 0x0

    .line 507
    .local v4, ptr:I
    array-length v3, p1

    .line 511
    .local v3, len:I
    if-ge v4, v3, :cond_1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    move v5, v4

    .line 514
    .end local v4           #ptr:I
    .local v5, ptr:I
    :goto_0
    if-nez v2, :cond_2

    if-ge v5, v3, :cond_2

    .line 515
    sparse-switch v0, :sswitch_data_0

    .line 528
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    int-to-byte v6, v0

    aput-byte v6, p1, v5

    .line 533
    :goto_1
    if-nez v2, :cond_8

    if-gt v3, v4, :cond_4

    move v5, v4

    .line 540
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_2
    :goto_2
    if-lt v5, v3, :cond_5

    .line 541
    const/4 v2, 0x0

    .line 542
    :cond_3
    :goto_3
    if-nez v2, :cond_5

    .line 543
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_3

    .line 546
    :sswitch_0
    const/4 v2, 0x1

    .line 547
    goto :goto_3

    .line 518
    :sswitch_1
    const/4 v2, 0x1

    move v4, v5

    .line 519
    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_1

    .line 521
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :sswitch_2
    const/4 v2, 0x1

    .line 522
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v1

    .line 523
    .local v1, cur:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v6

    if-eq v6, v7, :cond_9

    .line 524
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    move v4, v5

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_1

    .line 537
    .end local v1           #cur:I
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    move v5, v4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_0

    .line 549
    :sswitch_3
    const/4 v2, 0x1

    .line 550
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->getFilePointer()I

    move-result v1

    .line 551
    .restart local v1       #cur:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v6

    if-eq v6, v7, :cond_3

    .line 552
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->seek(I)V

    goto :goto_3

    .line 559
    .end local v1           #cur:I
    :cond_5
    const/4 v6, -0x1

    if-ne v0, v6, :cond_6

    if-nez v5, :cond_6

    .line 560
    const/4 v6, 0x0

    move v4, v5

    .line 566
    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    :goto_4
    return v6

    .line 562
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_6
    add-int/lit8 v6, v5, 0x2

    if-gt v6, v3, :cond_7

    .line 563
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    const/16 v6, 0x20

    aput-byte v6, p1, v5

    .line 564
    const/16 v6, 0x58

    aput-byte v6, p1, v4

    .line 566
    :goto_5
    const/4 v6, 0x1

    goto :goto_4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_7
    move v4, v5

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_5

    :cond_8
    move v5, v4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_2

    .restart local v1       #cur:I
    :cond_9
    move v4, v5

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    goto :goto_1

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch

    .line 543
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public readString(I)Ljava/lang/String;
    .locals 4
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buf:Ljava/lang/StringBuffer;
    move v2, p1

    .line 154
    .end local p1
    .local v2, size:I
    :goto_0
    add-int/lit8 p1, v2, -0x1

    .end local v2           #size:I
    .restart local p1
    if-lez v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 156
    .local v1, ch:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 160
    .end local v1           #ch:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    .restart local v1       #ch:I
    :cond_1
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, p1

    .end local p1
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 125
    return-void
.end method

.method public throwError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/itextpdf/text/exceptions/InvalidPdfException;

    const-string/jumbo v1, "1.at.file.pointer.2"

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRTokeniser;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/InvalidPdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
