.class public Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;
.super Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/XfaForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xml2SomTemplate"
.end annotation


# instance fields
.field private dynamicForm:Z

.field private templateLevel:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 2
    .parameter "n"

    .prologue
    const/4 v1, 0x0

    .line 913
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;-><init>()V

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->order:Ljava/util/ArrayList;

    .line 915
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    .line 916
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    .line 917
    iput v1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    .line 918
    iput v1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 919
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->inverseSearch:Ljava/util/HashMap;

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    .line 921
    return-void
.end method

.method private processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V
    .locals 18
    .parameter "n"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 954
    .local p2, ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_0

    .line 955
    new-instance p2, Ljava/util/HashMap;

    .end local p2           #ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    .line 956
    .restart local p2       #ff:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 957
    .local v13, ss:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 958
    .local v9, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v9, :cond_e

    .line 959
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 960
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v12

    .line 961
    .local v12, s:Ljava/lang/String;
    const-string/jumbo v15, "subform"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 962
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string/jumbo v16, "name"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 963
    .local v10, name:Lorg/w3c/dom/Node;
    const-string/jumbo v11, "#subform"

    .line 964
    .local v11, nn:Ljava/lang/String;
    const/4 v3, 0x1

    .line 965
    .local v3, annon:Z
    if-eqz v10, :cond_1

    .line 966
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 967
    const/4 v3, 0x0

    .line 970
    :cond_1
    if-eqz v3, :cond_3

    .line 971
    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    invoke-direct {v4, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 972
    .local v4, i:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->anform:I

    .line 982
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 984
    if-eqz v3, :cond_5

    .line 985
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    .line 988
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    .line 989
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    .line 1026
    .end local v3           #annon:Z
    .end local v4           #i:Ljava/lang/Integer;
    .end local v10           #name:Lorg/w3c/dom/Node;
    .end local v11           #nn:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    goto/16 :goto_0

    .line 975
    .restart local v3       #annon:Z
    .restart local v10       #name:Lorg/w3c/dom/Node;
    .restart local v11       #nn:Ljava/lang/String;
    .restart local v12       #s:Ljava/lang/String;
    :cond_3
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 976
    .restart local v4       #i:Ljava/lang/Integer;
    if-nez v4, :cond_4

    .line 977
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #i:Ljava/lang/Integer;
    const/4 v15, 0x0

    invoke-direct {v4, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 980
    .restart local v4       #i:Ljava/lang/Integer;
    :goto_4
    invoke-virtual {v13, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 979
    :cond_4
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    .end local v4           #i:Ljava/lang/Integer;
    .local v5, i:Ljava/lang/Integer;
    move-object v4, v5

    .end local v5           #i:Ljava/lang/Integer;
    .restart local v4       #i:Ljava/lang/Integer;
    goto :goto_4

    .line 987
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->processTemplate(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    goto :goto_2

    .line 991
    .end local v3           #annon:Z
    .end local v4           #i:Ljava/lang/Integer;
    .end local v10           #name:Lorg/w3c/dom/Node;
    .end local v11           #nn:Ljava/lang/String;
    :cond_6
    const-string/jumbo v15, "field"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string/jumbo v15, "exclGroup"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 992
    :cond_7
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string/jumbo v16, "name"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 993
    .restart local v10       #name:Lorg/w3c/dom/Node;
    if-eqz v10, :cond_2

    .line 994
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->escapeSom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 995
    .restart local v11       #nn:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 996
    .restart local v4       #i:Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 997
    new-instance v4, Ljava/lang/Integer;

    .end local v4           #i:Ljava/lang/Integer;
    const/4 v15, 0x0

    invoke-direct {v4, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 1000
    .restart local v4       #i:Ljava/lang/Integer;
    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->printStack()Ljava/lang/String;

    move-result-object v14

    .line 1003
    .local v14, unstack:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->order:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->inverseSearchAdd(Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->stack:Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/XfaForm$Stack2;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    .line 999
    .end local v14           #unstack:Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    .end local v4           #i:Ljava/lang/Integer;
    .restart local v5       #i:Ljava/lang/Integer;
    move-object v4, v5

    .end local v5           #i:Ljava/lang/Integer;
    .restart local v4       #i:Ljava/lang/Integer;
    goto :goto_5

    .line 1009
    .end local v4           #i:Ljava/lang/Integer;
    .end local v10           #name:Lorg/w3c/dom/Node;
    .end local v11           #nn:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->templateLevel:I

    if-lez v15, :cond_2

    const-string/jumbo v15, "occur"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1010
    const/4 v6, 0x1

    .line 1011
    .local v6, initial:I
    const/4 v8, 0x1

    .line 1012
    .local v8, min:I
    const/4 v7, 0x1

    .line 1013
    .local v7, max:I
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string/jumbo v16, "initial"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1014
    .local v2, a:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_a

    .line 1015
    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 1016
    :cond_a
    :goto_6
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string/jumbo v16, "min"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1017
    if-eqz v2, :cond_b

    .line 1018
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1019
    :cond_b
    :goto_7
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string/jumbo v16, "max"

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1020
    if-eqz v2, :cond_c

    .line 1021
    :try_start_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .line 1022
    :cond_c
    :goto_8
    if-ne v6, v8, :cond_d

    if-eq v8, v7, :cond_2

    .line 1023
    :cond_d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    goto/16 :goto_3

    .line 1028
    .end local v2           #a:Lorg/w3c/dom/Node;
    .end local v6           #initial:I
    .end local v7           #max:I
    .end local v8           #min:I
    .end local v12           #s:Ljava/lang/String;
    :cond_e
    return-void

    .line 1021
    .restart local v2       #a:Lorg/w3c/dom/Node;
    .restart local v6       #initial:I
    .restart local v7       #max:I
    .restart local v8       #min:I
    .restart local v12       #s:Ljava/lang/String;
    :catch_0
    move-exception v15

    goto :goto_8

    .line 1018
    :catch_1
    move-exception v15

    goto :goto_7

    .line 1015
    :catch_2
    move-exception v15

    goto :goto_6
.end method


# virtual methods
.method public getFieldType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 929
    iget-object v4, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->name2Node:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 930
    .local v0, n:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-object v3

    .line 932
    :cond_1
    const-string/jumbo v4, "exclGroup"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    const-string/jumbo v3, "exclGroup"

    goto :goto_0

    .line 934
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 935
    .local v2, ui:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v2, :cond_3

    .line 936
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_5

    const-string/jumbo v4, "ui"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 941
    :cond_3
    if-eqz v2, :cond_0

    .line 943
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 944
    .local v1, type:Lorg/w3c/dom/Node;
    :goto_2
    if-eqz v1, :cond_0

    .line 945
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v6, :cond_6

    const-string/jumbo v4, "extras"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "picture"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 946
    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 939
    .end local v1           #type:Lorg/w3c/dom/Node;
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    .line 948
    .restart local v1       #type:Lorg/w3c/dom/Node;
    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2
.end method

.method public isDynamicForm()Z
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    return v0
.end method

.method public setDynamicForm(Z)V
    .locals 0
    .parameter "dynamicForm"

    .prologue
    .line 1045
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;->dynamicForm:Z

    .line 1046
    return-void
.end method
