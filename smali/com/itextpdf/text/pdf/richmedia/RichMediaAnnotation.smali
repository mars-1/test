.class public Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;
.super Ljava/lang/Object;
.source "RichMediaAnnotation.java"


# instance fields
.field protected annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

.field protected assetsmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field protected configurations:Lcom/itextpdf/text/pdf/PdfArray;

.field protected richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected views:Lcom/itextpdf/text/pdf/PdfArray;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V
    .locals 3
    .parameter "writer"
    .parameter "rect"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 86
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 88
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIASETTINGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 90
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    .line 92
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    .line 94
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    .line 102
    iput-object p1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 103
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    .line 104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 105
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIACONTENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    .line 107
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    .line 108
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 3
    .parameter "writer"
    .parameter "rect"
    .parameter "richMediaContentReference"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 86
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 88
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIASETTINGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 90
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    .line 92
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    .line 94
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    .line 120
    iput-object p3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 121
    iput-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 122
    iput-object p1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 123
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    .line 124
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addAsset(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "name"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v2, "You can\'t add assets to reused RichMediaContent."

    invoke-direct {v1, v2}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    .line 149
    .local v0, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-object v0
.end method

.method public addAsset(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 2
    .parameter "name"
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "You can\'t add assets to reused RichMediaContent."

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object p2
.end method

.method public addConfiguration(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 2
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "You can\'t add configurations to reused RichMediaContent."

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 190
    return-object p1
.end method

.method public addConfiguration(Lcom/itextpdf/text/pdf/richmedia/RichMediaConfiguration;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v2, "You can\'t add configurations to reused RichMediaContent."

    invoke-direct {v1, v2}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    .line 176
    .local v0, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 177
    return-object v0
.end method

.method public addView(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v2, "You can\'t add views to reused RichMediaContent."

    invoke-direct {v1, v2}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    .line 203
    .local v0, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 204
    return-object v0
.end method

.method public addView(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 2
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "You can\'t add views to reused RichMediaContent."

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 217
    return-object p1
.end method

.method public createAnnotation()Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->assetsmap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 250
    .local v0, assets:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ASSETS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 252
    .end local v0           #assets:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONFIGURATION:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->configurations:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->VIEWS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->views:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContent:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDeveloperExtension;->ADOBE_1_7_EXTENSIONLEVEL3:Lcom/itextpdf/text/pdf/PdfDeveloperExtension;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addDeveloperExtension(Lcom/itextpdf/text/pdf/PdfDeveloperExtension;)V

    .line 261
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIACONTENT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 262
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RICHMEDIASETTINGS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 263
    iget-object v1, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->annot:Lcom/itextpdf/text/pdf/PdfAnnotation;

    return-object v1
.end method

.method public getRichMediaContentReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaContentReference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public setActivation(Lcom/itextpdf/text/pdf/richmedia/RichMediaActivation;)V
    .locals 2
    .parameter "richMediaActivation"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ACTIVATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 229
    return-void
.end method

.method public setDeactivation(Lcom/itextpdf/text/pdf/richmedia/RichMediaDeactivation;)V
    .locals 2
    .parameter "richMediaDeactivation"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/richmedia/RichMediaAnnotation;->richMediaSettings:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEACTIVATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 239
    return-void
.end method
