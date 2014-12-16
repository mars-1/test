.class public Lcom/itextpdf/text/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final BOX:I = 0xf

.field public static final LEFT:I = 0x4

.field public static final NO_BORDER:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1

.field public static final UNDEFINED:I = -0x1


# instance fields
.field protected backgroundColor:Lcom/itextpdf/text/BaseColor;

.field protected border:I

.field protected borderColor:Lcom/itextpdf/text/BaseColor;

.field protected borderColorBottom:Lcom/itextpdf/text/BaseColor;

.field protected borderColorLeft:Lcom/itextpdf/text/BaseColor;

.field protected borderColorRight:Lcom/itextpdf/text/BaseColor;

.field protected borderColorTop:Lcom/itextpdf/text/BaseColor;

.field protected borderWidth:F

.field protected borderWidthBottom:F

.field protected borderWidthLeft:F

.field protected borderWidthRight:F

.field protected borderWidthTop:F

.field protected llx:F

.field protected lly:F

.field protected rotation:I

.field protected urx:F

.field protected ury:F

.field protected useVariableBorders:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 168
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v3, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 104
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 110
    iput-boolean v3, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 113
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 116
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 119
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 122
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 125
    iput v2, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 128
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 131
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 134
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 137
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 140
    iput-object v1, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 153
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 154
    iput p2, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 155
    iput p3, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 156
    iput p4, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 176
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v1, p1, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p1, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v3, p1, Lcom/itextpdf/text/Rectangle;->ury:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Rectangle;->cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V

    .line 178
    return-void
.end method

.method private getVariableBorderWidth(FI)F
    .locals 1
    .parameter "variableWidthValue"
    .parameter "side"

    .prologue
    .line 571
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 572
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 573
    .end local p1
    :goto_0
    return p1

    .line 572
    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    goto :goto_0

    .line 573
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updateBorderBasedOnWidth(FI)V
    .locals 1
    .parameter "width"
    .parameter "side"

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 587
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 588
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/Rectangle;->enableBorderSide(I)V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    goto :goto_0
.end method


# virtual methods
.method public cloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 798
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 799
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 800
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 801
    iget-boolean v0, p1, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 802
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 803
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 804
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 805
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 806
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 807
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 808
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 809
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 810
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 811
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 812
    return-void
.end method

.method public disableBorderSide(I)V
    .locals 2
    .parameter "side"

    .prologue
    .line 538
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 540
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 541
    return-void
.end method

.method public enableBorderSide(I)V
    .locals 2
    .parameter "side"

    .prologue
    .line 526
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 528
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 529
    return-void
.end method

.method public getBackgroundColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBorder()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    return v0
.end method

.method public getBorderColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getBorderColorBottom()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorLeft()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 697
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorRight()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 717
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderColorTop()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 737
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    goto :goto_0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    return v0
.end method

.method public getBorderWidthBottom()F
    .locals 2

    .prologue
    .line 656
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthLeft()F
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthRight()F
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBorderWidthTop()F
    .locals 2

    .prologue
    .line 637
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Rectangle;->getVariableBorderWidth(FI)F

    move-result v0

    return v0
.end method

.method public getBottom()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    return v0
.end method

