.class public Lcom/itextpdf/text/pdf/PdfLayer;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfLayer.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfOCG;


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation
.end field

.field private on:Z

.field private onPanel:Z

.field protected parent:Lcom/itextpdf/text/pdf/PdfLayer;

.field protected ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 70
    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 73
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->title:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "name"
    .parameter "writer"

    .prologue
    const/4 v1, 0x1

    .line 96
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OCG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 65
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 70
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfLayer;->setName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 99
    invoke-virtual {p2, p0}, Lcom/itextpdf/text/pdf/PdfWriter;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 100
    return-void
.end method

.method public static createTitle(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfLayer;
    .locals 3
    .parameter "title"
    .parameter "writer"

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "title.cannot.be.null"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 88
    return-object v0
.end method

.method private getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2

    .prologue
    .line 187
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfLayer;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 188
    .local v0, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 190
    .restart local v0       #usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfLayer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 192
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 111
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "the.layer.1.already.has.a.parent"

    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfLayer;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    iput-object p0, p1, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/text/pdf/PdfLayer;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->parent:Lcom/itextpdf/text/pdf/PdfLayer;

    return-object v0
.end method

.method public getPdfObject()Lcom/itextpdf/text/pdf/PdfObject;
    .locals 0

    .prologue
    .line 167
    return-object p0
.end method

.method public getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    return v0
.end method

.method public isOnPanel()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    return v0
.end method

.method public setCreatorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "creator"
    .parameter "subtype"

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 206
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 207
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 208
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 209
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CREATORINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 210
    return-void
.end method

.method public setExport(Z)V
    .locals 4
    .parameter "export"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 238
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 239
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->EXPORTSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 240
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->EXPORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 241
    return-void

    .line 239
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;Z)V
    .locals 5
    .parameter "lang"
    .parameter "preferred"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 222
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 223
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LANG:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 224
    if-eqz p2, :cond_0

    .line 225
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PREFERRED:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 226
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LANGUAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 227
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 159
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfLayer;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 160
    return-void
.end method

.method public setOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->on:Z

    .line 184
    return-void
.end method

.method public setOnPanel(Z)V
    .locals 0
    .parameter "onPanel"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->onPanel:Z

    .line 338
    return-void
.end method

.method public setPageElement(Ljava/lang/String;)V
    .locals 4
    .parameter "pe"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 300
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 301
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 302
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PAGEELEMENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 303
    return-void
.end method

.method public setPrint(Ljava/lang/String;Z)V
    .locals 4
    .parameter "subtype"
    .parameter "printstate"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 274
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 275
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 276
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRINTSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 277
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 278
    return-void

    .line 276
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method setRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 0
    .parameter "ref"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfLayer;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 152
    return-void
.end method

.method public varargs setUser(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "names"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 313
    .local v6, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 314
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v8, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 315
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 316
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 317
    .local v5, s:Ljava/lang/String;
    new-instance v7, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v8, "UnicodeBig"

    invoke-direct {v7, v5, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 319
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->USER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 320
    return-void
.end method

.method public setView(Z)V
    .locals 4
    .parameter "view"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 287
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 288
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->VIEWSTATE:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ON:Lcom/itextpdf/text/pdf/PdfName;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 289
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 290
    return-void

    .line 288
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0
.end method

.method public setZoom(FF)V
    .locals 5
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 253
    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    cmpg-float v2, p2, v4

    if-gez v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfLayer;->getUsage()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 256
    .local v1, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 257
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    cmpl-float v2, p1, v4

    if-lez v2, :cond_1

    .line 258
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MIN_LOWER_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 259
    :cond_1
    cmpl-float v2, p2, v4

    if-ltz v2, :cond_2

    .line 260
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAX_LOWER_CASE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 261
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ZOOM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method
