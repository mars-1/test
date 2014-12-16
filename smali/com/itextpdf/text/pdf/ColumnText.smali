.class public Lcom/itextpdf/text/pdf/ColumnText;
.super Ljava/lang/Object;
.source "ColumnText.java"


# static fields
.field public static final AR_COMPOSEDTASHKEEL:I = 0x4

.field public static final AR_LIG:I = 0x8

.field public static final AR_NOVOWEL:I = 0x1

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final GLOBAL_SPACE_CHAR_RATIO:F = 0.0f

.field protected static final LINE_STATUS_NOLINE:I = 0x2

.field protected static final LINE_STATUS_OFFLIMITS:I = 0x1

.field protected static final LINE_STATUS_OK:I = 0x0

.field public static final NO_MORE_COLUMN:I = 0x2

.field public static final NO_MORE_TEXT:I = 0x1

.field public static final START_COLUMN:I


# instance fields
.field private adjustFirstLine:Z

.field protected alignment:I

.field private arabicOptions:I

.field protected bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

.field protected canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected composite:Z

.field protected compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

.field protected compositeElements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected currentLeading:F

.field protected descender:F

.field protected extraParagraphSpace:F

.field private filledWidth:F

.field private firstLineY:F

.field private firstLineYDone:Z

.field protected fixedLeading:F

.field protected followingIndent:F

.field protected indent:F

.field private lastWasNewline:Z

.field protected leftWall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field protected leftX:F

.field protected lineStatus:I

.field private linesWritten:I

.field protected listIdx:I

.field protected maxY:F

.field protected minY:F

.field protected multipliedLeading:F

.field protected rectangularMode:Z

.field protected rectangularWidth:F

.field protected rightIndent:F

.field protected rightWall:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field protected rightX:F

.field protected runDirection:I

.field private spaceCharRatio:F

.field private splittedRow:Z

.field private useAscender:Z

.field protected waitPhrase:Lcom/itextpdf/text/Phrase;

.field protected yLine:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    const/high16 v0, 0x4180

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 168
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 184
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 187
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 190
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 201
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 204
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 207
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 210
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 213
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 215
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 217
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 219
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 225
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 228
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 232
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 238
    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 245
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 250
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 259
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 260
    return-void
.end method

