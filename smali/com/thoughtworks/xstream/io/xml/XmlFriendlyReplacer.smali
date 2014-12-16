.class public Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
.super Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.source "XmlFriendlyReplacer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "_-"

    const-string/jumbo v1, "__"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dollarReplacement"
    .parameter "underscoreReplacement"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public escapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unescapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
