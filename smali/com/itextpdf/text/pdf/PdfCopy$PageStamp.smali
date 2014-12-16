.class public Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;
.super Ljava/lang/Object;
.source "PdfCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageStamp"
.end annotation


# instance fields
.field cstp:Lcom/itextpdf/text/pdf/PdfCopy;

.field over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

.field pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

.field pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfCopy;)V
    .locals 0
    .parameter "reader"
    .parameter "pageN"
    .parameter "cstp"

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 562
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 563
    iput-object p3, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    .line 564
    return-void
.end method

.method private addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 2
    .parameter "ref"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 667
    return-void
.end method

.method private expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->getKids()Ljava/util/ArrayList;

    move-result-object v2

    .line 672
    .local v2, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfFormField;>;"
    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 674
    .local v0, f:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 676
    .end local v0           #f:Lcom/itextpdf/text/pdf/PdfFormField;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 18
    .parameter "annot"

    .prologue
    .line 680
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v1, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 682
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v4, v0

    .line 683
    .local v4, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 753
    .end local v4           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_0
    return-void

    .line 685
    .restart local v4       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v11, v11, Lcom/itextpdf/text/pdf/PdfCopy;->fieldTemplates:Ljava/util/HashSet;

    if-nez v11, :cond_2

    .line 687
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    iput-object v12, v11, Lcom/itextpdf/text/pdf/PdfCopy;->fieldTemplates:Ljava/util/HashSet;

    .line 691
    .end local v4           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 692
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-object/from16 p1, v0

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_3

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getTemplates()Ljava/util/HashSet;

    move-result-object v10

    .line 696
    .local v10, templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    if-eqz v10, :cond_3

    .line 697
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v11, v11, Lcom/itextpdf/text/pdf/PdfCopy;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 699
    .end local v10           #templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    :cond_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v4, v0

    .line 700
    .restart local v4       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v11

    if-nez v11, :cond_4

    .line 701
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 703
    .end local v4           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isAnnotation()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 704
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 705
    .local v7, pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v2, 0x0

    .line 706
    .local v2, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v11

    if-nez v11, :cond_a

    .line 707
    :cond_5
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 708
    .restart local v2       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 712
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_7

    .line 714
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 715
    .local v8, rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_7

    .line 716
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v9

    .line 717
    .local v9, rotation:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 718
    .local v6, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v9, :sswitch_data_0

    .line 744
    .end local v2           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #pageSize:Lcom/itextpdf/text/Rectangle;
    .end local v7           #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .end local v9           #rotation:I
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_8

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setUsed()V

    .line 746
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 691
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 690
    .end local v5           #k:I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 750
    .end local v1           #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    :catch_0
    move-exception v3

    .line 751
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v11, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 711
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    .restart local v2       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v5       #k:I
    .restart local v7       #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    :try_start_1
    move-object v0, v7

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v2, v0

    goto/16 :goto_2

    .line 720
    .restart local v6       #pageSize:Lcom/itextpdf/text/Rectangle;
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .restart local v9       #rotation:I
    :sswitch_0
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v16

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 727
    :sswitch_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 734
    :sswitch_2
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 718
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public alterContents()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-nez v5, :cond_0

    .line 634
    :goto_0
    return-void

    .line 593
    :cond_0
    const/4 v0, 0x0

    .line 594
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v5, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 595
    .local v1, content:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_4

    .line 596
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 597
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 608
    :goto_1
    new-instance v2, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 609
    .local v2, out:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-eqz v5, :cond_1

    .line 610
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 611
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v5, v2}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 612
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 613
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 615
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-eqz v5, :cond_2

    .line 616
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 617
    :cond_2
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 618
    .local v4, stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfCopy;->getCompressionLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 619
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    .line 620
    .local v3, ref1:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 621
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 622
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-eqz v5, :cond_3

    .line 623
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 624
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 625
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 626
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v5, v2}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 627
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 628
    sget-object v5, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 629
    new-instance v4, Lcom/itextpdf/text/pdf/PdfStream;

    .end local v4           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 630
    .restart local v4       #stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfCopy;->getCompressionLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 631
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 633
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 598
    .end local v2           #out:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v3           #ref1:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v4           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_4
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    .line 599
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    goto/16 :goto_1

    .line 600
    :cond_5
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 601
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 602
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 603
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 605
    :cond_6
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 606
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1
.end method

.method applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 5
    .parameter "pageN"
    .parameter "out"

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x20

    .line 637
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    #getter for: Lcom/itextpdf/text/pdf/PdfCopy;->rotateContents:Z
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfCopy;->access$000(Lcom/itextpdf/text/pdf/PdfCopy;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 640
    .local v0, page:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v1

    .line 641
    .local v1, rotation:I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 643
    :sswitch_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE90:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 644
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 645
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 648
    :sswitch_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE180:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 649
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 650
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 651
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 652
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 655
    :sswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE270:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 656
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 657
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 658
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 641
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public getOverContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-nez v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    if-nez v1, :cond_0

    .line 581
    new-instance v1, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 582
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 583
    .local v0, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfCopy;->namePtr:[I

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->setOriginalResources(Lcom/itextpdf/text/pdf/PdfDictionary;[I)V

    .line 585
    .end local v0           #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PageResources;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->over:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    return-object v1
.end method

.method public getUnderContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 4

    .prologue
    .line 567
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    if-nez v1, :cond_0

    .line 569
    new-instance v1, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 570
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 571
    .local v0, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfCopy;->namePtr:[I

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->setOriginalResources(Lcom/itextpdf/text/pdf/PdfDictionary;[I)V

    .line 573
    .end local v0           #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->cstp:Lcom/itextpdf/text/pdf/PdfCopy;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopy$StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PageResources;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    .line 575
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;->under:Lcom/itextpdf/text/pdf/PdfCopy$StampContent;

    return-object v1
.end method
