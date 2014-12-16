.class Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;
.super Ljava/lang/Object;
.source "VCardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/VCardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VCardReader"
.end annotation


# instance fields
.field private final document:Lorg/w3c/dom/Document;

.field private final vCard:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "vCard"
    .parameter "document"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    .line 110
    iput-object p2, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    .line 111
    return-void
.end method

.method private appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V
    .locals 5
    .parameter "result"
    .parameter "node"

    .prologue
    .line 247
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 248
    .local v0, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 256
    return-void

    .line 249
    :cond_0
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 250
    .local v2, nd:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, nodeValue:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getTagContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tag"

    .prologue
    .line 214
    iget-object v1, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 215
    .local v0, nodes:Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter "node"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->appendText(Ljava/lang/StringBuilder;Lorg/w3c/dom/Node;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isWorkHome(Ljava/lang/String;)Z
    .locals 1
    .parameter "nodeName"

    .prologue
    .line 177
    const-string/jumbo v0, "HOME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WORK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupAddresses()V
    .locals 13

    .prologue
    .line 181
    iget-object v10, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v11, "ADR"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 182
    .local v1, allAddresses:Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_1

    .line 211
    :cond_0
    return-void

    .line 183
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 184
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 186
    .local v0, addressNode:Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .line 187
    .local v8, type:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, code:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v9, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 190
    .local v2, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 202
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_5

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 192
    .local v6, node:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 190
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 193
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, nodeName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->isWorkHome(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 195
    move-object v8, v7

    .line 196
    goto :goto_3

    .line 198
    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {p0, v6}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 203
    .end local v6           #node:Lorg/w3c/dom/Node;
    .end local v7           #nodeName:Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "HOME"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 204
    iget-object v12, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v10, v11}, Lorg/jivesoftware/smackx/packet/VCard;->setAddressFieldHome(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 207
    :cond_6
    iget-object v12, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v10, v11}, Lorg/jivesoftware/smackx/packet/VCard;->setAddressFieldWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setupEmails()V
    .locals 5

    .prologue
    .line 131
    iget-object v3, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "USERID"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 132
    .local v2, nodes:Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 134
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 135
    .local v0, element:Lorg/w3c/dom/Element;
    const-string/jumbo v3, "WORK"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setEmailWork(Ljava/lang/String;)V

    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setEmailHome(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupPhones()V
    .locals 11

    .prologue
    .line 145
    iget-object v9, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "TEL"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 146
    .local v0, allPhones:Lorg/w3c/dom/NodeList;
    if-nez v0, :cond_1

    .line 174
    :cond_0
    return-void

    .line 147
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 148
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 149
    .local v6, nodes:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .line 150
    .local v7, type:Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, code:Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, value:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 166
    if-eqz v1, :cond_2

    if-nez v8, :cond_7

    .line 147
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 154
    .local v4, node:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 152
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_4
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, nodeName:Ljava/lang/String;
    const-string/jumbo v9, "NUMBER"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 157
    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    invoke-direct {p0, v5}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->isWorkHome(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 160
    move-object v7, v5

    .line 161
    goto :goto_3

    .line 163
    :cond_6
    move-object v1, v5

    goto :goto_3

    .line 167
    .end local v4           #node:Lorg/w3c/dom/Node;
    .end local v5           #nodeName:Ljava/lang/String;
    :cond_7
    const-string/jumbo v9, "HOME"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 168
    iget-object v9, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v9, v1, v8}, Lorg/jivesoftware/smackx/packet/VCard;->setPhoneHome(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_8
    iget-object v9, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v9, v1, v8}, Lorg/jivesoftware/smackx/packet/VCard;->setPhoneWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setupSimpleFields()V
    .locals 7

    .prologue
    .line 222
    iget-object v5, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->document:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 223
    .local v0, childNodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 238
    return-void

    .line 224
    :cond_0
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 225
    .local v4, node:Lorg/w3c/dom/Node;
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 226
    check-cast v1, Lorg/w3c/dom/Element;

    .line 228
    .local v1, element:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, field:Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_2

    .line 230
    iget-object v5, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v2, v6}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v1           #element:Lorg/w3c/dom/Element;
    .end local v2           #field:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .restart local v1       #element:Lorg/w3c/dom/Element;
    .restart local v2       #field:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 233
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lorg/w3c/dom/Text;

    if-eqz v5, :cond_1

    .line 234
    iget-object v5, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public initializeFields()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "GIVEN"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setFirstName(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "FAMILY"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setLastName(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "MIDDLE"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setMiddleName(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "BINVAL"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setEncodedImage(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupEmails()V

    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "ORGNAME"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setOrganization(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->vCard:Lorg/jivesoftware/smackx/packet/VCard;

    const-string/jumbo v1, "ORGUNIT"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->getTagContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard;->setOrganizationUnit(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupSimpleFields()V

    .line 126
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupPhones()V

    .line 127
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/VCardProvider$VCardReader;->setupAddresses()V

    .line 128
    return-void
.end method