.method private addWaitingPhrase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    if-eqz v2, :cond_1

    .line 340
    new-instance v2, Lcom/itextpdf/text/pdf/BidiLine;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/BidiLine;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 341
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    invoke-virtual {v2}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 342
    .local v0, c:Lcom/itextpdf/text/Chunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/BidiLine;->addChunk(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_0

    .line 344
    .end local v0           #c:Lcom/itextpdf/text/Chunk;
    :cond_0
    iput-object v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 346
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;
    .locals 2
    .parameter "org"

    .prologue
    .line 269
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 270
    .local v0, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/ColumnText;->setACopy(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    .line 271
    return-object v0
.end method

.method public static getWidth(Lcom/itextpdf/text/Phrase;)F
    .locals 2
    .parameter "phrase"

    .prologue
    .line 1047
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->getWidth(Lcom/itextpdf/text/Phrase;II)F

    move-result v0

    return v0
.end method

.method public static getWidth(Lcom/itextpdf/text/Phrase;II)F
    .locals 8
    .parameter "phrase"
    .parameter "runDirection"
    .parameter "arabicOptions"

    .prologue
    const v2, 0x469c4000

    const/4 v1, 0x0

    .line 1029
    new-instance v6, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1030
    .local v6, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {v6, p0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1031
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 1032
    iget-object v0, v6, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIII)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v7

    .line 1033
    .local v7, line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v7, :cond_0

    .line 1036
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v0

    sub-float v1, v2, v0

    goto :goto_0
.end method

.method public static hasMoreText(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 1572
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V
    .locals 8
    .parameter "canvas"
    .parameter "alignment"
    .parameter "phrase"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1128
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V

    .line 1129
    return-void
.end method

.method public static showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V
    .locals 18
    .parameter "canvas"
    .parameter "alignment"
    .parameter "phrase"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "runDirection"
    .parameter "arabicOptions"

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    .line 1065
    const/16 p1, 0x0

    .line 1066
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1067
    new-instance v14, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1068
    .local v14, ct:Lcom/itextpdf/text/pdf/ColumnText;
    const/high16 v17, -0x4080

    .line 1069
    .local v17, lly:F
    const/high16 v9, 0x4000

    .line 1072
    .local v9, ury:F
    packed-switch p1, :pswitch_data_0

    .line 1082
    :pswitch_0
    const v6, -0x3963c000

    .line 1083
    .local v6, llx:F
    const v8, 0x469c4000

    .local v8, urx:F
    move/from16 v16, v6

    .line 1086
    .end local v6           #llx:F
    .local v16, llx:F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-nez v1, :cond_2

    .line 1087
    add-float v6, v16, p3

    .line 1088
    .end local v16           #llx:F
    .restart local v6       #llx:F
    add-float v7, v17, p4

    .line 1089
    .end local v17           #lly:F
    .local v7, lly:F
    add-float v8, v8, p3

    .line 1090
    add-float v9, v9, p4

    .line 1098
    :goto_1
    const/high16 v10, 0x4000

    move-object v4, v14

    move-object/from16 v5, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V

    .line 1099
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 1100
    if-nez p1, :cond_3

    .line 1101
    const/16 p1, 0x2

    .line 1105
    :cond_1
    :goto_2
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1106
    move/from16 v0, p7

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1107
    move/from16 v0, p6

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1109
    :try_start_0
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/ColumnText;->go()I
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1115
    return-void

    .line 1074
    .end local v6           #llx:F
    .end local v7           #lly:F
    .end local v8           #urx:F
    .restart local v17       #lly:F
    :pswitch_1
    const/4 v6, 0x0

    .line 1075
    .restart local v6       #llx:F
    const v8, 0x469c4000

    .restart local v8       #urx:F
    move/from16 v16, v6

    .line 1076
    .end local v6           #llx:F
    .restart local v16       #llx:F
    goto :goto_0

    .line 1078
    .end local v8           #urx:F
    .end local v16           #llx:F
    :pswitch_2
    const v6, -0x3963c000

    .line 1079
    .restart local v6       #llx:F
    const/4 v8, 0x0

    .restart local v8       #urx:F
    move/from16 v16, v6

    .line 1080
    .end local v6           #llx:F
    .restart local v16       #llx:F
    goto :goto_0

    .line 1093
    :cond_2
    move/from16 v0, p5

    float-to-double v4, v0

    const-wide v10, 0x400921fb54442d18L

    mul-double/2addr v4, v10

    const-wide v10, 0x4066800000000000L

    div-double v12, v4, v10

    .line 1094
    .local v12, alpha:D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1095
    .local v2, cos:F
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1096
    .local v3, sin:F
    neg-float v4, v3

    move-object/from16 v1, p0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    move/from16 v6, v16

    .end local v16           #llx:F
    .restart local v6       #llx:F
    move/from16 v7, v17

    .end local v17           #lly:F
    .restart local v7       #lly:F
    goto :goto_1

    .line 1102
    .end local v2           #cos:F
    .end local v3           #sin:F
    .end local v12           #alpha:D
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 1103
    const/16 p1, 0x0

    goto :goto_2

    .line 1111
    :catch_0
    move-exception v15

    .line 1112
    .local v15, e:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v15}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1072
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addElement(Lcom/itextpdf/text/Element;)V
    .locals 9
    .parameter "element"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 405
    if-nez p1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 407
    :cond_0
    instance-of v5, p1, Lcom/itextpdf/text/Image;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 408
    check-cast v2, Lcom/itextpdf/text/Image;

    .line 409
    .local v2, img:Lcom/itextpdf/text/Image;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 410
    .local v3, t:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getWidthPercentage()F

    move-result v4

    .line 411
    .local v4, w:F
    cmpl-float v5, v4, v6

    if-nez v5, :cond_3

    .line 412
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 413
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setLockedWidth(Z)V

    .line 417
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getSpacingAfter()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingAfter(F)V

    .line 418
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getSpacingBefore()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingBefore(F)V

    .line 419
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 427
    :pswitch_0
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    .line 430
    :goto_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v0, v2, v7}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Image;Z)V

    .line 431
    .local v0, c:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 432
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorder()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorder(I)V

    .line 433
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 434
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBorderWidth()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderWidth(F)V

    .line 435
    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfPCell;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 436
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 437
    move-object p1, v3

    .line 439
    .end local v0           #c:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v2           #img:Lcom/itextpdf/text/Image;
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v4           #w:F
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    .line 440
    new-instance v1, Lcom/itextpdf/text/Paragraph;

    check-cast p1, Lcom/itextpdf/text/Chunk;

    .end local p1
    invoke-direct {v1, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Chunk;)V

    .local v1, element:Lcom/itextpdf/text/Element;
    move-object p1, v1

    .line 445
    .end local v1           #element:Lcom/itextpdf/text/Element;
    .restart local p1
    :cond_2
    :goto_3
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_5

    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0x37

    if-eq v5, v6, :cond_5

    .line 446
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "element.not.allowed"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    .restart local v2       #img:Lcom/itextpdf/text/Image;
    .restart local v3       #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v4       #w:F
    :cond_3
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    goto :goto_1

    .line 421
    :pswitch_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 424
    :pswitch_2
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 442
    .end local v2           #img:Lcom/itextpdf/text/Image;
    .end local v3           #t:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v4           #w:F
    :cond_4
    invoke-interface {p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 443
    new-instance v1, Lcom/itextpdf/text/Paragraph;

    check-cast p1, Lcom/itextpdf/text/Phrase;

    .end local p1
    invoke-direct {v1, p1}, Lcom/itextpdf/text/Paragraph;-><init>(Lcom/itextpdf/text/Phrase;)V

    .restart local v1       #element:Lcom/itextpdf/text/Element;
    move-object p1, v1

    .end local v1           #element:Lcom/itextpdf/text/Element;
    .restart local p1
    goto :goto_3

    .line 447
    :cond_5
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-nez v5, :cond_6

    .line 448
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 449
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 450
    iput-object v8, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 451
    iput-object v8, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 453
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public addText(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    .line 390
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v0, Lcom/itextpdf/text/Phrase;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    goto :goto_0
.end method

.method public addText(Lcom/itextpdf/text/Phrase;)V
    .locals 5
    .parameter "phrase"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 358
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_2

    .line 359
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getChunks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 363
    .local v0, element:Lcom/itextpdf/text/Chunk;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .end local v0           #element:Lcom/itextpdf/text/Chunk;
    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/BidiLine;->addChunk(Lcom/itextpdf/text/pdf/PdfChunk;)V

    goto :goto_1
.end method

.method public clearChunks()V
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BidiLine;->clearChunks()V

    .line 937
    :cond_0
    return-void
.end method

.method protected convertColumn([F)Ljava/util/ArrayList;
    .locals 14
    .parameter "cLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 467
    array-length v9, p1

    if-ge v9, v13, :cond_0

    .line 468
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no.valid.column.line.found"

    invoke-static {v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 469
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v2, cc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v9, p1

    add-int/lit8 v9, v9, -0x2

    if-ge v3, v9, :cond_2

    .line 471
    aget v5, p1, v3

    .line 472
    .local v5, x1:F
    add-int/lit8 v9, v3, 0x1

    aget v7, p1, v9

    .line 473
    .local v7, y1:F
    add-int/lit8 v9, v3, 0x2

    aget v6, p1, v9

    .line 474
    .local v6, x2:F
    add-int/lit8 v9, v3, 0x3

    aget v8, p1, v9

    .line 475
    .local v8, y2:F
    cmpl-float v9, v7, v8

    if-nez v9, :cond_1

    .line 470
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 478
    :cond_1
    sub-float v9, v5, v6

    sub-float v10, v7, v8

    div-float v0, v9, v10

    .line 479
    .local v0, a:F
    mul-float v9, v0, v7

    sub-float v1, v5, v9

    .line 480
    .local v1, b:F
    new-array v4, v13, [F

    .line 481
    .local v4, r:[F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v4, v11

    .line 482
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v4, v12

    .line 483
    const/4 v9, 0x2

    aput v0, v4, v9

    .line 484
    const/4 v9, 0x3

    aput v1, v4, v9

    .line 485
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    aget v10, v4, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 487
    iget v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    aget v10, v4, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    goto :goto_1

    .line 489
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v4           #r:[F
    .end local v5           #x1:F
    .end local v6           #x2:F
    .end local v7           #y1:F
    .end local v8           #y2:F
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 490
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no.valid.column.line.found"

    invoke-static {v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 491
    :cond_3
    return-object v2
.end method

.method protected findLimitsOneLine()[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 524
    iget-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsPoint(Ljava/util/ArrayList;)F

    move-result v0

    .line 525
    .local v0, x1:F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-ne v3, v4, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object v2

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsPoint(Ljava/util/ArrayList;)F

    move-result v1

    .line 528
    .local v1, x2:F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v3, v4, :cond_0

    .line 530
    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v5

    goto :goto_0
.end method

.method protected findLimitsPoint(Ljava/util/ArrayList;)F
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[F>;)F"
        }
    .end annotation

    .prologue
    .local p1, wall:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 502
    iput v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 503
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 504
    :cond_0
    iput v6, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 514
    :goto_0
    return v2

    .line 507
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 508
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 509
    .local v1, r:[F
    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    aget v4, v1, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 507
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_3
    aget v2, v1, v7

    iget v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v3, v1, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 513
    .end local v1           #r:[F
    :cond_4
    iput v7, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    goto :goto_0
.end method

.method protected findLimitsTwoLines()[F
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, repeat:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 562
    :cond_1
    :goto_1
    return-object v3

    .line 545
    :cond_2
    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsOneLine()[F

    move-result-object v1

    .line 547
    .local v1, x1:[F
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v6, :cond_1

    .line 549
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 550
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v8, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsOneLine()[F

    move-result-object v2

    .line 554
    .local v2, x2:[F
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-eq v4, v6, :cond_1

    .line 556
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    if-ne v4, v8, :cond_3

    .line 557
    iget v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iget v5, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto :goto_0

    .line 560
    :cond_3
    aget v4, v1, v7

    aget v5, v2, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v2, v7

    aget v5, v1, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 562
    const/4 v3, 0x4

    new-array v3, v3, [F

    aget v4, v1, v7

    aput v4, v3, v7

    aget v4, v1, v6

    aput v4, v3, v6

    aget v4, v2, v7

    aput v4, v3, v8

    const/4 v4, 0x3

    aget v5, v2, v6

    aput v5, v3, v4

    goto :goto_1
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    return v0
.end method

.method public getArabicOptions()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    return v0
.end method

.method public getCanvas()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getCanvases()[Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getDescender()F
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    return v0
.end method

.method public getExtraParagraphSpace()F
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    return v0
.end method

.method public getFilledWidth()F
    .locals 1

    .prologue
    .line 1581
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    return v0
.end method

.method public getFollowingIndent()F
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    return v0
.end method

.method public getIndent()F
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    return v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    return v0
.end method

.method public getLinesWritten()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    return v0
.end method

.method public getMultipliedLeading()F
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    return v0
.end method

.method public getRightIndent()F
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    return v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    return v0
.end method

.method public getSpaceCharRatio()F
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    return v0
.end method

.method public getYLine()F
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    return v0
.end method

.method public go()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v0

    return v0
.end method

.method public go(Z)I
    .locals 23
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/ColumnText;->goComposite(Z)I

    move-result v19

    .line 909
    :cond_0
    :goto_0
    return v19

    .line 791
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->addWaitingPhrase()V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-nez v2, :cond_2

    .line 793
    const/16 v19, 0x1

    goto :goto_0

    .line 794
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 795
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 796
    const/4 v14, 0x0

    .line 797
    .local v14, dirty:Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 798
    .local v12, ratio:F
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/Object;

    .line 799
    .local v11, currentValues:[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 800
    .local v13, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    new-instance v16, Ljava/lang/Float;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    .line 801
    .local v16, lastBaseFactor:Ljava/lang/Float;
    const/4 v2, 0x1

    aput-object v16, v11, v2

    .line 802
    const/16 v18, 0x0

    .line 803
    .local v18, pdf:Lcom/itextpdf/text/pdf/PdfDocument;
    const/4 v10, 0x0

    .line 804
    .local v10, graphics:Lcom/itextpdf/text/pdf/PdfContentByte;
    const/4 v9, 0x0

    .line 805
    .local v9, text:Lcom/itextpdf/text/pdf/PdfContentByte;
    const/high16 v2, 0x7fc0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 806
    const/4 v6, 0x1

    .line 807
    .local v6, localRunDirection:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    if-eqz v2, :cond_3

    .line 808
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 809
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    if-eqz v2, :cond_8

    .line 810
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;

    move-result-object v18

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v9

    .line 816
    :cond_4
    if-nez p1, :cond_5

    .line 817
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_9

    .line 818
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getSpaceCharRatio()F

    move-result v12

    .line 822
    :cond_5
    :goto_1
    const/4 v15, 0x0

    .line 825
    .local v15, firstIndent:F
    const/16 v19, 0x0

    .line 827
    .local v19, status:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 828
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    if-eqz v2, :cond_15

    .line 829
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    add-float/2addr v4, v15

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_b

    .line 830
    const/16 v19, 0x2

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 832
    or-int/lit8 v19, v19, 0x1

    .line 905
    :cond_7
    :goto_4
    if-eqz v14, :cond_0

    .line 906
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_0

    .line 814
    .end local v15           #firstIndent:F
    .end local v19           #status:I
    :cond_8
    if-nez p1, :cond_4

    .line 815
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "columntext.go.with.simulate.eq.eq.false.and.text.eq.eq.null"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    :cond_9
    const v2, 0x3a83126f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_5

    .line 820
    const v12, 0x3a83126f

    goto :goto_1

    .line 827
    .restart local v15       #firstIndent:F
    .restart local v19       #status:I
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    goto :goto_3

    .line 835
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 836
    const/16 v19, 0x1

    .line 837
    goto :goto_4

    .line 839
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIII)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v8

    .line 840
    .local v8, line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v8, :cond_d

    .line 841
    const/16 v19, 0x1

    .line 842
    goto :goto_4

    .line 844
    :cond_d
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getMaxSize()[F

    move-result-object v17

    .line 845
    .local v17, maxSize:[F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->isUseAscender()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 846
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getAscender()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 849
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    .line 850
    :cond_e
    const/16 v19, 0x2

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->restore()V

    goto/16 :goto_4

    .line 848
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    const/4 v4, 0x0

    aget v4, v17, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aget v4, v17, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    goto :goto_5

    .line 854
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 855
    if-nez p1, :cond_11

    if-nez v14, :cond_11

    .line 856
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 857
    const/4 v14, 0x1

    .line 859
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 860
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 861
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 862
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 894
    .end local v17           #maxSize:[F
    .local v3, x1:F
    :cond_13
    if-nez p1, :cond_14

    .line 895
    const/4 v2, 0x0

    aput-object v13, v11, v2

    .line 896
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    :goto_6
    add-float/2addr v2, v3

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->indentLeft()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual {v9, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    move-object/from16 v7, v18

    .line 897
    invoke-virtual/range {v7 .. v12}, Lcom/itextpdf/text/pdf/PdfDocument;->writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)V

    .line 898
    const/4 v2, 0x0

    aget-object v13, v11, v2

    .end local v13           #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    check-cast v13, Lcom/itextpdf/text/pdf/PdfFont;

    .line 900
    .restart local v13       #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    :cond_14
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 901
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    :goto_7
    sub-float v2, v4, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 902
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 903
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfLine;->getDescender()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    goto/16 :goto_2

    .line 865
    .end local v3           #x1:F
    .end local v8           #line:Lcom/itextpdf/text/pdf/PdfLine;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v22, v0

    .line 866
    .local v22, yTemp:F
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/ColumnText;->findLimitsTwoLines()[F

    move-result-object v21

    .line 867
    .local v21, xx:[F
    if-nez v21, :cond_17

    .line 868
    const/16 v19, 0x2

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 870
    or-int/lit8 v19, v19, 0x1

    .line 871
    :cond_16
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_4

    .line 874
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/BidiLine;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 875
    const/16 v19, 0x1

    .line 876
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_4

    .line 879
    :cond_18
    const/4 v2, 0x0

    aget v2, v21, v2

    const/4 v4, 0x2

    aget v4, v21, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 880
    .restart local v3       #x1:F
    const/4 v2, 0x1

    aget v2, v21, v2

    const/4 v4, 0x3

    aget v4, v21, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 881
    .local v20, x2:F
    sub-float v2, v20, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    add-float/2addr v4, v15

    cmpg-float v2, v2, v4

    if-lez v2, :cond_6

    .line 883
    if-nez p1, :cond_19

    if-nez v14, :cond_19

    .line 884
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 885
    const/4 v14, 0x1

    .line 887
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    sub-float v4, v20, v3

    sub-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/text/pdf/BidiLine;->processLine(FFIII)Lcom/itextpdf/text/pdf/PdfLine;

    move-result-object v8

    .line 888
    .restart local v8       #line:Lcom/itextpdf/text/pdf/PdfLine;
    if-nez v8, :cond_13

    .line 889
    const/16 v19, 0x1

    .line 890
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    goto/16 :goto_4

    .end local v20           #x2:F
    .end local v21           #xx:[F
    .end local v22           #yTemp:F
    :cond_1a
    move v2, v15

    .line 896
    goto/16 :goto_6

    .line 901
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method protected goComposite(Z)I
    .locals 53
    .parameter "simulate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    if-nez v4, :cond_0

    .line 1133
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v5, "irregular.columns.are.not.supported.in.composite.mode"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1134
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1135
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    move/from16 v18, v0

    .line 1140
    .local v18, firstPass:Z
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1141
    const/4 v4, 0x1

    .line 1481
    :goto_1
    return v4

    .line 1142
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/Element;

    .line 1143
    .local v17, element:Lcom/itextpdf/text/Element;
    invoke-interface/range {v17 .. v17}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_e

    move-object/from16 v40, v17

    .line 1144
    check-cast v40, Lcom/itextpdf/text/Paragraph;

    .line 1145
    .local v40, para:Lcom/itextpdf/text/Paragraph;
    const/16 v47, 0x0

    .line 1146
    .local v47, status:I
    const/16 v30, 0x0

    .local v30, keep:I
    :goto_2
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ge v0, v4, :cond_a

    .line 1147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v33, v0

    .line 1148
    .local v33, lastY:F
    const/16 v16, 0x0

    .line 1149
    .local v16, createHere:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v4, :cond_4

    .line 1150
    new-instance v4, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    :goto_3
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getAlignment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v5

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v9

    add-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(F)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getExtraParagraphSpace()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setExtraParagraphSpace(F)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setFollowingIndent(F)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRightIndent(F)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v5

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getMultipliedLeading()F

    move-result v9

    invoke-virtual {v4, v5, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1162
    if-nez v18, :cond_3

    .line 1163
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1165
    :cond_3
    const/16 v16, 0x1

    .line 1167
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 1174
    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v16, :cond_7

    if-nez v18, :cond_7

    const/16 v31, 0x1

    .line 1175
    .local v31, keepCandidate:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez p1, :cond_5

    if-eqz v31, :cond_8

    if-nez v30, :cond_8

    :cond_5
    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v47

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1177
    and-int/lit8 v4, v47, 0x1

    if-nez v4, :cond_9

    if-eqz v31, :cond_9

    .line 1178
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1179
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1180
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1151
    .end local v31           #keepCandidate:Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1174
    :cond_7
    const/16 v31, 0x0

    goto :goto_4

    .line 1175
    .restart local v31       #keepCandidate:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 1182
    :cond_9
    if-nez p1, :cond_a

    if-nez v31, :cond_c

    .line 1189
    .end local v16           #createHere:Z
    .end local v31           #keepCandidate:Z
    .end local v33           #lastY:F
    :cond_a
    const/16 v18, 0x0

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1191
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v5, v5, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1193
    and-int/lit8 v4, v47, 0x1

    if-eqz v4, :cond_b

    .line 1194
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1196
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v40 .. v40}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1198
    :cond_b
    and-int/lit8 v4, v47, 0x2

    if-eqz v4, :cond_1

    .line 1199
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1184
    .restart local v16       #createHere:Z
    .restart local v31       #keepCandidate:Z
    .restart local v33       #lastY:F
    :cond_c
    if-nez v30, :cond_d

    .line 1185
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1186
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1146
    :cond_d
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 1202
    .end local v16           #createHere:Z
    .end local v30           #keep:I
    .end local v31           #keepCandidate:Z
    .end local v33           #lastY:F
    .end local v40           #para:Lcom/itextpdf/text/Paragraph;
    .end local v47           #status:I
    :cond_e
    invoke-interface/range {v17 .. v17}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_22

    move-object/from16 v34, v17

    .line 1203
    check-cast v34, Lcom/itextpdf/text/List;

    .line 1204
    .local v34, list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v27

    .line 1205
    .local v27, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    const/16 v26, 0x0

    .line 1206
    .local v26, item:Lcom/itextpdf/text/ListItem;
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v35

    .line 1207
    .local v35, listIndentation:F
    const/4 v15, 0x0

    .line 1208
    .local v15, count:I
    new-instance v46, Ljava/util/Stack;

    invoke-direct/range {v46 .. v46}, Ljava/util/Stack;-><init>()V

    .line 1209
    .local v46, stack:Ljava/util/Stack;,"Ljava/util/Stack<[Ljava/lang/Object;>;"
    const/16 v29, 0x0

    .local v29, k:I
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_f

    .line 1210
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    .line 1211
    .local v38, obj:Ljava/lang/Object;
    move-object/from16 v0, v38

    instance-of v4, v0, Lcom/itextpdf/text/ListItem;

    if-eqz v4, :cond_13

    .line 1212
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    if-ne v15, v4, :cond_10

    move-object/from16 v26, v38

    .line 1213
    check-cast v26, Lcom/itextpdf/text/ListItem;

    .line 1236
    .end local v38           #obj:Ljava/lang/Object;
    :cond_f
    const/16 v47, 0x0

    .line 1237
    .restart local v47       #status:I
    const/16 v30, 0x0

    .restart local v30       #keep:I
    :goto_7
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ge v0, v4, :cond_1c

    .line 1238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v33, v0

    .line 1239
    .restart local v33       #lastY:F
    const/16 v16, 0x0

    .line 1240
    .restart local v16       #createHere:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez v4, :cond_16

    .line 1241
    if-nez v26, :cond_14

    .line 1242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1216
    .end local v16           #createHere:Z
    .end local v30           #keep:I
    .end local v33           #lastY:F
    .end local v47           #status:I
    .restart local v38       #obj:Ljava/lang/Object;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    .line 1226
    :cond_11
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_12

    .line 1227
    invoke-virtual/range {v46 .. v46}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1228
    invoke-virtual/range {v46 .. v46}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Ljava/lang/Object;

    .line 1229
    .local v39, objs:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v34, v39, v4

    .end local v34           #list:Lcom/itextpdf/text/List;
    check-cast v34, Lcom/itextpdf/text/List;

    .line 1230
    .restart local v34       #list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v27

    .line 1231
    const/4 v4, 0x1

    aget-object v4, v39, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 1232
    const/4 v4, 0x2

    aget-object v4, v39, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v35

    .line 1209
    .end local v39           #objs:[Ljava/lang/Object;
    :cond_12
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 1218
    :cond_13
    move-object/from16 v0, v38

    instance-of v4, v0, Lcom/itextpdf/text/List;

    if-eqz v4, :cond_11

    .line 1219
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v34, v4, v5

    const/4 v5, 0x1

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v4, v5

    const/4 v5, 0x2

    new-instance v9, Ljava/lang/Float;

    move/from16 v0, v35

    invoke-direct {v9, v0}, Ljava/lang/Float;-><init>(F)V

    aput-object v9, v4, v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v34, v38

    .line 1220
    check-cast v34, Lcom/itextpdf/text/List;

    .line 1221
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getItems()Ljava/util/ArrayList;

    move-result-object v27

    .line 1222
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v4

    add-float v35, v35, v4

    .line 1223
    const/16 v29, -0x1

    .line 1224
    goto :goto_8

    .line 1246
    .end local v38           #obj:Ljava/lang/Object;
    .restart local v16       #createHere:Z
    .restart local v30       #keep:I
    .restart local v33       #lastY:F
    .restart local v47       #status:I
    :cond_14
    new-instance v4, Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    :goto_9
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->setUseAscender(Z)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getAlignment()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v5

    add-float v5, v5, v35

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getFirstLineIndent()F

    move-result v9

    add-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setIndent(F)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getExtraParagraphSpace()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setExtraParagraphSpace(F)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColumnText;->getIndent()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setFollowingIndent(F)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v5

    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v9

    add-float/2addr v5, v9

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRightIndent(F)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getLeading()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getMultipliedLeading()F

    move-result v9

    invoke-virtual {v4, v5, v9}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(FF)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setArabicOptions(I)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setSpaceCharRatio(F)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    .line 1258
    if-nez v18, :cond_15

    .line 1259
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getSpacingBefore()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1261
    :cond_15
    const/16 v16, 0x1

    .line 1263
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 1267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 1270
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v16, :cond_19

    if-nez v18, :cond_19

    const/16 v31, 0x1

    .line 1271
    .restart local v31       #keepCandidate:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-nez p1, :cond_17

    if-eqz v31, :cond_1a

    if-nez v30, :cond_1a

    :cond_17
    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v47

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1273
    and-int/lit8 v4, v47, 0x1

    if-nez v4, :cond_1b

    if-eqz v31, :cond_1b

    .line 1274
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1275
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1276
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1247
    .end local v31           #keepCandidate:Z
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1270
    :cond_19
    const/16 v31, 0x0

    goto :goto_a

    .line 1271
    .restart local v31       #keepCandidate:Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_b

    .line 1278
    :cond_1b
    if-nez p1, :cond_1c

    if-nez v31, :cond_20

    .line 1285
    .end local v16           #createHere:Z
    .end local v31           #keepCandidate:Z
    .end local v33           #lastY:F
    :cond_1c
    const/16 v18, 0x0

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1287
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v5, v5, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 1288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget-boolean v4, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    if-nez v4, :cond_1e

    .line 1290
    if-nez p1, :cond_1d

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v4, 0x0

    new-instance v5, Lcom/itextpdf/text/Phrase;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v9, v9, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    add-float v6, v9, v35

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    iget v7, v9, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V

    .line 1292
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 1294
    :cond_1e
    and-int/lit8 v4, v47, 0x1

    if-eqz v4, :cond_1f

    .line 1295
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1297
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/ListItem;->getSpacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1299
    :cond_1f
    and-int/lit8 v4, v47, 0x2

    if-eqz v4, :cond_1

    .line 1300
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1280
    .restart local v16       #createHere:Z
    .restart local v31       #keepCandidate:Z
    .restart local v33       #lastY:F
    :cond_20
    if-nez v30, :cond_21

    .line 1281
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 1282
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1237
    :cond_21
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_7

    .line 1302
    .end local v15           #count:I
    .end local v16           #createHere:Z
    .end local v26           #item:Lcom/itextpdf/text/ListItem;
    .end local v27           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Element;>;"
    .end local v29           #k:I
    .end local v30           #keep:I
    .end local v31           #keepCandidate:Z
    .end local v33           #lastY:F
    .end local v34           #list:Lcom/itextpdf/text/List;
    .end local v35           #listIndentation:F
    .end local v46           #stack:Ljava/util/Stack;,"Ljava/util/Stack<[Ljava/lang/Object;>;"
    .end local v47           #status:I
    :cond_22
    invoke-interface/range {v17 .. v17}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_49

    .line 1304
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    .line 1305
    :cond_23
    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_24
    move-object/from16 v49, v17

    .line 1308
    check-cast v49, Lcom/itextpdf/text/pdf/PdfPTable;

    .line 1310
    .local v49, table:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v5

    if-gt v4, v5, :cond_25

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1316
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    move/from16 v52, v0

    .line 1317
    .local v52, yTemp:F
    if-nez v18, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    if-nez v4, :cond_26

    .line 1318
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore()F

    move-result v4

    sub-float v52, v52, v4

    .line 1319
    :cond_26
    move/from16 v7, v52

    .line 1322
    .local v7, yLineWrite:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v52, v4

    if-ltz v4, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v4, v52, v4

    if-lez v4, :cond_28

    .line 1323
    :cond_27
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1326
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 1327
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 1329
    .local v6, x1:F
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isLockedWidth()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1330
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getTotalWidth()F

    move-result v51

    .line 1331
    .local v51, tableWidth:F
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->updateFilledWidth(F)V

    .line 1339
    :goto_c
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v23

    .line 1340
    .local v23, headerRows:I
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getFooterRows()I

    move-result v20

    .line 1341
    .local v20, footerRows:I
    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_29

    .line 1342
    move/from16 v20, v23

    .line 1343
    :cond_29
    sub-int v41, v23, v20

    .line 1344
    .local v41, realHeaderRows:I
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderHeight()F

    move-result v22

    .line 1345
    .local v22, headerHeight:F
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getFooterHeight()F

    move-result v19

    .line 1348
    .local v19, footerHeight:F
    if-nez v18, :cond_2c

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSkipFirstHeader()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v23

    if-gt v4, v0, :cond_2c

    const/16 v45, 0x1

    .line 1349
    .local v45, skipHeader:Z
    :goto_d
    if-nez v45, :cond_2e

    .line 1350
    sub-float v52, v52, v22

    .line 1351
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v52, v4

    if-ltz v4, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    cmpl-float v4, v52, v4

    if-lez v4, :cond_2e

    .line 1352
    :cond_2a
    if-eqz v18, :cond_2d

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1334
    .end local v19           #footerHeight:F
    .end local v20           #footerRows:I
    .end local v22           #headerHeight:F
    .end local v23           #headerRows:I
    .end local v41           #realHeaderRows:I
    .end local v45           #skipHeader:Z
    .end local v51           #tableWidth:F
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getWidthPercentage()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v51, v4, v5

    .line 1335
    .restart local v51       #tableWidth:F
    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    goto :goto_c

    .line 1348
    .restart local v19       #footerHeight:F
    .restart local v20       #footerRows:I
    .restart local v22       #headerHeight:F
    .restart local v23       #headerRows:I
    .restart local v41       #realHeaderRows:I
    :cond_2c
    const/16 v45, 0x0

    goto :goto_d

    .line 1356
    .restart local v45       #skipHeader:Z
    :cond_2d
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1362
    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v23

    if-ge v4, v0, :cond_2f

    .line 1363
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1364
    :cond_2f
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1365
    sub-float v52, v52, v19

    .line 1366
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v29, v0

    .restart local v29       #k:I
    :goto_e
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_31

    .line 1367
    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRowHeight(I)F

    move-result v42

    .line 1368
    .local v42, rowHeight:F
    sub-float v4, v52, v42

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_34

    .line 1372
    .end local v42           #rowHeight:F
    :cond_31
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1373
    add-float v52, v52, v19

    .line 1375
    :cond_32
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_38

    .line 1376
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitRows()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitLate()Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_3a

    if-eqz v18, :cond_3a

    .line 1377
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    if-nez v4, :cond_36

    .line 1378
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    .line 1379
    new-instance v50, Lcom/itextpdf/text/pdf/PdfPTable;

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 1380
    .end local v49           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .local v50, table:Lcom/itextpdf/text/pdf/PdfPTable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1381
    invoke-virtual/range {v50 .. v50}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v43

    .line 1382
    .local v43, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    move/from16 v24, v23

    .local v24, i:I
    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_35

    .line 1383
    const/4 v4, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1382
    add-int/lit8 v24, v24, 0x1

    goto :goto_f

    .line 1370
    .end local v24           #i:I
    .end local v43           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    .end local v50           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v42       #rowHeight:F
    .restart local v49       #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_34
    sub-float v52, v52, v42

    .line 1366
    add-int/lit8 v29, v29, 0x1

    goto :goto_e

    .end local v42           #rowHeight:F
    .end local v49           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v24       #i:I
    .restart local v43       #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    .restart local v50       #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_35
    move-object/from16 v49, v50

    .line 1385
    .end local v24           #i:I
    .end local v43           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    .end local v50           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v49       #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    sub-float v21, v52, v4

    .line 1386
    .local v21, h:F
    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v4

    move-object/from16 v0, v49

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfPRow;->splitRow(Lcom/itextpdf/text/pdf/PdfPTable;IF)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v37

    .line 1387
    .local v37, newRow:Lcom/itextpdf/text/pdf/PdfPRow;
    if-nez v37, :cond_37

    .line 1388
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_38

    .line 1389
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1392
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v52, v0

    .line 1393
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1405
    .end local v21           #h:F
    .end local v37           #newRow:Lcom/itextpdf/text/pdf/PdfPRow;
    :cond_38
    const/16 v18, 0x0

    .line 1407
    if-nez p1, :cond_46

    .line 1409
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getHorizontalAlignment()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1416
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float v4, v4, v51

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    add-float/2addr v6, v4

    .line 1419
    :goto_10
    :pswitch_1
    invoke-static/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->shallowCopy(Lcom/itextpdf/text/pdf/PdfPTable;)Lcom/itextpdf/text/pdf/PdfPTable;

    move-result-object v3

    .line 1420
    .local v3, nt:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v48

    .line 1423
    .local v48, sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    if-nez v45, :cond_3e

    if-lez v41, :cond_3e

    .line 1424
    const/4 v4, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1429
    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1432
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSkipLastFooter()Z

    move-result v4

    if-nez v4, :cond_3f

    const/16 v44, 0x1

    .line 1433
    .local v44, showFooter:Z
    :goto_12
    const/16 v36, 0x0

    .line 1434
    .local v36, newPageFollows:Z
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_39

    .line 1435
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setComplete(Z)V

    .line 1436
    const/16 v44, 0x1

    .line 1437
    const/16 v36, 0x1

    .line 1440
    :cond_39
    const/16 v28, 0x0

    .local v28, j:I
    :goto_13
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_40

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_40

    if-eqz v44, :cond_40

    .line 1441
    add-int v4, v28, v41

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->getRow(I)Lcom/itextpdf/text/pdf/PdfPRow;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    .line 1396
    .end local v3           #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v28           #j:I
    .end local v36           #newPageFollows:Z
    .end local v44           #showFooter:Z
    .end local v48           #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_3a
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitRows()Z

    move-result v4

    if-nez v4, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_3b

    if-eqz v18, :cond_3b

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1398
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    goto/16 :goto_0

    .line 1401
    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_38

    if-nez v18, :cond_38

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitRows()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isSplitLate()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_3c
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getFooterRows()I

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1402
    :cond_3d
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1413
    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    sub-float v4, v4, v51

    add-float/2addr v6, v4

    .line 1414
    goto/16 :goto_10

    .line 1427
    .restart local v3       #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v48       #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_3e
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeaderRows(I)V

    goto/16 :goto_11

    .line 1432
    :cond_3f
    const/16 v44, 0x0

    goto/16 :goto_12

    .line 1444
    .restart local v28       #j:I
    .restart local v36       #newPageFollows:Z
    .restart local v44       #showFooter:Z
    :cond_40
    const/16 v42, 0x0

    .line 1445
    .restart local v42       #rowHeight:F
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .line 1446
    .local v25, index:I
    if-eqz v44, :cond_41

    sub-int v25, v25, v20

    .line 1447
    :cond_41
    move-object/from16 v0, v48

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/itextpdf/text/pdf/PdfPRow;

    .line 1448
    .local v32, last:Lcom/itextpdf/text/pdf/PdfPRow;
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow(Z)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1449
    invoke-virtual/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfPRow;->getMaxHeights()F

    move-result v42

    .line 1450
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    sub-float v4, v52, v4

    add-float v4, v4, v42

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    .line 1451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v52, v0

    .line 1455
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    if-eqz v4, :cond_45

    .line 1456
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIFF[Lcom/itextpdf/text/pdf/PdfContentByte;)F

    .line 1459
    :goto_14
    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow(Z)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1460
    move-object/from16 v0, v32

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPRow;->setMaxHeights(F)V

    .line 1465
    .end local v3           #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v25           #index:I
    .end local v28           #j:I
    .end local v32           #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v36           #newPageFollows:Z
    .end local v42           #rowHeight:F
    .end local v44           #showFooter:Z
    .end local v48           #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_43
    :goto_15
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1466
    if-nez v45, :cond_44

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isComplete()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1467
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    add-float v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1468
    :cond_44
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    move/from16 v0, v29

    if-lt v0, v4, :cond_47

    .line 1469
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingAfter()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    .line 1472
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    goto/16 :goto_0

    .line 1458
    .restart local v3       #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .restart local v25       #index:I
    .restart local v28       #j:I
    .restart local v32       #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .restart local v36       #newPageFollows:Z
    .restart local v42       #rowHeight:F
    .restart local v44       #showFooter:Z
    .restart local v48       #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_45
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {v3 .. v8}, Lcom/itextpdf/text/pdf/PdfPTable;->writeSelectedRows(IIFFLcom/itextpdf/text/pdf/PdfContentByte;)F

    goto :goto_14

    .line 1463
    .end local v3           #nt:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v25           #index:I
    .end local v28           #j:I
    .end local v32           #last:Lcom/itextpdf/text/pdf/PdfPRow;
    .end local v36           #newPageFollows:Z
    .end local v42           #rowHeight:F
    .end local v44           #showFooter:Z
    .end local v48           #sub:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_46
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->isExtendLastRow()Z

    move-result v4

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    const/high16 v5, -0x3180

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    .line 1464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move/from16 v52, v0

    goto :goto_15

    .line 1475
    :cond_47
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    if-eqz v4, :cond_48

    .line 1476
    invoke-virtual/range {v49 .. v49}, Lcom/itextpdf/text/pdf/PdfPTable;->getRows()Ljava/util/ArrayList;

    move-result-object v43

    .line 1477
    .restart local v43       #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    move/from16 v24, v0

    .restart local v24       #i:I
    :goto_16
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_48

    .line 1478
    const/4 v4, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1477
    add-int/lit8 v24, v24, 0x1

    goto :goto_16

    .line 1480
    .end local v24           #i:I
    .end local v43           #rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPRow;>;"
    :cond_48
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 1481
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 1484
    .end local v6           #x1:F
    .end local v7           #yLineWrite:F
    .end local v19           #footerHeight:F
    .end local v20           #footerRows:I
    .end local v22           #headerHeight:F
    .end local v23           #headerRows:I
    .end local v29           #k:I
    .end local v41           #realHeaderRows:I
    .end local v45           #skipHeader:Z
    .end local v49           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    .end local v51           #tableWidth:F
    .end local v52           #yTemp:F
    :cond_49
    invoke-interface/range {v17 .. v17}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_4b

    .line 1485
    if-nez p1, :cond_4a

    move-object/from16 v8, v17

    .line 1486
    check-cast v8, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1487
    .local v8, zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    invoke-interface/range {v8 .. v14}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1489
    .end local v8           #zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1492
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_0

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAdjustFirstLine()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    return v0
.end method

.method public isUseAscender()Z
    .locals 1

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    return v0
.end method

.method public setACopy(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;
    .locals 2
    .parameter "org"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleVars(Lcom/itextpdf/text/pdf/ColumnText;)V

    .line 282
    iget-object v0, p1, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Lcom/itextpdf/text/pdf/BidiLine;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/BidiLine;-><init>(Lcom/itextpdf/text/pdf/BidiLine;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 284
    :cond_0
    return-object p0
.end method

.method public setAdjustFirstLine(Z)V
    .locals 0
    .parameter "adjustFirstLine"

    .prologue
    .line 1625
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 1626
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 701
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 702
    return-void
.end method

.method public setArabicOptions(I)V
    .locals 0
    .parameter "arabicOptions"

    .prologue
    .line 1007
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 1008
    return-void
.end method

.method public setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1515
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1517
    :cond_0
    return-void
.end method

.method public setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "canvases"

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1526
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1527
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvases([Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public setColumns([F[F)V
    .locals 2
    .parameter "leftLine"
    .parameter "rightLine"

    .prologue
    .line 575
    const v0, -0x1da728d9

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 576
    const v0, 0x6258d727

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 577
    const/4 v0, 0x1

    aget v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/ColumnText;->setYLine(F)V

    .line 578
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/ColumnText;->convertColumn([F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 579
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->convertColumn([F)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 580
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 582
    return-void
.end method

.method public setExtraParagraphSpace(F)V
    .locals 0
    .parameter "extraParagraphSpace"

    .prologue
    .line 927
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 928
    return-void
.end method

.method public setFilledWidth(F)V
    .locals 0
    .parameter "filledWidth"

    .prologue
    .line 1591
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 1592
    return-void
.end method

.method public setFollowingIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 738
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 740
    return-void
.end method

.method public setIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 719
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 721
    return-void
.end method

.method public setLeading(F)V
    .locals 1
    .parameter "leading"

    .prologue
    .line 642
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 644
    return-void
.end method

.method public setLeading(FF)V
    .locals 0
    .parameter "fixedLeading"
    .parameter "multipliedLeading"

    .prologue
    .line 655
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 656
    iput p2, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 657
    return-void
.end method

.method public setRightIndent(F)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 757
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 759
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 968
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 969
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 971
    return-void
.end method

.method public setSimpleColumn(FFFF)V
    .locals 3
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 626
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 627
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 628
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 629
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 630
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iget v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 631
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 632
    iput v2, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 633
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 634
    return-void
.end method

.method public setSimpleColumn(FFFFFI)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "leading"
    .parameter "alignment"

    .prologue
    .line 611
    invoke-virtual {p0, p5}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(F)V

    .line 612
    iput p6, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 613
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 614
    return-void
.end method

.method public setSimpleColumn(Lcom/itextpdf/text/Phrase;FFFFFI)V
    .locals 7
    .parameter "phrase"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "leading"
    .parameter "alignment"

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addText(Lcom/itextpdf/text/Phrase;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 597
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFFFI)V

    .line 598
    return-void
.end method

.method protected setSimpleVars(Lcom/itextpdf/text/pdf/ColumnText;)V
    .locals 4
    .parameter "org"

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->maxY:F

    .line 289
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->minY:F

    .line 290
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->alignment:I

    .line 291
    iput-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 292
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftWall:Ljava/util/ArrayList;

    .line 294
    :cond_0
    iput-object v3, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 295
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightWall:Ljava/util/ArrayList;

    .line 297
    :cond_1
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 298
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->currentLeading:F

    .line 299
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->fixedLeading:F

    .line 300
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->multipliedLeading:F

    .line 301
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvas:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 302
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->canvases:[Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 303
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->lineStatus:I

    .line 304
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->indent:F

    .line 305
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->followingIndent:F

    .line 306
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightIndent:F

    .line 307
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->extraParagraphSpace:F

    .line 308
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularWidth:F

    .line 309
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rectangularMode:Z

    .line 310
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 311
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->lastWasNewline:Z

    .line 312
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->linesWritten:I

    .line 313
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->arabicOptions:I

    .line 314
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->runDirection:I

    .line 315
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->descender:F

    .line 316
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 317
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    .line 318
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v1, :cond_3

    .line 319
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 320
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPTable;

    .line 322
    .local v0, table:Lcom/itextpdf/text/pdf/PdfPTable;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(Lcom/itextpdf/text/pdf/PdfPTable;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v0           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_2
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    if-eqz v1, :cond_3

    .line 325
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/ColumnText;->duplicate(Lcom/itextpdf/text/pdf/ColumnText;)Lcom/itextpdf/text/pdf/ColumnText;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 327
    :cond_3
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 328
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineY:F

    .line 329
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->leftX:F

    .line 330
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->rightX:F

    .line 331
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->firstLineYDone:Z

    .line 332
    iget-object v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 333
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 334
    iget v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    iput v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 335
    iget-boolean v1, p1, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->adjustFirstLine:Z

    .line 336
    return-void
.end method

.method public setSpaceCharRatio(F)V
    .locals 0
    .parameter "spaceCharRatio"

    .prologue
    .line 959
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->spaceCharRatio:F

    .line 960
    return-void
.end method

.method public setText(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 374
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->bidiLine:Lcom/itextpdf/text/pdf/BidiLine;

    .line 375
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    .line 376
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeColumn:Lcom/itextpdf/text/pdf/ColumnText;

    .line 377
    iput-object v1, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    .line 378
    iput v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->listIdx:I

    .line 379
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->splittedRow:Z

    .line 380
    iput-object p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->waitPhrase:Lcom/itextpdf/text/Phrase;

    .line 381
    return-void
.end method

.method public setUseAscender(Z)V
    .locals 0
    .parameter "useAscender"

    .prologue
    .line 1565
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->useAscender:Z

    .line 1566
    return-void
.end method

.method public setYLine(F)V
    .locals 0
    .parameter "yLine"

    .prologue
    .line 683
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->yLine:F

    .line 684
    return-void
.end method

.method public updateFilledWidth(F)V
    .locals 1
    .parameter "w"

    .prologue
    .line 1600
    iget v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1601
    iput p1, p0, Lcom/itextpdf/text/pdf/ColumnText;->filledWidth:F

    .line 1602
    :cond_0
    return-void
.end method

.method public zeroHeightElement()Z
    .locals 2

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->composite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/ColumnText;->compositeElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
