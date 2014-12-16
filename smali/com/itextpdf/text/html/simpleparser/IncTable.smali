.class public Lcom/itextpdf/text/html/simpleparser/IncTable;
.super Ljava/lang/Object;
.source "IncTable.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# instance fields
.field private cols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, props:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->props:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    .line 66
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->props:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 67
    return-void
.end method


# virtual methods
.method public addCol(Lcom/itextpdf/text/pdf/PdfPCell;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public addCols(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, ncols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public buildTable()Lcom/itextpdf/text/pdf/PdfPTable;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 95
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    new-instance v5, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v5, v10}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 118
    :cond_0
    return-object v5

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    .local v3, ncol:I
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPCell;

    .line 99
    .local v4, pc:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfPCell;->getColspan()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_0

    .line 101
    .end local v4           #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    :cond_2
    new-instance v5, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 102
    .local v5, table:Lcom/itextpdf/text/pdf/PdfPTable;
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->props:Ljava/util/HashMap;

    const-string/jumbo v8, "width"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 103
    .local v6, width:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 104
    const/high16 v7, 0x42c8

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 113
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 114
    .local v0, col:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfPCell;

    .line 115
    .restart local v4       #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    goto :goto_2

    .line 106
    .end local v0           #col:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pc:Lcom/itextpdf/text/pdf/PdfPCell;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    goto :goto_1

    .line 109
    :cond_5
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 110
    invoke-virtual {v5, v10}, Lcom/itextpdf/text/pdf/PdfPTable;->setLockedWidth(Z)V

    goto :goto_1
.end method

.method public endRow()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->cols:Ljava/util/ArrayList;

    .line 88
    :cond_0
    return-void
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
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPCell;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncTable;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
