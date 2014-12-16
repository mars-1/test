.class public Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PdfInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addProducer()V

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addCreationDate()V

    .line 116
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "author"
    .parameter "title"
    .parameter "subject"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;-><init>()V

    .line 128
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addTitle(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addSubject(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addAuthor(Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method addAuthor(Ljava/lang/String;)V
    .locals 3
    .parameter "author"

    .prologue
    .line 170
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AUTHOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 171
    return-void
.end method

.method addCreationDate()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDate;-><init>()V

    .line 197
    .local v0, date:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CREATIONDATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 198
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MODDATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 199
    return-void
.end method

.method addCreator(Ljava/lang/String;)V
    .locals 3
    .parameter "creator"

    .prologue
    .line 180
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 181
    return-void
.end method

.method addKeywords(Ljava/lang/String;)V
    .locals 3
    .parameter "keywords"

    .prologue
    .line 160
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->KEYWORDS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 161
    return-void
.end method

.method addProducer()V
    .locals 3

    .prologue
    .line 188
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 189
    return-void
.end method

.method addSubject(Ljava/lang/String;)V
    .locals 3
    .parameter "subject"

    .prologue
    .line 150
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBJECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 151
    return-void
.end method

.method addTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 140
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 141
    return-void
.end method

.method addkey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 202
    const-string/jumbo v0, "Producer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CreationDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v2, "UnicodeBig"

    invoke-direct {v1, p2, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method
