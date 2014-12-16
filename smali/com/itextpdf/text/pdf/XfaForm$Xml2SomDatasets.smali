.class public Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
.super Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xml2SomDatasets"
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;-><init>()V

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    .line 759
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    .line 760
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->anform:I

    .line 762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearch:Ljava/util/HashMap;

    .line 763
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 764
    return-void
.end method

.method private static hasChildren(Lorg/w3c/dom/Node;)Z
    .locals 8
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 811
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string/jumbo v7, "dataNode"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 812
    .local v1, dataNodeN:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    .line 813
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, dataNode:Ljava/lang/String;
    const-string/jumbo v5, "dataGroup"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 828
    .end local v0           #dataNode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 816
    .restart local v0       #dataNode:Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "dataValue"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 817
    goto :goto_0

    .line 819
    .end local v0           #dataNode:Ljava/lang/String;
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 820
    goto :goto_0

    .line 821
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 822
    .local v2, n2:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v2, :cond_4

    .line 823
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v3, :cond_0

    .line 826
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_4
    move v3, v4

    .line 828
    goto :goto_0
.end method

.method private processDatasetsInternal(Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter "n"

    .prologue
    .line 832
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 833
    .local v4, ss:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 834
    .local v2, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v2, :cond_3

    .line 835
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 836
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 838
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 839
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #i:Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 842
    .restart local v0       #i:Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->hasChildren(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 844
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->processDatasetsInternal(Lorg/w3c/dom/Node;)V

    .line 846
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    .line 857
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 841
    .restart local v0       #i:Ljava/lang/Integer;
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    .end local v0           #i:Ljava/lang/Integer;
    .local v1, i:Ljava/lang/Integer;
    move-object v0, v1

    .end local v1           #i:Ljava/lang/Integer;
    .restart local v0       #i:Ljava/lang/Integer;
    goto :goto_1

    .line 849
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->printStack()Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, unstack:Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchAdd(Ljava/lang/String;)V

    .line 853
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v6, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 859
    .end local v0           #i:Ljava/lang/Integer;
    .end local v3           #s:Ljava/lang/String;
    .end local v5           #unstack:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 13
    .parameter "n"
    .parameter "shortName"

    .prologue
    const/4 v12, 0x1

    .line 773
    invoke-static {p2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v9

    .line 774
    .local v9, stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;,"Lcom/itextpdf/text/pdf/XfaForm$Stack2<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 775
    .local v1, doc:Lorg/w3c/dom/Document;
    const/4 v5, 0x0

    .line 776
    .local v5, n2:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 777
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v12, :cond_0

    .line 778
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 779
    :cond_0
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 780
    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 781
    .local v7, part:Ljava/lang/String;
    const/16 v10, 0x5b

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 782
    .local v3, idx:I
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, name:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 784
    const/4 v2, -0x1

    .line 785
    .local v2, found:I
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_1

    .line 786
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v12, :cond_2

    .line 787
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 788
    .local v8, s:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 789
    add-int/lit8 v2, v2, 0x1

    .line 790
    if-ne v2, v3, :cond_2

    .line 795
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    :goto_3
    if-ge v2, v3, :cond_3

    .line 796
    const/4 v10, 0x0

    invoke-interface {v1, v10, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 797
    invoke-interface {p1, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 798
    const-string/jumbo v10, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string/jumbo v11, "dataNode"

    invoke-interface {v1, v10, v11}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 799
    .local v0, attr:Lorg/w3c/dom/Node;
    const-string/jumbo v10, "dataGroup"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 800
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 795
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 785
    .end local v0           #attr:Lorg/w3c/dom/Node;
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_2

    .line 802
    :cond_3
    move-object p1, v5

    .line 779
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 804
    .end local v2           #found:I
    .end local v3           #idx:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #part:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearch:Ljava/util/HashMap;

    invoke-static {v10, v9, p2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchAdd(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/XfaForm$Stack2;Ljava/lang/String;)V

    .line 805
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v10, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object v10, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->order:Ljava/util/ArrayList;

    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    return-object v5
.end method
