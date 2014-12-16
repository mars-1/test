.class public Lcom/itextpdf/text/pdf/AcroFields$Item;
.super Ljava/lang/Object;
.source "AcroFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/AcroFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final WRITE_MERGED:I = 0x1

.field public static final WRITE_VALUE:I = 0x4

.field public static final WRITE_WIDGET:I = 0x2


# instance fields
.field protected merged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field protected page:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tabOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field protected widget_refs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field protected widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    .line 1805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widgets:Ljava/util/ArrayList;

    .line 1812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widget_refs:Ljava/util/ArrayList;

    .line 1820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->merged:Ljava/util/ArrayList;

    .line 1828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->page:Ljava/util/ArrayList;

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->tabOrder:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addMerged(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "mergeDict"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->merged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    return-void
.end method

.method addPage(I)V
    .locals 2
    .parameter "pg"

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->page:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    return-void
.end method

.method addTabOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->tabOrder:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    return-void
.end method

.method addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    return-void
.end method

.method addWidget(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    return-void
.end method

.method addWidgetRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "widgRef"

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widget_refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    return-void
.end method

.method forcePage(II)V
    .locals 2
    .parameter "idx"
    .parameter "pg"

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->page:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1979
    return-void
.end method

.method public getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->merged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getPage(I)Ljava/lang/Integer;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->page:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getTabOrder(I)Ljava/lang/Integer;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->tabOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getWidgetRef(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widget_refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V
    .locals 2
    .parameter "parentFields"
    .parameter "writeFlags"

    .prologue
    .line 1780
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 1781
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1782
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    #calls: Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/AcroFields;->access$000(Lcom/itextpdf/text/pdf/AcroFields;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1785
    .end local v0           #i:I
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 1786
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1787
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    #calls: Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/AcroFields;->access$000(Lcom/itextpdf/text/pdf/AcroFields;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1790
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method remove(I)V
    .locals 1
    .parameter "killIdx"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1856
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1857
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widget_refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1858
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->merged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1859
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->page:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1860
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->tabOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1861
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "writeFlags"

    .prologue
    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, curDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 1754
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->merged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1755
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1756
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1754
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    .end local v1           #i:I
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 1760
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1761
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1762
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1760
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1765
    .end local v1           #i:I
    :cond_1
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_2

    .line 1766
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields$Item;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1767
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1768
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1766
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1771
    .end local v1           #i:I
    :cond_2
    return-void
.end method
