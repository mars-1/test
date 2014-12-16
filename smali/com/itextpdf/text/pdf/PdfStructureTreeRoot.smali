.class public Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfStructureTreeRoot.java"


# instance fields
.field private parentTree:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 66
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->STRUCTTREEROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    .line 67
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 69
    return-void
.end method

.method private nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 7
    .parameter "struc"
    .parameter "reference"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 115
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 116
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 117
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfStructureElement;

    .line 120
    .local v2, e:Lcom/itextpdf/text/pdf/PdfStructureElement;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v0           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v1           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #e:Lcom/itextpdf/text/pdf/PdfStructureElement;
    .end local v3           #k:I
    :cond_0
    if-eqz p2, :cond_1

    .line 125
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method buildTree()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v4, numTree:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/itextpdf/text/pdf/PdfIndirectReference;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 131
    .local v2, i:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 132
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #i:Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumberTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 135
    .local v1, dicTree:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_1

    .line 136
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PARENTTREE:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v6, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 138
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-direct {p0, p0, v5}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->nodeProcess(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 139
    return-void
.end method

.method public getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public mapRole(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "used"
    .parameter "standard"

    .prologue
    .line 78
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROLEMAP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 79
    .local v0, rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 81
    .restart local v0       #rm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ROLEMAP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 84
    return-void
.end method

.method setPageMark(ILcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 3
    .parameter "page"
    .parameter "struc"

    .prologue
    .line 104
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 105
    .local v1, i:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 106
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 108
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->parentTree:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 111
    return-void
.end method
