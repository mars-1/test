.class public Lcom/itextpdf/text/Paragraph;
.super Lcom/itextpdf/text/Phrase;
.source "Paragraph.java"


# static fields
.field private static final serialVersionUID:J = 0x6cf906dc9370a61aL


# instance fields
.field protected alignment:I

.field private extraParagraphSpace:F

.field private firstLineIndent:F

.field protected indentationLeft:F

.field protected indentationRight:F

.field protected keeptogether:Z

.field protected multipliedLeading:F

.field protected spacingAfter:F

.field protected spacingBefore:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/itextpdf/text/Phrase;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 108
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "leading"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 117
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "leading"
    .parameter "chunk"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLcom/itextpdf/text/Chunk;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 137
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 2
    .parameter "leading"
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 168
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "chunk"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 3
    .parameter "phrase"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 189
    instance-of v1, p1, Lcom/itextpdf/text/Paragraph;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/itextpdf/text/Paragraph;

    .line 191
    .local v0, p:Lcom/itextpdf/text/Paragraph;
    iget v1, v0, Lcom/itextpdf/text/Paragraph;->alignment:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 192
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getLeading()F

    move-result v1

    iget v2, v0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    .line 193
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationLeft(F)V

    .line 194
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationRight(F)V

    .line 195
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setFirstLineIndent(F)V

    .line 196
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->spacingAfter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V

    .line 197
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->spacingBefore()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V

    .line 198
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getExtraParagraphSpace()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setExtraParagraphSpace(F)V

    .line 200
    .end local v0           #p:Lcom/itextpdf/text/Paragraph;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 78
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 87
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 96
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 157
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    .line 224
    instance-of v4, p1, Lcom/itextpdf/text/List;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 225
    check-cast v1, Lcom/itextpdf/text/List;

    .line 226
    .local v1, list:Lcom/itextpdf/text/List;
    invoke-virtual {v1}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 227
    iget v3, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/List;->setIndentationRight(F)V

    .line 228
    invoke-super {p0, v1}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v3

    .line 246
    .end local v1           #list:Lcom/itextpdf/text/List;
    :goto_0
    return v3

    .line 230
    :cond_0
    instance-of v4, p1, Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_1

    .line 231
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->addSpecial(Lcom/itextpdf/text/Element;)V

    goto :goto_0

    .line 234
    :cond_1
    instance-of v4, p1, Lcom/itextpdf/text/Paragraph;

    if-eqz v4, :cond_3

    .line 235
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 236
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    .local v0, chunks:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Chunk;

    .line 239
    .local v2, tmp:Lcom/itextpdf/text/Chunk;
    new-instance v4, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v5, "\n"

    invoke-virtual {v2}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-super {p0, v4}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 242
    .end local v2           #tmp:Lcom/itextpdf/text/Chunk;
    :cond_2
    sget-object v4, Lcom/itextpdf/text/Chunk;->NEWLINE:Lcom/itextpdf/text/Chunk;

    invoke-super {p0, v4}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 246
    .end local v0           #chunks:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Chunk;>;"
    :cond_3
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, Lcom/itextpdf/text/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    return v0
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    return v0
.end method

.method public getExtraParagraphSpace()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    return v0
.end method

.method public getFirstLineIndent()F
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    return v0
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    return v0
.end method

.method public getKeepTogether()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    return v0
.end method

.method public getMultipliedLeading()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    return v0
.end method

.method public getSpacingAfter()F
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    return v0
.end method

.method public getSpacingBefore()F
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingBefore:F

    return v0
.end method

.method public getTotalLeading()F
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/itextpdf/text/Paragraph;->font:Lcom/itextpdf/text/Font;

    if-nez v1, :cond_0

    const/high16 v1, 0x4140

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    mul-float v0, v1, v2

    .line 409
    .local v0, m:F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->hasLeading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    .end local v0           #m:F
    :goto_1
    return v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/Paragraph;->font:Lcom/itextpdf/text/Font;

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Font;->getCalculatedLeading(F)F

    move-result v0

    goto :goto_0

    .line 412
    .restart local v0       #m:F
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 257
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 258
    return-void
.end method

.method public setAlignment(Ljava/lang/String;)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 266
    const-string/jumbo v0, "Center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v0, "Right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    goto :goto_0

    .line 274
    :cond_1
    const-string/jumbo v0, "Justify"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    goto :goto_0

    .line 278
    :cond_2
    const-string/jumbo v0, "JustifyAll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    const/16 v0, 0x8

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    goto :goto_0

    .line 282
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    goto :goto_0
.end method

.method public setExtraParagraphSpace(F)V
    .locals 0
    .parameter "extraParagraphSpace"

    .prologue
    .line 472
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 473
    return-void
.end method

.method public setFirstLineIndent(F)V
    .locals 0
    .parameter "firstLineIndent"

    .prologue
    .line 340
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 341
    return-void
.end method

.method public setIndentationLeft(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 323
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    .line 324
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 332
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    .line 333
    return-void
.end method

.method public setKeepTogether(Z)V
    .locals 0
    .parameter "keeptogether"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 368
    return-void
.end method

.method public setLeading(F)V
    .locals 1
    .parameter "fixedLeading"

    .prologue
    .line 290
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 292
    return-void
.end method

.method public setLeading(FF)V
    .locals 0
    .parameter "fixedLeading"
    .parameter "multipliedLeading"

    .prologue
    .line 313
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 314
    iput p2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 315
    return-void
.end method

.method public setMultipliedLeading(F)V
    .locals 1
    .parameter "multipliedLeading"

    .prologue
    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 302
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 303
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 358
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    .line 359
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 349
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->spacingBefore:F

    .line 350
    return-void
.end method

.method public spacingAfter()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    return v0
.end method

.method public spacingBefore()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0xc

    return v0
.end method
