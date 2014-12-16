.class public Lcom/itextpdf/text/pdf/PdfLine;
.super Ljava/lang/Object;
.source "PdfLine.java"


# instance fields
.field protected alignment:I

.field protected height:F

.field protected isRTL:Z

.field protected left:F

.field protected line:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation
.end field

.field protected listSymbol:Lcom/itextpdf/text/Chunk;

.field protected newlineSplit:Z

.field protected originalWidth:F

.field protected symbolIndent:F

.field protected width:F


# direct methods
.method constructor <init>(FFFIZLjava/util/ArrayList;Z)V
    .locals 2
    .parameter "left"
    .parameter "originalWidth"
    .parameter "remainingWidth"
    .parameter "alignment"
    .parameter "newlineSplit"
    .parameter
    .parameter "isRTL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 84
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 89
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 122
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 123
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    .line 124
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 125
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 126
    iput-object p6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    .line 127
    iput-boolean p5, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 128
    iput-boolean p7, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 129
    return-void
.end method

.method constructor <init>(FFIF)V
    .locals 2
    .parameter "left"
    .parameter "right"
    .parameter "alignment"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 84
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 89
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    .line 103
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 104
    sub-float v0, p2, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 105
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    .line 106
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 107
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method private addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V
    .locals 3
    .parameter "chunk"

    .prologue
    .line 193
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorderWidthTop()F

    move-result v2

    add-float v0, v1, v2

    .line 195
    .local v0, f:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    .line 197
    .end local v0           #f:F
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method


# virtual methods
.method public GetLineLengthUtf32()I
    .locals 4

    .prologue
    .line 371
    const/4 v2, 0x0

    .line 372
    .local v2, total:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 373
    .local v0, element:Lcom/itextpdf/text/pdf/PdfChunk;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->lengthUtf32()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 375
    :cond_0
    return v2
.end method

.method add(Lcom/itextpdf/text/pdf/PdfChunk;)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 8
    .parameter "chunk"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v6

    .line 189
    :goto_0
    return-object v1

    .line 149
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->split(F)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v1

    .line 150
    .local v1, overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isNewlineSplit()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    .line 151
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    const-string/jumbo v4, "TAB"

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 153
    .local v2, tab:[Ljava/lang/Object;
    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 154
    .local v3, tabPosition:F
    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    .local v0, newline:Z
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    sub-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    move-object v1, p1

    .line 156
    goto :goto_0

    .line 150
    .end local v0           #newline:Z
    .end local v2           #tab:[Ljava/lang/Object;
    .end local v3           #tabPosition:F
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    .restart local v0       #newline:Z
    .restart local v2       #tab:[Ljava/lang/Object;
    .restart local v3       #tabPosition:F
    :cond_4
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 159
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->adjustLeft(F)V

    .line 160
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 163
    .end local v0           #newline:Z
    .end local v2           #tab:[Ljava/lang/Object;
    .end local v3           #tabPosition:F
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->length()I

    move-result v4

    if-gtz v4, :cond_6

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 164
    :cond_6
    if-eqz v1, :cond_7

    .line 165
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->trimLastSpace()F

    .line 166
    :cond_7
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 167
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 171
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_b

    .line 172
    move-object p1, v1

    .line 173
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->truncate(F)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v1

    .line 174
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 176
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto/16 :goto_0

    .line 181
    :cond_9
    if-eqz v1, :cond_a

    .line 182
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/PdfLine;->addToLine(Lcom/itextpdf/text/pdf/PdfChunk;)V

    :cond_a
    move-object v1, v6

    .line 183
    goto/16 :goto_0

    .line 187
    :cond_b
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfChunk;->trimLastSpace()F

    move-result v4

    add-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    goto/16 :goto_0
.end method

.method public getAscender()F
    .locals 7

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, ascender:F
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 508
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 509
    .local v1, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 507
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v2

    .line 513
    .local v2, font:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 516
    .end local v1           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v2           #font:Lcom/itextpdf/text/pdf/PdfFont;
    :cond_1
    return v0
.end method

.method public getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 1
    .parameter "idx"

    .prologue
    .line 406
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    goto :goto_0
.end method

.method public getDescender()F
    .locals 7

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, descender:F
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 527
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 528
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 526
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v2

    .line 532
    .local v2, font:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    .line 535
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v2           #font:Lcom/itextpdf/text/pdf/PdfFont;
    :cond_1
    return v1
.end method

.method public getLastStrokeChunk()I
    .locals 3

    .prologue
    .line 391
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 392
    .local v1, lastIdx:I
    :goto_0
    if-ltz v1, :cond_0

    .line 393
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 394
    .local v0, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isStroked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    .end local v0           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    return v1

    .line 392
    .restart local v0       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method getMaxSize()[F
    .locals 6

    .prologue
    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, normal_leading:F
    const v1, -0x39e3c000

    .line 448
    .local v1, image_leading:F
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 450
    .local v0, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 448
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    .line 457
    .end local v0           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    return-object v4
.end method

.method public getOriginalWidth()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->originalWidth:F

    return v0
.end method

.method getSeparatorCount()I
    .locals 5

    .prologue
    .line 471
    const/4 v3, 0x0

    .line 473
    .local v3, s:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .local v1, element:Lcom/itextpdf/text/pdf/PdfChunk;
    move-object v0, v1

    .line 474
    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 475
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    const/4 v3, -0x1

    .line 482
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v1           #element:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v3           #s:I
    :cond_1
    return v3

    .line 478
    .restart local v0       #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v1       #element:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v3       #s:I
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isHorizontalSeparator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getWidthCorrected(FF)F
    .locals 4
    .parameter "charSpacing"
    .parameter "wordSpacing"

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 493
    .local v2, total:F
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 495
    .local v0, ck:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfChunk;->getWidthCorrected(FF)F

    move-result v3

    add-float/2addr v2, v3

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v0           #ck:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    return v2
.end method

.method public hasToBeJustified()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method height()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->height:F

    return v0
.end method

.method indentLeft()F
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 239
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    if-eqz v0, :cond_0

    .line 240
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    packed-switch v0, :pswitch_data_0

    .line 246
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 257
    :goto_0
    return v0

    .line 242
    :pswitch_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 244
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfLine;->getSeparatorCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    packed-switch v0, :pswitch_data_1

    .line 257
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    goto :goto_0

    .line 252
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 254
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 250
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isNewlineSplit()Z
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->newlineSplit:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRTL()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->isRTL:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/itextpdf/text/pdf/PdfChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIndent()F
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->symbolIndent:F

    return v0
.end method

.method public listSymbol()Lcom/itextpdf/text/Chunk;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    return-object v0
.end method

.method numberOfSpaces()I
    .locals 6

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfLine;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 308
    .local v1, length:I
    const/4 v2, 0x0

    .line 309
    .local v2, numberOfSpaces:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 310
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 311
    add-int/lit8 v2, v2, 0x1

    .line 309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return v2
.end method

.method public resetAlignment()V
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->alignment:I

    .line 281
    :cond_0
    return-void
.end method

.method setExtraIndent(F)V
    .locals 1
    .parameter "extra"

    .prologue
    .line 285
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->left:F

    .line 286
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    .line 287
    return-void
.end method

.method public setListItem(Lcom/itextpdf/text/ListItem;)V
    .locals 1
    .parameter "listItem"

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol:Lcom/itextpdf/text/Chunk;

    .line 327
    invoke-virtual {p1}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->symbolIndent:F

    .line 328
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v2, tmp:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLine;->line:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 360
    .local v1, pdfChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 362
    .end local v1           #pdfChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method widthLeft()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfLine;->width:F

    return v0
.end method
