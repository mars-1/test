.class public Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;
.super Ljava/lang/Object;
.source "stHelpDoc.java"


# static fields
.field private static instance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc; = null

.field private static final xml_attribute_icon_name:Ljava/lang/String; = "iconname"

.field private static final xml_attribute_name_name:Ljava/lang/String; = "name"

.field private static final xml_attribute_name_namespace:Ljava/lang/String; = "namespace"

.field private static final xml_attribute_name_ref:Ljava/lang/String; = "ref"

.field private static final xml_attribute_name_title:Ljava/lang/String; = "title"

.field private static final xml_node_name_Answer:Ljava/lang/String; = "Answer"

.field private static final xml_node_name_Q2A:Ljava/lang/String; = "Q2A"

.field private static final xml_node_name_Q2As:Ljava/lang/String; = "Q2As"

.field private static final xml_node_name_Question:Ljava/lang/String; = "Question"

.field private static final xml_node_name_fileterSenction:Ljava/lang/String; = "filterSection"

.field private static final xml_node_name_keywords:Ljava/lang/String; = "keywords"

.field private static final xml_node_name_senctions:Ljava/lang/String; = "sections"


# instance fields
.field private namespace:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->instance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->instance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->instance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->instance:Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseKeyword(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "ele"
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, lstkeyword:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    const-string/jumbo v4, "namespace"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->title:Ljava/lang/String;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->namespace:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 63
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 73
    return-void

    .line 64
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 65
    .local v0, childNode:Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 66
    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;-><init>()V

    .line 67
    .local v2, hfi:Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setTitle(Ljava/lang/String;)V

    move-object v4, v0

    .line 68
    check-cast v4, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItem(Ljava/lang/String;)V

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    const-string/jumbo v5, "ref"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItemRef(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2           #hfi:Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseQ2A(Lorg/w3c/dom/Element;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "ele"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 118
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;-><init>()V

    .line 119
    .local v2, hfi:Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 129
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    .line 120
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 121
    .local v0, childNode:Lorg/w3c/dom/Node;
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_1

    .line 122
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Question"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItem(Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Answer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItemRef(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parseSection(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "ele"
    .parameter "dir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, lstSec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    const-string/jumbo v7, "title"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->title:Ljava/lang/String;

    .line 41
    const-string/jumbo v7, "iconname"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, iconName:Ljava/lang/String;
    const-string/jumbo v7, "\\"

    const-string/jumbo v8, "/"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, tmp:Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, iconpath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 47
    .local v1, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 58
    return-void

    .line 48
    :cond_0
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 49
    .local v0, childNode:Lorg/w3c/dom/Node;
    instance-of v7, v0, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_1

    .line 50
    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;-><init>()V

    .line 51
    .local v2, hfi:Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->title:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setTitle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setIconName(Ljava/lang/String;)V

    move-object v7, v0

    .line 53
    check-cast v7, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "title"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItem(Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #childNode:Lorg/w3c/dom/Node;
    const-string/jumbo v8, "ref"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->setItemRef(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v2           #hfi:Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ReadQ2AXml(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "massets"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "/index.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, strFileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 93
    .local v8, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 94
    .local v4, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 95
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 96
    .local v5, doc:Lorg/w3c/dom/Document;
    const-string/jumbo v13, "Q2As"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 97
    .local v10, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 98
    .local v7, fatherNode:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 99
    .local v2, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lt v9, v13, :cond_0

    .line 108
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 114
    .end local v2           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #fatherNode:Lorg/w3c/dom/Node;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #j:I
    .end local v10           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v12           #strFileName:Ljava/lang/String;
    :goto_1
    return-void

    .line 100
    .restart local v2       #childNodes:Lorg/w3c/dom/NodeList;
    .restart local v3       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #fatherNode:Lorg/w3c/dom/Node;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #j:I
    .restart local v10       #nodeList:Lorg/w3c/dom/NodeList;
    .restart local v12       #strFileName:Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 101
    .local v1, childNode:Lorg/w3c/dom/Node;
    instance-of v13, v1, Lorg/w3c/dom/Element;

    if-eqz v13, :cond_1

    .line 102
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, str:Ljava/lang/String;
    const-string/jumbo v13, "Q2A"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 104
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #childNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->parseQ2A(Lorg/w3c/dom/Element;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v11           #str:Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 111
    .end local v2           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v7           #fatherNode:Lorg/w3c/dom/Node;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #j:I
    .end local v10           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v12           #strFileName:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 112
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public ReadXml(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "massets"
    .parameter "path"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, lstKeyWords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    .local p4, lstSections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;>;"
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, "/index.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, strFileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 138
    .local v10, is:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 139
    .local v6, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 140
    .local v5, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 141
    .local v7, doc:Lorg/w3c/dom/Document;
    const-string/jumbo v15, "filterSection"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 142
    .local v12, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 143
    .local v9, fatherNode:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 144
    .local v4, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lt v11, v15, :cond_0

    .line 156
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 161
    .end local v4           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #fatherNode:Lorg/w3c/dom/Node;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #j:I
    .end local v12           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v14           #strFileName:Ljava/lang/String;
    :goto_1
    return-void

    .line 145
    .restart local v4       #childNodes:Lorg/w3c/dom/NodeList;
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7       #doc:Lorg/w3c/dom/Document;
    .restart local v9       #fatherNode:Lorg/w3c/dom/Node;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v11       #j:I
    .restart local v12       #nodeList:Lorg/w3c/dom/NodeList;
    .restart local v14       #strFileName:Ljava/lang/String;
    :cond_0
    invoke-interface {v4, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 146
    .local v3, childNode:Lorg/w3c/dom/Node;
    instance-of v15, v3, Lorg/w3c/dom/Element;

    if-eqz v15, :cond_1

    .line 147
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, str:Ljava/lang/String;
    const-string/jumbo v15, "sections"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 149
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #childNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->parseSection(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 144
    .end local v13           #str:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 150
    .restart local v3       #childNode:Lorg/w3c/dom/Node;
    .restart local v13       #str:Ljava/lang/String;
    :cond_2
    const-string/jumbo v15, "keywords"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 151
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #childNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/cnlaunch/x431pro/activity/help/stHelpDoc;->parseKeyword(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 158
    .end local v4           #childNodes:Lorg/w3c/dom/NodeList;
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #fatherNode:Lorg/w3c/dom/Node;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #j:I
    .end local v12           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v13           #str:Ljava/lang/String;
    .end local v14           #strFileName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 159
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