.method public getBottom(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 352
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    add-float/2addr v0, p1

    return v0
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
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getGrayFill()F
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    instance-of v0, v0, Lcom/itextpdf/text/pdf/GrayColor;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    check-cast v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    return v0
.end method

.method public getLeft(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 259
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    add-float/2addr v0, p1

    return v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    return v0
.end method

.method public getRight(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 287
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    sub-float/2addr v0, p1

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    return v0
.end method

.method public getTop(F)F
    .locals 1
    .parameter "margin"

    .prologue
    .line 324
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    sub-float/2addr v0, p1

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hasBorder(I)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 481
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasBorders()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 464
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    packed-switch v1, :pswitch_data_0

    .line 469
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :pswitch_0
    return v0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isUseVariableBorders()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    return v0
.end method

.method public normalize()V
    .locals 3

    .prologue
    .line 369
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 370
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 371
    .local v0, a:F
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    iput v1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 372
    iput v0, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 374
    .end local v0           #a:F
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 375
    iget v0, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 376
    .restart local v0       #a:F
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iput v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 377
    iput v0, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 379
    .end local v0           #a:F
    :cond_1
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 191
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rectangle(FF)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 779
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 780
    .local v0, tmp:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    .line 781
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/Rectangle;->setTop(F)V

    .line 782
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    .line 785
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/Rectangle;->setBottom(F)V

    .line 786
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Rectangle;->disableBorderSide(I)V

    .line 788
    :cond_1
    return-object v0
.end method

.method public rotate()Lcom/itextpdf/text/Rectangle;
    .locals 5

    .prologue
    .line 399
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    iget v1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    iget v2, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    iget v3, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    iget v4, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 400
    .local v0, rect:Lcom/itextpdf/text/Rectangle;
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    add-int/lit8 v1, v1, 0x5a

    iput v1, v0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 401
    iget v1, v0, Lcom/itextpdf/text/Rectangle;->rotation:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 402
    return-object v0
.end method

.method public setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 424
    return-void
.end method

.method public setBorder(I)V
    .locals 0
    .parameter "border"

    .prologue
    .line 496
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 497
    return-void
.end method

.method public setBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColor"

    .prologue
    .line 686
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 687
    return-void
.end method

.method public setBorderColorBottom(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorBottom"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 767
    return-void
.end method

.method public setBorderColorLeft(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorLeft"

    .prologue
    .line 706
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 707
    return-void
.end method

.method public setBorderColorRight(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorRight"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 727
    return-void
.end method

.method public setBorderColorTop(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "borderColorTop"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 747
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .parameter "borderWidth"

    .prologue
    .line 560
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 561
    return-void
.end method

.method public setBorderWidthBottom(F)V
    .locals 1
    .parameter "borderWidthBottom"

    .prologue
    .line 665
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 666
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 667
    return-void
.end method

.method public setBorderWidthLeft(F)V
    .locals 1
    .parameter "borderWidthLeft"

    .prologue
    .line 608
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 609
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 610
    return-void
.end method

.method public setBorderWidthRight(F)V
    .locals 1
    .parameter "borderWidthRight"

    .prologue
    .line 627
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 628
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 629
    return-void
.end method

.method public setBorderWidthTop(F)V
    .locals 1
    .parameter "borderWidthTop"

    .prologue
    .line 646
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 647
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Rectangle;->updateBorderBasedOnWidth(FI)V

    .line 648
    return-void
.end method

.method public setBottom(F)V
    .locals 0
    .parameter "lly"

    .prologue
    .line 333
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->lly:F

    .line 334
    return-void
.end method

.method public setGrayFill(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 444
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 445
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .parameter "llx"

    .prologue
    .line 240
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->llx:F

    .line 241
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .parameter "urx"

    .prologue
    .line 268
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->urx:F

    .line 269
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .parameter "ury"

    .prologue
    .line 305
    iput p1, p0, Lcom/itextpdf/text/Rectangle;->ury:F

    .line 306
    return-void
.end method

.method public setUseVariableBorders(Z)V
    .locals 0
    .parameter "useVariableBorders"

    .prologue
    .line 516
    iput-boolean p1, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 517
    return-void
.end method

.method public softCloneNonPositionParameters(Lcom/itextpdf/text/Rectangle;)V
    .locals 3
    .parameter "rect"

    .prologue
    const/high16 v2, -0x4080

    .line 821
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    if-eqz v0, :cond_0

    .line 822
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->rotation:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    .line 823
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    .line 825
    :cond_1
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 826
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->border:I

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->border:I

    .line 827
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    if-eqz v0, :cond_3

    .line 828
    iget-boolean v0, p1, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    iput-boolean v0, p0, Lcom/itextpdf/text/Rectangle;->useVariableBorders:Z

    .line 829
    :cond_3
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 830
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidth:F

    .line 831
    :cond_4
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 832
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthLeft:F

    .line 833
    :cond_5
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    .line 834
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthRight:F

    .line 835
    :cond_6
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 836
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthTop:F

    .line 837
    :cond_7
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 838
    iget v0, p1, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    iput v0, p0, Lcom/itextpdf/text/Rectangle;->borderWidthBottom:F

    .line 839
    :cond_8
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_9

    .line 840
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColor:Lcom/itextpdf/text/BaseColor;

    .line 841
    :cond_9
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_a

    .line 842
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorLeft:Lcom/itextpdf/text/BaseColor;

    .line 843
    :cond_a
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_b

    .line 844
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorRight:Lcom/itextpdf/text/BaseColor;

    .line 845
    :cond_b
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_c

    .line 846
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorTop:Lcom/itextpdf/text/BaseColor;

    .line 847
    :cond_c
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_d

    .line 848
    iget-object v0, p1, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Rectangle;->borderColorBottom:Lcom/itextpdf/text/BaseColor;

    .line 849
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Rectangle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 858
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 859
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 860
    invoke-virtual {p0}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 861
    const-string/jumbo v1, " (rot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    iget v1, p0, Lcom/itextpdf/text/Rectangle;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 863
    const-string/jumbo v1, " degrees)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x1e

    return v0
.end method
