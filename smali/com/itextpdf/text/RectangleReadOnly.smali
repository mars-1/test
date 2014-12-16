.class public Lcom/itextpdf/text/RectangleReadOnly;
.super Lcom/itextpdf/text/Rectangle;
.source "RectangleReadOnly.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 87
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 95
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v1, p1, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p1, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v3, p1, Lcom/itextpdf/text/Rectangle;->ury:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 96
    invoke-super {p0, p1}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 97
    return-void
.end method

.method private throwReadOnlyError()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "rectanglereadonly.this.rectangle.is.read.only"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 323
    return-void
.end method

.method public disableBorderSide(I)V
    .locals 0
    .parameter "side"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 215
    return-void
.end method

.method public enableBorderSide(I)V
    .locals 0
    .parameter "side"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 205
    return-void
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 151
    return-void
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 162
    return-void
.end method

.method public setBorder(I)V
    .locals 0
    .parameter "border"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 186
    return-void
.end method

.method public setBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColor"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 275
    return-void
.end method

.method public setBorderColorBottom(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorBottom"

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 311
    return-void
.end method

.method public setBorderColorLeft(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorLeft"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 284
    return-void
.end method

.method public setBorderColorRight(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorRight"

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 293
    return-void
.end method

.method public setBorderColorTop(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorTop"

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 302
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 227
    return-void
.end method

.method public setBorderWidthBottom(F)V
    .locals 0
    .parameter "borderWidthBottom"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 263
    return-void
.end method

.method public setBorderWidthLeft(F)V
    .locals 0
    .parameter "borderWidthLeft"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 236
    return-void
.end method

.method public setBorderWidthRight(F)V
    .locals 0
    .parameter "borderWidthRight"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 245
    return-void
.end method

.method public setBorderWidthTop(F)V
    .locals 0
    .parameter "borderWidthTop"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 254
    return-void
.end method

.method public setBottom(F)V
    .locals 0
    .parameter "lly"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 143
    return-void
.end method

.method public setGrayFill(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 171
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .parameter "llx"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 115
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .parameter "urx"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 125
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .parameter "ury"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 134
    return-void
.end method

.method public setUseVariableBorders(Z)V
    .locals 0
    .parameter "useVariableBorders"

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 195
    return-void
.end method

.method public softCloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/itextpdf/text/RectangleReadOnly;->throwReadOnlyError()V

    .line 333
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "RectangleReadOnly: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/RectangleReadOnly;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 342
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/text/RectangleReadOnly;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 344
    const-string/jumbo v1, " (rot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    iget v1, p0, Lcom/itextpdf/text/RectangleReadOnly;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 346
    const-string/jumbo v1, " degrees)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
