.class Lcom/itextpdf/text/pdf/PdfReader$PageRefs;
.super Ljava/lang/Object;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageRefs"
.end annotation


# instance fields
.field private keepPages:Z

.field private lastPageRead:I

.field private pageInh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private refsn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PRIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private refsp:Lcom/itextpdf/text/pdf/IntHashtable;

.field private sizep:I


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "other"
    .parameter "reader"

    .prologue
    .line 3203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3186
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3204
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 3205
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3206
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3207
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3208
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3209
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->duplicatePdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3213
    .end local v0           #k:I
    :cond_0
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/IntHashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3214
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3186
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3192
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 3193
    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3194
    new-instance v1, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3195
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 3196
    .local v0, npages:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3201
    .end local v0           #npages:Lcom/itextpdf/text/pdf/PdfNumber;
    :goto_0
    return-void

    .line 3199
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->readPages()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfReader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3177
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/itextpdf/text/pdf/PdfReader$PageRefs;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3177
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->selectPages(Ljava/util/List;)V

    return-void
.end method

.method private iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 12
    .parameter "rpage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 3393
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3394
    .local v8, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 3396
    .local v6, kidsPR:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_3

    .line 3397
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3398
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3400
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v5, v2

    .line 3401
    check-cast v5, Lcom/itextpdf/text/pdf/PdfName;

    .line 3402
    .local v5, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v8, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    if-nez v9, :cond_0

    .line 3403
    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 3405
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_1
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    if-nez v9, :cond_2

    .line 3406
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v9, 0x4

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/itextpdf/text/PageSize;->LETTER:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v11

    aput v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/itextpdf/text/PageSize;->LETTER:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v11

    aput v11, v9, v10

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    .line 3407
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3409
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 3413
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3414
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pushPageAttributes(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3415
    const/4 v4, 0x0

    .local v4, k:I
    :goto_2
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 3416
    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 3417
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3418
    :goto_3
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 3419
    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    goto :goto_3

    .line 3422
    :cond_4
    check-cast v7, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 3415
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3424
    :cond_5
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->popPageAttributes()V

    goto :goto_1
.end method

.method private popPageAttributes()V
    .locals 2

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3390
    return-void
.end method

.method private pushPageAttributes(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "nodePages"

    .prologue
    .line 3373
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 3374
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3375
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3377
    :cond_0
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3378
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 3379
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_1

    .line 3380
    sget-object v3, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3382
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    return-void
.end method

.method private selectPages(Ljava/util/List;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3464
    .local p1, pagesToKeep:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 3465
    .local v11, pg:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3466
    .local v3, finalPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v14

    .line 3467
    .local v14, psize:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 3468
    .local v12, pi:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3469
    .local v9, p:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v9, v0, :cond_0

    if-gt v9, v14, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v9, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    move-result v17

    if-nez v17, :cond_0

    .line 3470
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3472
    .end local v9           #p:I
    .end local v12           #pi:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3473
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    if-gt v5, v14, :cond_2

    .line 3474
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3475
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 3473
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3478
    .end local v5           #k:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v17, v0

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3479
    .local v10, parent:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3480
    .local v16, topPages:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3481
    .local v7, newPageRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PRIndirectReference;>;"
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 3482
    .local v6, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 3483
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3484
    .restart local v9       #p:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v13

    .line 3485
    .local v13, pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->resetReleasePage()V

    .line 3486
    invoke-virtual {v6, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3487
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3488
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v17

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3482
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3490
    .end local v9           #p:I
    .end local v13           #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    move-result-object v2

    .line 3491
    .local v2, af:Lcom/itextpdf/text/pdf/AcroFields;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    if-lez v17, :cond_6

    const/4 v15, 0x1

    .line 3492
    .local v15, removeFields:Z
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-gt v5, v14, :cond_7

    .line 3493
    invoke-virtual {v11, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v17

    if-nez v17, :cond_5

    .line 3494
    if-eqz v15, :cond_4

    .line 3495
    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeFieldsFromPage(I)Z

    .line 3496
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v13

    .line 3497
    .restart local v13       #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v8

    .line 3498
    .local v8, nref:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->xrefObj:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$400(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->partial:Z
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->access$200(Lcom/itextpdf/text/pdf/PdfReader;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v17, v0

    mul-int/lit8 v18, v8, 0x2

    const/16 v19, -0x1

    aput v19, v17, v18

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->xref:[I

    move-object/from16 v17, v0

    mul-int/lit8 v18, v8, 0x2

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 3492
    .end local v8           #nref:I
    .end local v13           #pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3491
    .end local v15           #removeFields:Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 3505
    .restart local v15       #removeFields:Z
    :cond_7
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v18, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual/range {v16 .. v18}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3506
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3507
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3508
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3509
    return-void
.end method


# virtual methods
.method public getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 3244
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 3245
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v1
.end method

.method public getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3253
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 3254
    .local v0, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 3255
    return-object v0
.end method

.method public getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 5
    .parameter "pageNum"

    .prologue
    const/4 v4, -0x1

    .line 3275
    add-int/lit8 p1, p1, -0x1

    .line 3276
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 3277
    :cond_0
    const/4 v3, 0x0

    .line 3299
    :goto_0
    return-object v3

    .line 3278
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 3279
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    goto :goto_0

    .line 3281
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    .line 3282
    .local v1, n:I
    if-nez v1, :cond_5

    .line 3283
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getSinglePage(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v2

    .line 3284
    .local v2, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->access$300(Lcom/itextpdf/text/pdf/PdfReader;)I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 3285
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3288
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, -0x1

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3289
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 3290
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v3, :cond_3

    .line 3291
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    :cond_3
    move-object v3, v2

    .line 3292
    goto :goto_0

    .line 3287
    :cond_4
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3303
    .end local v1           #n:I
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :catch_0
    move-exception v0

    .line 3304
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 3295
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #n:I
    :cond_5
    :try_start_1
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    if-eq v3, p1, :cond_6

    .line 3296
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3297
    :cond_6
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v3, :cond_7

    .line 3298
    const/4 v3, -0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3299
    :cond_7
    new-instance v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v3, v4, v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getPageOrigRefRelease(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 3263
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 3264
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->releasePage(I)V

    .line 3265
    return-object v0
.end method

.method protected getSinglePage(I)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 14
    .parameter "n"

    .prologue
    .line 3429
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 3430
    .local v0, acc:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v11, v12, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3431
    .local v11, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v2, 0x0

    .line 3433
    .local v2, base:I
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v12, v12

    if-ge v6, v12, :cond_2

    .line 3434
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 3435
    .local v9, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v9, :cond_1

    .line 3436
    sget-object v12, Lcom/itextpdf/text/pdf/PdfReader;->pageInhCandidates:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v12, v12, v6

    invoke-virtual {v0, v12, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3433
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3438
    .end local v9           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfArray;

    .line 3439
    .local v7, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3440
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3441
    .local v10, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 3442
    .local v4, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #getter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->access$300(Lcom/itextpdf/text/pdf/PdfReader;)I

    move-result v8

    .line 3443
    .local v8, last:I
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 3444
    .local v3, count:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v12, v8}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3445
    const/4 v1, 0x1

    .line 3446
    .local v1, acn:I
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    move-object v12, v3

    .line 3447
    check-cast v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 3448
    :cond_3
    add-int v12, v2, v1

    if-ge p1, v12, :cond_5

    .line 3449
    if-nez v3, :cond_4

    .line 3450
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 3451
    return-object v10

    .line 3453
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3454
    move-object v11, v4

    .line 3455
    goto :goto_0

    .line 3457
    :cond_5
    iget-object v12, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3458
    add-int/2addr v2, v1

    .line 3459
    goto :goto_2
.end method

.method insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 7
    .parameter "pageNum"
    .parameter "ref"

    .prologue
    .line 3342
    add-int/lit8 p1, p1, -0x1

    .line 3343
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 3344
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 3345
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3366
    :goto_0
    return-void

    .line 3347
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3350
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    .line 3351
    const/4 v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3352
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 3353
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v5

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 3356
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/IntHashtable;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/IntHashtable;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>(I)V

    .line 3357
    .local v3, refs2:Lcom/itextpdf/text/pdf/IntHashtable;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/IntHashtable;->getEntryIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/IntHashtable$Entry;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/IntHashtable$Entry;

    .line 3359
    .local v0, entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->getKey()I

    move-result v2

    .line 3360
    .local v2, p:I
    if-lt v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .end local v2           #p:I
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable$Entry;->getValue()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_1

    .line 3362
    .end local v0           #entry:Lcom/itextpdf/text/pdf/IntHashtable$Entry;
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 3363
    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_0
.end method

.method keepPages()V
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    if-eqz v0, :cond_1

    .line 3313
    :cond_0
    :goto_0
    return-void

    .line 3311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->keepPages:Z

    .line 3312
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable;->clear()V

    goto :goto_0
.end method

.method reReadPages()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3236
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->readPages()V

    .line 3237
    return-void
.end method

.method readPages()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3232
    :goto_0
    return-void

    .line 3226
    :cond_0
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 3227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    .line 3228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    .line 3229
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->iteratePages(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 3230
    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->pageInh:Ljava/util/ArrayList;

    .line 3231
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->rootPages:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public releasePage(I)V
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v0, :cond_1

    .line 3330
    :cond_0
    :goto_0
    return-void

    .line 3321
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 3322
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3324
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    if-ne p1, v0, :cond_0

    .line 3326
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    .line 3327
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    #setter for: Lcom/itextpdf/text/pdf/PdfReader;->lastXrefPartial:I
    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->access$302(Lcom/itextpdf/text/pdf/PdfReader;I)I

    .line 3328
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial()V

    .line 3329
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->remove(I)I

    goto :goto_0
.end method

.method public resetReleasePage()V
    .locals 1

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsp:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v0, :cond_0

    .line 3339
    :goto_0
    return-void

    .line 3338
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->lastPageRead:I

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3218
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->refsn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3220
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->sizep:I

    goto :goto_0
.end method
