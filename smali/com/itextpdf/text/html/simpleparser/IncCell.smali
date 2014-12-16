.class public Lcom/itextpdf/text/html/simpleparser/IncCell;
.super Ljava/lang/Object;
.source "IncCell.java"

# interfaces
.implements Lcom/itextpdf/text/TextElementArray;


# instance fields
.field private cell:Lcom/itextpdf/text/pdf/PdfPCell;

.field private chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V
    .locals 5
    .parameter "tag"
    .parameter "props"

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->chunks:Ljava/util/ArrayList;

    .line 66
    new-instance v3, Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v2, 0x0

    check-cast v2, Lcom/itextpdf/text/Phrase;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>(Lcom/itextpdf/text/Phrase;)V

    iput-object v3, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    .line 67
    const-string/jumbo v2, "colspan"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setColspan(I)V

    .line 70
    :cond_0
    const-string/jumbo v2, "rowspan"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setRowspan(I)V

    .line 73
    :cond_1
    const-string/jumbo v2, "align"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "th"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    .line 76
    :cond_2
    if-eqz v1, :cond_3

    .line 77
    const-string/jumbo v2, "center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    .line 86
    :cond_3
    :goto_0
    const-string/jumbo v2, "valign"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setVerticalAlignment(I)V

    .line 88
    if-eqz v1, :cond_4

    .line 89
    const-string/jumbo v2, "top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 90
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setVerticalAlignment(I)V

    .line 94
    :cond_4
    :goto_1
    const-string/jumbo v2, "border"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, border:F
    if-eqz v1, :cond_5

    .line 97
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorderWidth(F)V

    .line 99
    const-string/jumbo v2, "cellpadding"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 102
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setUseDescender(Z)V

    .line 103
    const-string/jumbo v2, "bgcolor"

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-static {v1}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 105
    return-void

    .line 79
    .end local v0           #border:F
    :cond_7
    const-string/jumbo v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    goto :goto_0

    .line 81
    :cond_8
    const-string/jumbo v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 82
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    goto :goto_0

    .line 83
    :cond_9
    const-string/jumbo v2, "justify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setHorizontalAlignment(I)V

    goto/16 :goto_0

    .line 91
    :cond_a
    const-string/jumbo v2, "bottom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfPCell;->setVerticalAlignment(I)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPCell;->addElement(Lcom/itextpdf/text/Element;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public getCell()Lcom/itextpdf/text/pdf/PdfPCell;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->cell:Lcom/itextpdf/text/pdf/PdfPCell;

    return-object v0
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
    .line 113
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/IncCell;->chunks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x1e

    return v0
.end method
