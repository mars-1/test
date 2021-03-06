.class public Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;
.super Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;
.source "XmlFriendlyMapper.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 35
    return-void
.end method


# virtual methods
.method public mapNameFromXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xmlName"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->unescapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapNameToXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "javaName"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "elementName"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->unescapeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "serialized"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->unescapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->escapeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "memberName"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AbstractXmlFriendlyMapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/XmlFriendlyMapper;->escapeFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
