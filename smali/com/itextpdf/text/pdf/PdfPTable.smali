.class public Lcom/itextpdf/text/pdf/PdfPTable;
.super Ljava/lang/Object;
.source "PdfPTable.java"

# interfaces
.implements Lcom/itextpdf/text/LargeElement;


# static fields
.field public static final BACKGROUNDCANVAS:I = 0x1

.field public static final BASECANVAS:I = 0x0

.field public static final LINECANVAS:I = 0x2

.field public static final TEXTCANVAS:I = 0x3


# instance fields
.field protected absoluteWidths:[F

.field protected complete:Z

.field protected currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

.field protected currentRowIdx:I

.field protected defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

.field private extendLastRow:[Z

.field private footerRows:I

.field protected headerRows:I

.field private headersInEvent:Z

.field private horizontalAlignment:I

.field protected isColspan:Z

.field private keepTogether:Z

.field private lockedWidth:Z

.field protected relativeWidths:[F

.field protected rowCompleted:Z

.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation
.end field

.field protected runDirection:I

.field private skipFirstHeader:Z

.field private skipLastFooter:Z

.field protected spacingAfter:F

.field protected spacingBefore:F

.field private splitLate:Z

.field private splitRows:Z

.field protected tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

.field protected totalHeight:F

.field protected totalWidth:F

.field protected widthPercentage:F


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 95
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 96
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v0, 0x0

    check-cast v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 97
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 110
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 115
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 120
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 125
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 127
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 129
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 134
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 139
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 164
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 177
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 188
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 191
    return-void

    .line 154
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "numColumns"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 95
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 96
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    check-cast v1, Lcom/itextpdf/text/Phrase;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 97
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 110
    const/high16 v1, 0x42a0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 115
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 120
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 125
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 127
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 129
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 134
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 139
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 154
    const/4 v1, 0x2

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 164
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 177
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 188
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 217
    if-gtz p1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "the.number.of.columns.in.pdfptable.constructor.must.be.greater.than.zero"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 220
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 223
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 224
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 225
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 226
    return-void

    .line 154
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 8
    .parameter "table"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 95
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 96
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x0

    check-cast v3, Lcom/itextpdf/text/Phrase;

    invoke-direct {v4, v3}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 97
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 110
    const/high16 v3, 0x42a0

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 115
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 120
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 125
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 127
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 129
    iput v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 134
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 139
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 154
    const/4 v3, 0x2

    new-array v3, v3, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 164
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 177
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 188
    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 234
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 235
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 236
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 240
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 241
    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 242
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_1

    .line 243
    new-instance v2, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>(Lcom/itextpdf/text/pdf/PdfPRow;)V

    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .local v2, row:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object v1, v2

    .line 244
    .end local v2           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v1       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v5, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v4, v3, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_3
    return-void

    .line 154
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([F)V
    .locals 5
    .parameter "relativeWidths"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 93
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 95
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 96
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v0, 0x0

    check-cast v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 97
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 110
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 115
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 120
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 125
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 127
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 129
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 134
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 139
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 164
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 177
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 188
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the.widths.array.in.pdfptable.constructor.can.not.be.null"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the.widths.array.in.pdfptable.constructor.can.not.have.zero.length"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 204
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 207
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v0, v0

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 208
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 209
    return-void

    .line 154
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public static beginWritingRows(Lcom/itextpdf/text/pdf/PdfContentByte;)[Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3
    .parameter "canvas"

    .prologue
    .line 803
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static endWritingRows([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 3
    .parameter "canvases"

    .prologue
    const/4 v2, 0x2

    .line 817
    const/4 v1, 0x0

    aget-object v0, p0, v1

    .line 818
    .local v0, canvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 819
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 820
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 821
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 822
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 823
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 824
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 825
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 826
    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 827
    return-void
.end method

.method public static shallowCopy(Lcom/itextpdf/text/pdf/PdfPTable;)Lcom/itextpdf/text/pdf/PdfPTable;
    .locals 1
    .parameter "table"

    .prologue
    .line 255
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>()V

    .line 256
    .local v0, nt:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfPTable;->copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 257
    return-object v0
.end method

.method private skipColsWithRowspanAbove()V
    .locals 3

    .prologue
    .line 524
    const/4 v0, 0x1

    .line 525
    .local v0, direction:I
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 526
    const/4 v0, -0x1

    .line 527
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method


# virtual methods
.method public addCell(Lcom/itextpdf/text/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setImage(Lcom/itextpdf/text/Image;)V

    .line 612
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 613
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setImage(Lcom/itextpdf/text/Image;)V

    .line 614
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 623
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 624
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 625
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 13
    .parameter "cell"

    .prologue
    .line 461
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    .line 462
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v4, p1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 464
    .local v4, ncell:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v1

    .line 465
    .local v1, colspan:I
    const/4 v11, 0x1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 466
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v11, v11

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    sub-int/2addr v11, v12

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 467
    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setColspan(I)V

    .line 469
    const/4 v11, 0x1

    if-eq v1, v11, :cond_0

    .line 470
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 471
    :cond_0
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRunDirection()I

    move-result v7

    .line 472
    .local v7, rdir:I
    if-nez v7, :cond_1

    .line 473
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/PdfPCell;->setRunDirection(I)V

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, cellAdded:Z
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 479
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    aput-object v4, v11, v12

    .line 480
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 481
    const/4 v0, 0x1

    .line 484
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 486
    :goto_0
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v12, v12

    if-lt v11, v12, :cond_6

    .line 487
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v5

    .line 488
    .local v5, numCols:I
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 489
    new-array v10, v5, [Lcom/itextpdf/text/pdf/PdfPCell;

    .line 490
    .local v10, rtlRow:[Lcom/itextpdf/text/pdf/PdfPCell;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v8, v11

    .line 491
    .local v8, rev:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v11, v11

    if-ge v3, v11, :cond_3

    .line 492
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v6, v11, v3

    .line 493
    .local v6, rcell:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v2

    .line 494
    .local v2, cspan:I
    sub-int/2addr v8, v2

    .line 495
    aput-object v6, v10, v8

    .line 496
    add-int/lit8 v11, v2, -0x1

    add-int/2addr v3, v11

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 498
    .end local v2           #cspan:I
    .end local v6           #rcell:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_3
    iput-object v10, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 500
    .end local v3           #k:I
    .end local v8           #rev:I
    .end local v10           #rtlRow:[Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_4
    new-instance v9, Lcom/itextpdf/text/pdf/PdfPRow;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v9, v11}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>([Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 501
    .local v9, row:Lcom/itextpdf/text/pdf/PdfPRow;
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 502
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v9, v11}, Lcom/itextpdf/text/pdf/PdfPRow;->setWidths([F)Z

    .line 503
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 505
    :cond_5
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-array v11, v5, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 507
    const/4 v11, 0x0

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 508
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->skipColsWithRowspanAbove()V

    .line 509
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    goto :goto_0

    .line 512
    .end local v5           #numCols:I
    .end local v9           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_6
    if-nez v0, :cond_7

    .line 513
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    iget v12, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    aput-object v4, v11, v12

    .line 514
    iget v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    add-int/2addr v11, v1

    iput v11, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 516
    :cond_7
    return-void
.end method

.method public addCell(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 2
    .parameter "table"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->setTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 600
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 601
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;->setTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 602
    return-void
.end method

.method public addCell(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 590
    new-instance v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/Phrase;)V

    .line 591
    return-void
.end method

.method protected adjustCellsInRow(II)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1200
    new-instance v5, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>(Lcom/itextpdf/text/pdf/PdfPRow;)V

    .line 1201
    .local v5, row:Lcom/itextpdf/text/pdf/PdfPRow;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPRow;->initExtraHeights()V

    .line 1203
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v1

    .line 1204
    .local v1, cells:[Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 1205
    aget-object v0, v1, v3

    .line 1206
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1204
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    add-int/2addr v7, p1

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1209
    .local v6, stop:I
    const/4 v2, 0x0

    .line 1210
    .local v2, extra:F
    add-int/lit8 v4, p1, 0x1

    .local v4, k:I
    :goto_2
    if-ge v4, v6, :cond_2

    .line 1211
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v7

    add-float/2addr v2, v7

    .line 1210
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1213
    :cond_2
    invoke-virtual {v5, v3, v2}, Lcom/itextpdf/text/pdf/PdfPRow;->setExtraHeight(IF)V

    goto :goto_1

    .line 1215
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #extra:F
    .end local v4           #k:I
    .end local v6           #stop:I
    :cond_3
    return-object v5
.end method

.method public calculateHeights(Z)F
    .locals 3
    .parameter "firsttime"

    .prologue
    const/4 v1, 0x0

    .line 410
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    .line 416
    :goto_0
    return v1

    .line 412
    :cond_0
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 413
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 414
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(IZ)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    goto :goto_0
.end method

.method public calculateHeightsFast()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateHeights(Z)F

    .line 424
    return-void
.end method

.method protected calculateWidths()V
    .locals 6

    .prologue
    .line 332
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 340
    :cond_0
    return-void

    .line 334
    :cond_1
    const/4 v2, 0x0

    .line 335
    .local v2, total:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v1

    .line 336
    .local v1, numCols:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 337
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 339
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    aput v4, v3, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 3
    .parameter "row"
    .parameter "col"

    .prologue
    .line 535
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfPRow;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    .line 536
    .local v0, cells:[Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 537
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 538
    if-lt p2, v1, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v2

    add-int/2addr v2, v1

    if-ge p2, v2, :cond_0

    .line 539
    aget-object v2, v0, v1

    .line 543
    :goto_1
    return-object v2

    .line 536
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public completeRow()V
    .locals 1

    .prologue
    .line 1581
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rowCompleted:Z

    if-nez v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    goto :goto_0

    .line 1584
    :cond_0
    return-void
.end method

.method protected copyFormat(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 4
    .parameter "sourceTable"

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 268
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 269
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 272
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 273
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRowIdx:I

    .line 274
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    .line 275
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 276
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 277
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v0

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 278
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    .line 279
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 280
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    .line 281
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    .line 282
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 283
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 284
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 285
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    .line 286
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    .line 287
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 288
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 289
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 290
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 291
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 292
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 293
    iget-boolean v0, p1, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 294
    return-void
.end method

.method public deleteBodyRows()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v1, rows2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge v0, v2, :cond_0

    .line 998
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    .line 1000
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 1001
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderHeight()F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 1003
    :cond_1
    return-void
.end method

.method public deleteLastRow()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->deleteRow(I)Z

    move-result v0

    return v0
.end method

.method public deleteRow(I)Z
    .locals 3
    .parameter "rowNumber"

    .prologue
    .line 967
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 968
    :cond_0
    const/4 v1, 0x0

    .line 980
    :goto_0
    return v1

    .line 969
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 970
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 971
    .local v0, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v0, :cond_2

    .line 972
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 974
    .end local v0           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 975
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge p1, v1, :cond_3

    .line 976
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 977
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 978
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 980
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flushContent()V
    .locals 1

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->deleteBodyRows()V

    .line 1592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setSkipFirstHeader(Z)V

    .line 1593
    return-void
.end method

.method public getAbsoluteWidths()[F
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    return-object v0
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 1
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
    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDefaultCell()Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->defaultCell:Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
.end method

.method getEventWidths(FIIZ)[[F
    .locals 10
    .parameter "xPos"
    .parameter "firstRow"
    .parameter "lastRow"
    .parameter "includeHeaders"

    .prologue
    const/4 v8, 0x0

    .line 1255
    if-eqz p4, :cond_0

    .line 1256
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1257
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1259
    :cond_0
    if-eqz p4, :cond_1

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    :goto_0
    add-int/2addr v7, p3

    sub-int/2addr v7, p2

    new-array v6, v7, [[F

    .line 1260
    .local v6, widths:[[F
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->isColspan:Z

    if-eqz v7, :cond_4

    .line 1261
    const/4 v1, 0x0

    .line 1262
    .local v1, n:I
    if-eqz p4, :cond_7

    .line 1263
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    if-ge v0, v7, :cond_7

    .line 1264
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1265
    .local v4, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v4, :cond_2

    .line 1266
    add-int/lit8 v1, v1, 0x1

    .line 1263
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #k:I
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v6           #widths:[[F
    :cond_1
    move v7, v8

    .line 1259
    goto :goto_0

    .line 1268
    .restart local v0       #k:I
    .restart local v1       #n:I
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v6       #widths:[[F
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfPRow;->getEventWidth(F)[F

    move-result-object v7

    aput-object v7, v6, v1

    move v1, v2

    .end local v2           #n:I
    .restart local v1       #n:I
    goto :goto_2

    .line 1271
    .end local v0           #k:I
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v2       #n:I
    :goto_3
    if-ge p2, p3, :cond_6

    .line 1272
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1273
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v4, :cond_3

    .line 1274
    add-int/lit8 v1, v2, 0x1

    .line 1271
    .end local v2           #n:I
    .restart local v1       #n:I
    :goto_4
    add-int/lit8 p2, p2, 0x1

    move v2, v1

    .end local v1           #n:I
    .restart local v2       #n:I
    goto :goto_3

    .line 1276
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #n:I
    .restart local v1       #n:I
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfPRow;->getEventWidth(F)[F

    move-result-object v7

    aput-object v7, v6, v2

    goto :goto_4

    .line 1280
    .end local v1           #n:I
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v3

    .line 1281
    .local v3, numCols:I
    add-int/lit8 v7, v3, 0x1

    new-array v5, v7, [F

    .line 1282
    .local v5, width:[F
    aput p1, v5, v8

    .line 1283
    const/4 v0, 0x0

    .restart local v0       #k:I
    :goto_5
    if-ge v0, v3, :cond_5

    .line 1284
    add-int/lit8 v7, v0, 0x1

    aget v8, v5, v0

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    aget v9, v9, v0

    add-float/2addr v8, v9

    aput v8, v5, v7

    .line 1283
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1285
    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v7, v6

    if-ge v0, v7, :cond_6

    .line 1286
    aput-object v5, v6, v0

    .line 1285
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1288
    .end local v0           #k:I
    .end local v3           #numCols:I
    .end local v5           #width:[F
    :cond_6
    return-object v6

    .restart local v1       #n:I
    :cond_7
    move v2, v1

    .end local v1           #n:I
    .restart local v2       #n:I
    goto :goto_3
.end method

.method public getFooterHeight()F
    .locals 8

    .prologue
    .line 949
    const/4 v4, 0x0

    .line 950
    .local v4, total:F
    const/4 v5, 0x0

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 951
    .local v3, start:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 952
    .local v2, size:I
    move v0, v3

    .local v0, k:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 953
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 954
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 955
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v5

    add-float/2addr v4, v5

    .line 952
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    return v4
.end method

.method public getFooterRows()I
    .locals 1

    .prologue
    .line 1553
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    return v0
.end method

.method public getHeaderHeight()F
    .locals 6

    .prologue
    .line 931
    const/4 v3, 0x0

    .line 932
    .local v3, total:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 933
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 934
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 935
    .local v1, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 936
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v4

    add-float/2addr v3, v4

    .line 933
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v1           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    return v3
.end method

.method public getHeaderRows()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    return v0
.end method

.method public getHorizontalAlignment()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    return v0
.end method

.method public getKeepTogether()Z
    .locals 1

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v0, v0

    return v0
.end method

.method public getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPRow;

    return-object v0
.end method

.method public getRowHeight(I)F
    .locals 1
    .parameter "idx"

    .prologue
    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(IZ)F

    move-result v0

    return v0
.end method

.method public getRowHeight(IZ)F
    .locals 9
    .parameter "idx"
    .parameter "firsttime"

    .prologue
    const/4 v1, 0x0

    .line 865
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v7, v7, v1

    if-lez v7, :cond_0

    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 868
    .local v3, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v3, :cond_0

    .line 870
    if-eqz p2, :cond_2

    .line 871
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfPRow;->setWidths([F)Z

    .line 872
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v1

    .line 875
    .local v1, height:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 876
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 875
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 878
    :cond_4
    const/4 v4, 0x1

    .line 879
    .local v4, rs:I
    :goto_3
    sub-int v7, p1, v4

    invoke-virtual {p0, v7, v2}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 880
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 882
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    sub-int v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 883
    .local v6, tmprow:Lcom/itextpdf/text/pdf/PdfPRow;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    aget-object v0, v7, v2

    .line 884
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v5, 0x0

    .line 885
    .local v5, tmp:F
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    if-ne v7, v8, :cond_6

    .line 886
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMaxHeight()F

    move-result v5

    .line 887
    :goto_4
    if-lez v4, :cond_6

    .line 888
    sub-int v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v7

    sub-float/2addr v5, v7

    .line 889
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 892
    :cond_6
    cmpl-float v7, v5, v1

    if-lez v7, :cond_3

    .line 893
    move v1, v5

    goto :goto_2

    .line 895
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v4           #rs:I
    .end local v5           #tmp:F
    .end local v6           #tmprow:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_7
    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    goto :goto_0
.end method

.method public getRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRows(II)Ljava/util/ArrayList;
    .locals 17
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v15

    move/from16 v0, p2

    if-le v0, v15, :cond_1

    .line 1190
    :cond_0
    return-object v9

    .line 1157
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/text/pdf/PdfPTable;->adjustCellsInRow(II)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v6

    .line 1158
    .local v6, firstRow:Lcom/itextpdf/text/pdf/PdfPRow;
    const/4 v3, 0x0

    .line 1160
    .local v3, colIndex:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v15

    if-ge v3, v15, :cond_6

    .line 1161
    move/from16 v12, p1

    .line 1162
    .local v12, rowIndex:I
    :goto_1
    add-int/lit8 v13, v12, -0x1

    .end local v12           #rowIndex:I
    .local v13, rowIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1163
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v11

    .line 1164
    .local v11, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v11, :cond_3

    .line 1165
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v15

    aget-object v10, v15, v3

    .line 1166
    .local v10, replaceCell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v10, :cond_3

    .line 1167
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v15

    new-instance v16, Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v16, v15, v3

    .line 1168
    const/4 v5, 0x0

    .line 1169
    .local v5, extra:F
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v15

    add-int/2addr v15, v13

    move/from16 v0, p2

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1170
    .local v14, stop:I
    add-int/lit8 v8, p1, 0x1

    .local v8, j:I
    :goto_2
    if-ge v8, v14, :cond_2

    .line 1171
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v15

    add-float/2addr v5, v15

    .line 1170
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1173
    :cond_2
    invoke-virtual {v6, v3, v5}, Lcom/itextpdf/text/pdf/PdfPRow;->setExtraHeight(IF)V

    .line 1174
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowspanHeight(II)F

    move-result v15

    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v16

    sub-float v15, v15, v16

    sub-float v4, v15, v5

    .line 1176
    .local v4, diff:F
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v15

    aget-object v15, v15, v3

    invoke-virtual {v15, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->consumeHeight(F)V

    .end local v4           #diff:F
    .end local v5           #extra:F
    .end local v8           #j:I
    .end local v10           #replaceCell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v14           #stop:I
    :cond_3
    move v12, v13

    .line 1179
    .end local v13           #rowIndex:I
    .restart local v12       #rowIndex:I
    goto :goto_1

    .line 1180
    .end local v11           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v12           #rowIndex:I
    .restart local v13       #rowIndex:I
    :cond_4
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v15

    aget-object v2, v15, v3

    .line 1181
    .local v2, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v2, :cond_5

    .line 1182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1184
    :cond_5
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v15

    add-int/2addr v3, v15

    goto :goto_0

    .line 1186
    .end local v2           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v13           #rowIndex:I
    :cond_6
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v7, p1, 0x1

    .local v7, i:I
    :goto_3
    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    .line 1188
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->adjustCellsInRow(II)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method public getRowspanHeight(II)F
    .locals 5
    .parameter "rowIndex"
    .parameter "cellIndex"

    .prologue
    const/4 v3, 0x0

    .line 909
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpg-float v4, v4, v3

    if-lez v4, :cond_0

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 921
    :cond_0
    return v3

    .line 911
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 912
    .local v2, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v4

    array-length v4, v4

    if-ge p2, v4, :cond_0

    .line 914
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v4

    aget-object v0, v4, p2

    .line 915
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v0, :cond_0

    .line 917
    const/4 v3, 0x0

    .line 918
    .local v3, rowspanHeight:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 919
    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v4

    add-float/2addr v3, v4

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    return v0
.end method

.method public getTableEvent()Lcom/itextpdf/text/pdf/PdfPTableEvent;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    return-object v0
.end method

.method public getTotalHeight()F
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    return v0
.end method

.method public getTotalWidth()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x1

    return v0
.end method

.method public isExtendLastRow()Z
    .locals 2

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isExtendLastRow(Z)Z
    .locals 2
    .parameter "newPageFollows"

    .prologue
    .line 1482
    if-eqz p1, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    .line 1485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method public isHeadersInEvent()Z
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    return v0
.end method

.method public isLockedWidth()Z
    .locals 1

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x1

    return v0
.end method

.method public isSkipFirstHeader()Z
    .locals 1

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    return v0
.end method

.method public isSkipLastFooter()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    return v0
.end method

.method public isSplitLate()Z
    .locals 1

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    return v0
.end method

.method public isSplitRows()Z
    .locals 1

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 1080
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1083
    :goto_0
    return v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetColumnCount(I)V
    .locals 3
    .parameter "newColCount"

    .prologue
    .line 433
    if-gtz p1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "the.number.of.columns.in.pdfptable.constructor.must.be.greater.than.zero"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_0
    new-array v1, p1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 436
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 439
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 440
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->currentRow:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 441
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 442
    return-void
.end method

.method rowSpanAbove(II)Z
    .locals 9
    .parameter "currRow"
    .parameter "currCol"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v7

    if-ge p2, v7, :cond_0

    if-ltz p2, :cond_0

    if-nez p1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v6

    .line 557
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 558
    .local v4, row:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 559
    .local v1, aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p0, v4, p2}, Lcom/itextpdf/text/pdf/PdfPTable;->cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    .line 562
    .local v0, aboveCell:Lcom/itextpdf/text/pdf/PdfPCell;
    :goto_1
    if-nez v0, :cond_2

    if-lez v4, :cond_2

    .line 563
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 564
    .restart local v1       #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0, v4, p2}, Lcom/itextpdf/text/pdf/PdfPTable;->cellAt(II)Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v0

    goto :goto_1

    .line 569
    :cond_2
    sub-int v3, p1, v4

    .line 571
    .local v3, distance:I
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    if-ne v7, v5, :cond_3

    if-le v3, v5, :cond_3

    .line 572
    add-int/lit8 v2, p2, -0x1

    .line 573
    .local v2, col:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    check-cast v1, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 574
    .restart local v1       #aboveRow:Lcom/itextpdf/text/pdf/PdfPRow;
    add-int/lit8 v3, v3, -0x1

    .line 575
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    aget-object v0, v7, v2

    .line 576
    :goto_2
    if-nez v0, :cond_3

    if-lez v2, :cond_3

    .line 577
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v7

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v7, v2

    goto :goto_2

    .line 580
    .end local v2           #col:I
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v7

    if-le v7, v3, :cond_4

    :goto_3
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public setComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 1608
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->complete:Z

    .line 1609
    return-void
.end method

.method public setExtendLastRow(Z)V
    .locals 2
    .parameter "extendLastRows"

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1457
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aput-boolean p1, v0, v1

    .line 1458
    return-void
.end method

.method public setExtendLastRow(ZZ)V
    .locals 2
    .parameter "extendLastRows"
    .parameter "extendFinalRow"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 1471
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->extendLastRow:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 1472
    return-void
.end method

.method public setFooterRows(I)V
    .locals 0
    .parameter "footerRows"

    .prologue
    .line 1570
    if-gez p1, :cond_0

    .line 1571
    const/4 p1, 0x0

    .line 1572
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->footerRows:I

    .line 1573
    return-void
.end method

.method public setHeaderRows(I)V
    .locals 0
    .parameter "headerRows"

    .prologue
    .line 1032
    if-gez p1, :cond_0

    .line 1033
    const/4 p1, 0x0

    .line 1034
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    .line 1035
    return-void
.end method

.method public setHeadersInEvent(Z)V
    .locals 0
    .parameter "headersInEvent"

    .prologue
    .line 1503
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    .line 1504
    return-void
.end method

.method public setHorizontalAlignment(I)V
    .locals 0
    .parameter "horizontalAlignment"

    .prologue
    .line 1122
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->horizontalAlignment:I

    .line 1123
    return-void
.end method

.method public setKeepTogether(Z)V
    .locals 0
    .parameter "keepTogether"

    .prologue
    .line 1534
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->keepTogether:Z

    .line 1535
    return-void
.end method

.method public setLockedWidth(Z)V
    .locals 0
    .parameter "lockedWidth"

    .prologue
    .line 1381
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->lockedWidth:Z

    .line 1382
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 1343
    packed-switch p1, :pswitch_data_0

    .line 1351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :pswitch_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->runDirection:I

    .line 1353
    return-void

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSkipFirstHeader(Z)V
    .locals 0
    .parameter "skipFirstHeader"

    .prologue
    .line 1321
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipFirstHeader:Z

    .line 1322
    return-void
.end method

.method public setSkipLastFooter(Z)V
    .locals 0
    .parameter "skipLastFooter"

    .prologue
    .line 1332
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->skipLastFooter:Z

    .line 1333
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1419
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    .line 1420
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1410
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    .line 1411
    return-void
.end method

.method public setSplitLate(Z)V
    .locals 0
    .parameter "splitLate"

    .prologue
    .line 1523
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitLate:Z

    .line 1524
    return-void
.end method

.method public setSplitRows(Z)V
    .locals 0
    .parameter "splitRows"

    .prologue
    .line 1401
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->splitRows:Z

    .line 1402
    return-void
.end method

.method public setTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1222
    if-nez p1, :cond_0

    .line 1223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    .line 1234
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    if-nez v1, :cond_1

    .line 1225
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    goto :goto_0

    .line 1226
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    instance-of v1, v1, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    if-eqz v1, :cond_2

    .line 1227
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    check-cast v1, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    goto :goto_0

    .line 1229
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;-><init>()V

    .line 1230
    .local v0, forward:Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    .line 1231
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V

    .line 1232
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    goto :goto_0
.end method

.method public setTotalWidth(F)V
    .locals 1
    .parameter "totalWidth"

    .prologue
    .line 348
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 352
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateHeights(Z)F

    goto :goto_0
.end method

.method public setTotalWidth([F)V
    .locals 3
    .parameter "columnWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 364
    array-length v1, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 365
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v2, "wrong.number.of.columns"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 367
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 368
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    aget v2, p1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 370
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .parameter "widthPercentage"

    .prologue
    .line 1102
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 1103
    return-void
.end method

.method public setWidthPercentage([FLcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "columnWidth"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 380
    array-length v2, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 381
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "wrong.number.of.columns"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_0
    const/4 v1, 0x0

    .line 383
    .local v1, totalWidth:F
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 384
    aget v2, p1, v0

    add-float/2addr v1, v2

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    div-float v2, v1, v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfPTable;->widthPercentage:F

    .line 386
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 387
    return-void
.end method

.method public setWidths([F)V
    .locals 3
    .parameter "relativeWidths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 304
    array-length v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 305
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "wrong.number.of.columns"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    .line 307
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->relativeWidths:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->totalHeight:F

    .line 310
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateWidths()V

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->calculateHeights(Z)F

    .line 312
    return-void
.end method

.method public setWidths([I)V
    .locals 3
    .parameter "relativeWidths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 322
    array-length v2, p1

    new-array v1, v2, [F

    .line 323
    .local v1, tb:[F
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 324
    aget v2, p1, v0

    int-to-float v2, v2

    aput v2, v1, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidths([F)V

    .line 326
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public spacingAfter()F
    .locals 1

    .prologue
    .line 1437
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter:F

    return v0
.end method

.method public spacingBefore()F
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore:F

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 1052
    const/16 v0, 0x17

    return v0
.end method

.method public writeSelectedRows(IIFFLcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 8
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvas"

    .prologue
    .line 727
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 8
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"

    .prologue
    .line 642
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F

    move-result v0

    return v0
.end method

.method public writeSelectedRows(IIIIFFLcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 16
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvas"

    .prologue
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v13

    .line 750
    .local v13, totalCols:I
    if-gez p1, :cond_1

    .line 751
    const/16 p1, 0x0

    .line 755
    :goto_0
    if-gez p2, :cond_2

    .line 756
    move/from16 p2, v13

    .line 760
    :goto_1
    if-nez p1, :cond_0

    move/from16 v0, p2

    if-eq v0, v13, :cond_3

    :cond_0
    const/4 v9, 0x1

    .line 762
    .local v9, clip:Z
    :goto_2
    if-eqz v9, :cond_5

    .line 763
    const/4 v14, 0x0

    .line 764
    .local v14, w:F
    move/from16 v10, p1

    .local v10, k:I
    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_4

    .line 765
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfPTable;->absoluteWidths:[F

    aget v1, v1, v10

    add-float/2addr v14, v1

    .line 764
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 753
    .end local v9           #clip:Z
    .end local v10           #k:I
    .end local v14           #w:F
    :cond_1
    move/from16 v0, p1

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 758
    :cond_2
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 760
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 766
    .restart local v9       #clip:Z
    .restart local v10       #k:I
    .restart local v14       #w:F
    :cond_4
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 767
    if-nez p1, :cond_7

    const v11, 0x461c4000

    .line 768
    .local v11, lx:F
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_8

    const v12, 0x461c4000

    .line 769
    .local v12, rx:F
    :goto_5
    sub-float v1, p5, v11

    const v2, -0x39e3c000

    add-float v3, v14, v11

    add-float/2addr v3, v12

    const v4, 0x469c4000

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 770
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->clip()V

    .line 771
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->newPath()V

    .line 774
    .end local v10           #k:I
    .end local v11           #lx:F
    .end local v12           #rx:F
    .end local v14           #w:F
    :cond_5
    invoke-static/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfPTable;->beginWritingRows(Lcom/itextpdf/text/pdf/PdfContentByte;)[Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v8

    .local v8, canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 775
    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F

    move-result v15

    .line 776
    .local v15, y:F
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfPTable;->endWritingRows([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 778
    if-eqz v9, :cond_6

    .line 779
    invoke-virtual/range {p7 .. p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 781
    :cond_6
    return v15

    .line 767
    .end local v8           #canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v15           #y:F
    .restart local v10       #k:I
    .restart local v14       #w:F
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 768
    .restart local v11       #lx:F
    :cond_8
    const/4 v12, 0x0

    goto :goto_5
.end method

.method public writeSelectedRows(IIIIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F
    .locals 18
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "rowStart"
    .parameter "rowEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->totalWidth:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 667
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "the.table.width.must.be.greater.than.zero"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 669
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 670
    .local v15, totalRows:I
    if-gez p3, :cond_1

    .line 671
    const/16 p3, 0x0

    .line 672
    :cond_1
    if-gez p4, :cond_2

    .line 673
    move/from16 p4, v15

    .line 676
    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_3

    move/from16 v16, p6

    .line 711
    .end local p6
    .local v16, yPos:F
    :goto_1
    return v16

    .line 675
    .end local v16           #yPos:F
    .restart local p6
    :cond_2
    move/from16 v0, p4

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPTable;->getNumberOfColumns()I

    move-result v14

    .line 680
    .local v14, totalCols:I
    if-gez p1, :cond_5

    .line 681
    const/16 p1, 0x0

    .line 684
    :goto_2
    if-gez p2, :cond_6

    .line 685
    move/from16 p2, v14

    .line 689
    :goto_3
    move/from16 v17, p6

    .line 690
    .local v17, yPosStart:F
    move/from16 v13, p3

    .local v13, k:I
    :goto_4
    move/from16 v0, p4

    if-ge v13, v0, :cond_7

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 692
    .local v4, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v4, :cond_4

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 693
    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/text/pdf/PdfPRow;->writeCells(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 694
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v5

    sub-float p6, p6, v5

    .line 690
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 683
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v13           #k:I
    .end local v17           #yPosStart:F
    :cond_5
    move/from16 v0, p1

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    .line 687
    :cond_6
    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    .line 698
    .restart local v13       #k:I
    .restart local v17       #yPosStart:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    if-eqz v5, :cond_a

    if-nez p1, :cond_a

    move/from16 v0, p2

    if-ne v0, v14, :cond_a

    .line 699
    sub-int v5, p4, p3

    add-int/lit8 v5, v5, 0x1

    new-array v8, v5, [F

    .line 700
    .local v8, heights:[F
    const/4 v5, 0x0

    aput v17, v8, v5

    .line 701
    move/from16 v13, p3

    :goto_5
    move/from16 v0, p4

    if-ge v13, v0, :cond_9

    .line 702
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 703
    .restart local v4       #row:Lcom/itextpdf/text/pdf/PdfPRow;
    const/4 v12, 0x0

    .line 704
    .local v12, hr:F
    if-eqz v4, :cond_8

    .line 705
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v12

    .line 706
    :cond_8
    sub-int v5, v13, p3

    add-int/lit8 v5, v5, 0x1

    sub-int v6, v13, p3

    aget v6, v8, v6

    sub-float/2addr v6, v12

    aput v6, v8, v5

    .line 701
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 708
    .end local v4           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v12           #hr:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPTable;->tableEvent:Lcom/itextpdf/text/pdf/PdfPTableEvent;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/itextpdf/text/pdf/PdfPTable;->getEventWidths(FIIZ)[[F

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headersInEvent:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfPTable;->headerRows:I

    :goto_6
    move-object/from16 v6, p0

    move/from16 v10, p3

    move-object/from16 v11, p7

    invoke-interface/range {v5 .. v11}, Lcom/itextpdf/text/pdf/PdfPTableEvent;->tableLayout(Lcom/itextpdf/text/pdf/PdfPTable;[[F[FII[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .end local v8           #heights:[F
    :cond_a
    move/from16 v16, p6

    .line 711
    .end local p6
    .restart local v16       #yPos:F
    goto/16 :goto_1

    .line 708
    .end local v16           #yPos:F
    .restart local v8       #heights:[F
    .restart local p6
    :cond_b
    const/4 v9, 0x0

    goto :goto_6
.end method
