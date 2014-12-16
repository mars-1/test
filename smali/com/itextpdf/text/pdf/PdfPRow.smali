.class public Lcom/itextpdf/text/pdf/PdfPRow;
.super Ljava/lang/Object;
.source "PdfPRow.java"


# static fields
.field public static final BOTTOM_LIMIT:F = -1.07374182E9f

.field public static final RIGHT_LIMIT:F = 20000.0f


# instance fields
.field protected calculated:Z

.field private canvasesPos:[I

.field protected cells:[Lcom/itextpdf/text/pdf/PdfPCell;

.field protected extraHeights:[F

.field protected maxHeight:F

.field protected widths:[F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfPRow;)V
    .locals 5
    .parameter "row"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 80
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 102
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 103
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 104
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfPCell;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 105
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfPCell;

    iget-object v3, p1, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v2, v1, v0

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    .line 110
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->initExtraHeights()V

    .line 112
    return-void
.end method

.method public constructor <init>([Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 1
    .parameter "cells"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 91
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    .line 92
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->initExtraHeights()V

    .line 94
    return-void
.end method

.method public static setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F
    .locals 1
    .parameter "ct"
    .parameter "left"
    .parameter "bottom"
    .parameter "right"
    .parameter "top"

    .prologue
    .line 262
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    .line 263
    move p3, p1

    .line 264
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 265
    move p4, p2

    .line 266
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 267
    return p4
.end method


# virtual methods
.method public calculateHeights()F
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 174
    const/4 v3, 0x0

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 175
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v0, v3, v2

    .line 177
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    const/4 v1, 0x0

    .line 178
    .local v1, height:F
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getMaxHeight()F

    move-result v1

    .line 183
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 184
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    goto :goto_1

    .line 187
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v1           #height:F
    :cond_2
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 188
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    return v3
.end method

.method public getCells()[Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
.end method

.method getEventWidth(F)[F
    .locals 6
    .parameter "xPos"

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 540
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 541
    add-int/lit8 v1, v1, 0x1

    .line 539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    add-int/lit8 v4, v1, 0x1

    new-array v3, v4, [F

    .line 544
    .local v3, width:[F
    const/4 v1, 0x0

    .line 545
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    aput p1, v3, v1

    .line 546
    const/4 v0, 0x0

    move v1, v2

    .end local v2           #n:I
    .restart local v1       #n:I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 547
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    .line 548
    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    aput v4, v3, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    .line 546
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_3
    return-object v3
.end method

.method public getMaxHeights()F
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    if-eqz v0, :cond_0

    .line 521
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 522
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()F

    move-result v0

    goto :goto_0
.end method

.method public initExtraHeights()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public isCalculated()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    return v0
.end method

.method protected restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 6
    .parameter "canvases"

    .prologue
    .line 248
    const/4 v2, 0x4

    .line 249
    .local v2, last:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 250
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    .line 251
    .local v0, bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v3

    .line 252
    .local v3, p1:I
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 253
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->setSize(I)V

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0           #bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v3           #p1:I
    :cond_1
    return-void
.end method

.method protected saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V
    .locals 10
    .parameter "canvases"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 232
    const/4 v9, 0x4

    .line 233
    .local v9, last:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    if-nez v0, :cond_0

    .line 234
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    .line 235
    :cond_0
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 236
    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v7

    .line 237
    .local v7, bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v1, v8, 0x2

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v2

    aput v2, v0, v1

    .line 238
    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 239
    aget-object v0, p1, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 240
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->canvasesPos:[I

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v2

    aput v2, v0, v1

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 242
    .end local v7           #bb:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_1
    return-void
.end method

.method public setExtraHeight(IF)V
    .locals 1
    .parameter "cell"
    .parameter "height"

    .prologue
    .line 163
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    aput p2, v0, p1

    goto :goto_0
.end method

.method public setMaxHeights(F)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 532
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    .line 533
    return-void
.end method

.method public setWidths([F)Z
    .locals 7
    .parameter "widths"

    .prologue
    const/4 v4, 0x0

    .line 121
    array-length v5, p1

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 142
    :goto_0
    return v4

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v6, v6

    invoke-static {p1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, total:F
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    .line 126
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v0, v4, v1

    .line 129
    .local v0, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v0, :cond_1

    .line 130
    aget v4, p1, v1

    add-float/2addr v3, v4

    .line 126
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setLeft(F)V

    .line 135
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v4

    add-int v2, v1, v4

    .line 136
    .local v2, last:I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 137
    aget v4, p1, v1

    add-float/2addr v3, v4

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 138
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 139
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setRight(F)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setTop(F)V

    goto :goto_2

    .line 142
    .end local v0           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #last:I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public splitRow(Lcom/itextpdf/text/pdf/PdfPTable;IF)Lcom/itextpdf/text/pdf/PdfPRow;
    .locals 25
    .parameter "table"
    .parameter "rowIndex"
    .parameter "new_height"

    .prologue
    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v14, v0, [Lcom/itextpdf/text/pdf/PdfPCell;

    .line 566
    .local v14, newCells:[Lcom/itextpdf/text/pdf/PdfPCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v7, v0, [F

    .line 567
    .local v7, fixHs:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v12, v0, [F

    .line 568
    .local v12, minHs:[F
    const/4 v2, 0x1

    .line 569
    .local v2, allEmpty:Z
    const/4 v10, 0x0

    .local v10, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_a

    .line 570
    move/from16 v15, p3

    .line 571
    .local v15, newHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    aget-object v4, v23, v10

    .line 572
    .local v4, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v4, :cond_2

    .line 573
    move/from16 v9, p2

    .line 574
    .local v9, index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 575
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v23

    add-float v15, v15, v23

    .line 576
    :goto_1
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/itextpdf/text/pdf/PdfPTable;->rowSpanAbove(II)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 577
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v23

    add-float v15, v15, v23

    goto :goto_1

    .line 579
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v17

    .line 580
    .local v17, row:Lcom/itextpdf/text/pdf/PdfPRow;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v23

    aget-object v23, v23, v10

    if-eqz v23, :cond_1

    .line 581
    new-instance v23, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v24

    aget-object v24, v24, v10

    invoke-direct/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    aput-object v23, v14, v10

    .line 582
    aget-object v23, v14, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfPCell;->consumeHeight(F)V

    .line 583
    aget-object v23, v14, v10

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfPRow;->getCells()[Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v24

    aget-object v24, v24, v10

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfPCell;->getRowspan()I

    move-result v24

    sub-int v24, v24, p2

    add-int v24, v24, v9

    invoke-virtual/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfPCell;->setRowspan(I)V

    .line 584
    const/4 v2, 0x0

    .line 569
    .end local v9           #index:I
    .end local v17           #row:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v23

    aput v23, v7, v10

    .line 590
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getMinimumHeight()F

    move-result v23

    aput v23, v12, v10

    .line 591
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v8

    .line 592
    .local v8, img:Lcom/itextpdf/text/Image;
    new-instance v13, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v13, v4}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 593
    .local v13, newCell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-eqz v8, :cond_4

    .line 594
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v23

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    add-float v23, v23, v24

    cmpl-float v23, v15, v23

    if-lez v23, :cond_3

    .line 595
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    .line 596
    const/4 v2, 0x0

    .line 635
    :cond_3
    :goto_3
    aput-object v13, v14, v10

    .line 636
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v23

    sub-float v23, v15, v23

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setFixedHeight(F)V

    goto :goto_2

    .line 601
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v5

    .line 602
    .local v5, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v23

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v24

    add-float v11, v23, v24

    .line 603
    .local v11, left:F
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v23

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v24

    add-float v23, v23, v24

    sub-float v3, v23, v15

    .line 604
    .local v3, bottom:F
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v23

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v24

    sub-float v16, v23, v24

    .line 605
    .local v16, right:F
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v23

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v24

    sub-float v21, v23, v24

    .line 606
    .local v21, top:F
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    .line 612
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->isNoWrap()Z

    move-result v23

    if-eqz v23, :cond_5

    const v16, 0x469c4000

    .end local v16           #right:F
    :cond_5
    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v5, v11, v3, v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F

    move-result v22

    .line 617
    .local v22, y:F
    :goto_4
    const/16 v23, 0x1

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 622
    .local v19, status:I
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v23

    cmpl-float v23, v23, v22

    if-nez v23, :cond_6

    const/16 v20, 0x1

    .line 623
    .local v20, thisEmpty:Z
    :goto_5
    if-eqz v20, :cond_7

    .line 624
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 625
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setFilledWidth(F)V

    .line 633
    :goto_6
    if-eqz v2, :cond_9

    if-eqz v20, :cond_9

    const/4 v2, 0x1

    :goto_7
    goto/16 :goto_3

    .line 609
    .end local v19           #status:I
    .end local v20           #thisEmpty:Z
    .end local v22           #y:F
    .restart local v16       #right:F
    :sswitch_0
    move/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v5, v3, v11, v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;FFFF)F

    move-result v22

    .line 610
    .restart local v22       #y:F
    goto :goto_4

    .line 619
    .end local v16           #right:F
    :catch_0
    move-exception v6

    .line 620
    .local v6, e:Lcom/itextpdf/text/DocumentException;
    new-instance v23, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v23

    .line 622
    .end local v6           #e:Lcom/itextpdf/text/DocumentException;
    .restart local v19       #status:I
    :cond_6
    const/16 v20, 0x0

    goto :goto_5

    .line 627
    .restart local v20       #thisEmpty:Z
    :cond_7
    and-int/lit8 v23, v19, 0x1

    if-nez v23, :cond_8

    .line 628
    invoke-virtual {v13, v5}, Lcom/itextpdf/text/pdf/PdfPCell;->setColumn(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 629
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setFilledWidth(F)V

    goto :goto_6

    .line 632
    :cond_8
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setPhrase(Lcom/itextpdf/text/Phrase;)V

    goto :goto_6

    .line 633
    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    .line 638
    .end local v3           #bottom:F
    .end local v4           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v5           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v8           #img:Lcom/itextpdf/text/Image;
    .end local v11           #left:F
    .end local v13           #newCell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v15           #newHeight:F
    .end local v19           #status:I
    .end local v20           #thisEmpty:Z
    .end local v21           #top:F
    .end local v22           #y:F
    :cond_a
    if-eqz v2, :cond_e

    .line 639
    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_d

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    move-object/from16 v23, v0

    aget-object v4, v23, v10

    .line 641
    .restart local v4       #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v4, :cond_b

    .line 639
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 643
    :cond_b
    aget v23, v7, v10

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_c

    .line 644
    aget v23, v7, v10

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setFixedHeight(F)V

    goto :goto_9

    .line 646
    :cond_c
    aget v23, v12, v10

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setMinimumHeight(F)V

    goto :goto_9

    .line 648
    .end local v4           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_d
    const/16 v18, 0x0

    .line 654
    :goto_a
    return-object v18

    .line 650
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()F

    .line 651
    new-instance v18, Lcom/itextpdf/text/pdf/PdfPRow;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/itextpdf/text/pdf/PdfPRow;-><init>([Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 652
    .local v18, split:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, [F->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [F

    check-cast v23, [F

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    .line 653
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()F

    goto :goto_a

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public writeBorderAndBackground(FFFLcom/itextpdf/text/pdf/PdfPCell;[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 10
    .parameter "xPos"
    .parameter "yPos"
    .parameter "currentMaxHeight"
    .parameter "cell"
    .parameter "canvases"

    .prologue
    .line 202
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    .line 203
    .local v1, background:Lcom/itextpdf/text/BaseColor;
    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->hasBorders()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 205
    :cond_0
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v8

    add-float v6, v8, p1

    .line 206
    .local v6, right:F
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v8

    add-float v7, v8, p2

    .line 207
    .local v7, top:F
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v8

    add-float v3, v8, p1

    .line 208
    .local v3, left:F
    sub-float v2, v7, p3

    .line 210
    .local v2, bottom:F
    if-eqz v1, :cond_1

    .line 211
    const/4 v8, 0x1

    aget-object v0, p5, v8

    .line 212
    .local v0, backgr:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 213
    sub-float v8, v6, v3

    sub-float v9, v7, v2

    invoke-virtual {v0, v3, v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 214
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 216
    .end local v0           #backgr:Lcom/itextpdf/text/pdf/PdfContentByte;
    :cond_1
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfPCell;->hasBorders()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    new-instance v5, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v5, v3, v2, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 219
    .local v5, newRect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v5, p4}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 220
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/itextpdf/text/Rectangle;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 222
    const/4 v8, 0x2

    aget-object v4, p5, v8

    .line 223
    .local v4, lineCanvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 226
    .end local v2           #bottom:F
    .end local v3           #left:F
    .end local v4           #lineCanvas:Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v5           #newRect:Lcom/itextpdf/text/Rectangle;
    .end local v6           #right:F
    .end local v7           #top:F
    :cond_2
    return-void
.end method

.method public writeCells(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 43
    .parameter "colStart"
    .parameter "colEnd"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "canvases"

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->calculated:Z

    if-nez v4, :cond_0

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfPRow;->calculateHeights()F

    .line 284
    :cond_0
    if-gez p2, :cond_3

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v0, v4

    move/from16 p2, v0

    .line 288
    :goto_0
    if-gez p1, :cond_1

    .line 289
    const/16 p1, 0x0

    .line 290
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    .line 503
    :cond_2
    return-void

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    array-length v4, v4

    move/from16 v0, p2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 294
    :cond_4
    move/from16 v37, p1

    .local v37, newStart:I
    :goto_1
    if-ltz v37, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    if-eqz v4, :cond_9

    .line 301
    :cond_5
    if-gez v37, :cond_6

    .line 302
    const/16 v37, 0x0

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    if-eqz v4, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v4, v4, v37

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    sub-float p3, p3, v4

    .line 306
    :cond_7
    move/from16 v32, v37

    .local v32, k:I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->cells:[Lcom/itextpdf/text/pdf/PdfPCell;

    aget-object v8, v4, v32

    .line 308
    .local v8, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    if-nez v8, :cond_b

    .line 306
    :cond_8
    :goto_3
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 297
    .end local v8           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v32           #k:I
    :cond_9
    if-lez v37, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->widths:[F

    add-int/lit8 v5, v37, -0x1

    aget v4, v4, v5

    sub-float p3, p3, v4

    .line 294
    :cond_a
    add-int/lit8 v37, v37, -0x1

    goto :goto_1

    .line 310
    .restart local v8       #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .restart local v32       #k:I
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfPRow;->maxHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfPRow;->extraHeights:[F

    aget v5, v5, v32

    add-float v7, v4, v5

    .local v7, currentMaxHeight:F
    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 312
    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/text/pdf/PdfPRow;->writeBorderAndBackground(FFFLcom/itextpdf/text/pdf/PdfPCell;[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 314
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v31

    .line 316
    .local v31, img:Lcom/itextpdf/text/Image;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 317
    .local v41, tly:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_c

    .line 318
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 331
    :cond_c
    :goto_4
    if-eqz v31, :cond_11

    .line 332
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    if-eqz v4, :cond_d

    .line 333
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v31

    .line 334
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getImageRotation()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v5

    int-to-double v5, v5

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v5, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v5, v9

    double-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->setRotation(F)V

    .line 336
    :cond_d
    const/16 v42, 0x0

    .line 337
    .local v42, vf:Z
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_e

    .line 338
    const/high16 v4, 0x42c8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 339
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v5

    div-float v40, v4, v5

    .line 342
    .local v40, scale:F
    const/high16 v4, 0x42c8

    mul-float v4, v4, v40

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    .line 343
    const/16 v42, 0x1

    .line 345
    .end local v40           #scale:F
    :cond_e
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v33, v4, v5

    .line 347
    .local v33, left:F
    if-eqz v42, :cond_f

    .line 348
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 364
    :goto_5
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 366
    :cond_f
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    sub-float v4, v41, v4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 368
    const/4 v4, 0x3

    :try_start_0
    aget-object v4, p5, v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;)V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v33           #left:F
    .end local v42           #vf:Z
    :cond_10
    :goto_6
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getCellEvent()Lcom/itextpdf/text/pdf/PdfPCellEvent;

    move-result-object v29

    .line 496
    .local v29, evt:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    if-eqz v29, :cond_8

    .line 497
    new-instance v38, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v5

    add-float v5, v5, p4

    sub-float/2addr v5, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v6

    add-float v6, v6, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v9

    add-float v9, v9, p4

    move-object/from16 v0, v38

    invoke-direct {v0, v4, v5, v6, v9}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 500
    .local v38, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, p5

    invoke-interface {v0, v8, v1, v2}, Lcom/itextpdf/text/pdf/PdfPCellEvent;->cellLayout(Lcom/itextpdf/text/pdf/PdfPCell;Lcom/itextpdf/text/Rectangle;[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_3

    .line 320
    .end local v29           #evt:Lcom/itextpdf/text/pdf/PdfPCellEvent;
    .end local v38           #rect:Lcom/itextpdf/text/Rectangle;
    :pswitch_0
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 322
    goto/16 :goto_4

    .line 324
    :pswitch_1
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v5

    sub-float/2addr v5, v7

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 326
    goto/16 :goto_4

    .line 350
    .restart local v33       #left:F
    .restart local v42       #vf:Z
    :pswitch_2
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float v33, p3, v4

    .line 355
    goto/16 :goto_5

    .line 357
    :pswitch_3
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v5

    sub-float v33, v4, v5

    .line 360
    goto/16 :goto_5

    .line 369
    :catch_0
    move-exception v28

    .line 370
    .local v28, e:Lcom/itextpdf/text/DocumentException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 374
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    .end local v33           #left:F
    .end local v42           #vf:Z
    :cond_11
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_12

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_17

    .line 375
    :cond_12
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float v36, v4, v5

    .line 376
    .local v36, netWidth:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v35, v4, v5

    .line 377
    .local v35, netHeight:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 378
    .local v27, ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 379
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3a83126f

    add-float v6, v6, v36

    move/from16 v0, v35

    neg-float v9, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v6, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 381
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v4

    neg-float v0, v4

    move/from16 v26, v0

    .line 386
    .local v26, calcHeight:F
    const/4 v4, 0x0

    cmpg-float v4, v36, v4

    if-lez v4, :cond_13

    const/4 v4, 0x0

    cmpg-float v4, v35, v4

    if-gtz v4, :cond_14

    .line 387
    :cond_13
    const/16 v26, 0x0

    .line 388
    :cond_14
    const/4 v4, 0x0

    cmpl-float v4, v26, v4

    if-lez v4, :cond_10

    .line 389
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->isUseDescender()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 390
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->getDescender()F

    move-result v4

    sub-float v26, v26, v4

    .line 391
    :cond_15
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 392
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 393
    const v4, -0x44bb645a

    const v5, -0x457ced91

    const v6, 0x3b449ba6

    add-float v6, v6, v36

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 396
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_16

    .line 397
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float v16, v4, v5

    .line 398
    .local v16, pivotY:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 406
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float/2addr v4, v5

    add-float v15, v4, v26

    .line 409
    .local v15, pivotX:F
    :goto_7
    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x4080

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    .line 427
    :goto_8
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_6

    .line 382
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    .end local v26           #calcHeight:F
    :catch_1
    move-exception v28

    .line 383
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 400
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    .restart local v16       #pivotY:F
    .restart local v26       #calcHeight:F
    :pswitch_4
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v15, v4, v5

    .line 401
    .restart local v15       #pivotX:F
    goto :goto_7

    .line 403
    .end local v15           #pivotX:F
    :pswitch_5
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v6

    sub-float/2addr v5, v6

    add-float v5, v5, v26

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 404
    .restart local v15       #pivotX:F
    goto :goto_7

    .line 412
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    :cond_16
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v16, v4, v5

    .line 413
    .restart local v16       #pivotY:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getVerticalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    .line 421
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v15, v4, v26

    .line 424
    .restart local v15       #pivotX:F
    :goto_9
    const/4 v11, 0x0

    const/high16 v12, -0x4080

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {v9 .. v16}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    goto :goto_8

    .line 415
    .end local v15           #pivotX:F
    :pswitch_6
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v15, v4, v5

    .line 416
    .restart local v15       #pivotX:F
    goto :goto_9

    .line 418
    .end local v15           #pivotX:F
    :pswitch_7
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getWidth()F

    move-result v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float v5, v5, v26

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float v15, v4, v5

    .line 419
    .restart local v15       #pivotX:F
    goto :goto_9

    .line 428
    :catch_2
    move-exception v28

    .line 429
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    :try_start_3
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    throw v4

    .line 436
    .end local v15           #pivotX:F
    .end local v16           #pivotY:F
    .end local v26           #calcHeight:F
    .end local v27           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v35           #netHeight:F
    .end local v36           #netWidth:F
    :cond_17
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getFixedHeight()F

    move-result v30

    .line 437
    .local v30, fixedHeight:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRight()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingRight()F

    move-result v5

    sub-float v39, v4, v5

    .line 439
    .local v39, rightLimit:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getLeft()F

    move-result v4

    add-float v4, v4, p3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingLeft()F

    move-result v5

    add-float v34, v4, v5

    .line 441
    .local v34, leftLimit:F
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->isNoWrap()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 442
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    .line 456
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1d

    .line 457
    const v4, 0x469c4000

    sub-float v34, v34, v4

    .line 465
    :cond_18
    :goto_a
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getColumn()Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v27

    .line 466
    .restart local v27       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 467
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v4

    sub-float v4, v7, v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v25, v41, v4

    .line 470
    .local v25, bry:F
    const/4 v4, 0x0

    cmpl-float v4, v30, v4

    if-lez v4, :cond_19

    .line 471
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_19

    .line 472
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v41, v4, v5

    .line 473
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getTop()F

    move-result v4

    add-float v4, v4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float v25, v4, v5

    .line 476
    :cond_19
    cmpl-float v4, v41, v25

    if-gtz v4, :cond_1a

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->zeroHeightElement()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_1a
    cmpg-float v4, v34, v39

    if-gez v4, :cond_10

    .line 477
    const v4, 0x3a83126f

    sub-float v4, v25, v4

    move-object/from16 v0, v27

    move/from16 v1, v34

    move/from16 v2, v39

    move/from16 v3, v41

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 478
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1b

    .line 479
    add-float v23, v34, v39

    .line 480
    .local v23, shx:F
    add-float v4, p4, p4

    sub-float/2addr v4, v7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingBottom()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getEffectivePaddingTop()F

    move-result v5

    sub-float v24, v4, v5

    .line 481
    .local v24, shy:F
    const/high16 v19, -0x4080

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, -0x4080

    move-object/from16 v17, p0

    move-object/from16 v18, p5

    invoke-virtual/range {v17 .. v24}, Lcom/itextpdf/text/pdf/PdfPRow;->saveAndRotateCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;FFFFFF)V

    .line 484
    .end local v23           #shx:F
    .end local v24           #shy:F
    :cond_1b
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 488
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_10

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_6

    .line 444
    .end local v25           #bry:F
    .end local v27           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :pswitch_8
    const v4, 0x461c4000

    add-float v39, v39, v4

    .line 445
    const v4, 0x461c4000

    sub-float v34, v34, v4

    .line 446
    goto/16 :goto_a

    .line 448
    :pswitch_9
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1c

    .line 449
    const v4, 0x469c4000

    add-float v39, v39, v4

    goto/16 :goto_a

    .line 452
    :cond_1c
    const v4, 0x469c4000

    sub-float v34, v34, v4

    .line 454
    goto/16 :goto_a

    .line 460
    :cond_1d
    const v4, 0x469c4000

    add-float v39, v39, v4

    goto/16 :goto_a

    .line 485
    .restart local v25       #bry:F
    .restart local v27       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    :catch_3
    move-exception v28

    .line 486
    .restart local v28       #e:Lcom/itextpdf/text/DocumentException;
    :try_start_5
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 488
    .end local v28           #e:Lcom/itextpdf/text/DocumentException;
    :catchall_1
    move-exception v4

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfPCell;->getRotation()I

    move-result v5

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_1e

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->restoreCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    :cond_1e
    throw v4

    .line 318
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 398
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 413
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 442
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
