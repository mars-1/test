.class public Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;
.super Ljava/lang/Object;
.source "TaggedPdfReaderTool.java"


# instance fields
.field out:Ljava/io/PrintWriter;

.field reader:Lcom/itextpdf/text/pdf/PdfReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToXml(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "reader"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 82
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    .line 84
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 85
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STRUCTTREEROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 87
    .local v1, struct:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 89
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 90
    return-void
.end method

.method public inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 107
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChildArray(Lcom/itextpdf/text/pdf/PdfArray;)V

    goto :goto_0

    .line 105
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChildDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0
.end method

.method public inspectChildArray(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 2
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inspectChildDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 135
    .local v1, s:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 141
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_1

    .line 142
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 143
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 144
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string/jumbo v4, "</"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0           #dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #tag:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 14
    .parameter "tag"
    .parameter "object"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRStream;

    .line 166
    .local v10, stream:Lcom/itextpdf/text/pdf/PRStream;
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/itextpdf/text/pdf/PdfNumber;

    if-eqz v11, :cond_1

    move-object/from16 v5, p2

    .line 167
    check-cast v5, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 168
    .local v5, mcid:Lcom/itextpdf/text/pdf/PdfNumber;
    new-instance v2, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v11

    invoke-direct {v2, v11}, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;-><init>(I)V

    .line 169
    .local v2, filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    new-instance v9, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;-><init>()V

    .line 170
    .local v9, strategy:Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;
    new-instance v4, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/itextpdf/text/pdf/parser/RenderFilter;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-direct {v4, v9, v11}, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;-><init>(Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;[Lcom/itextpdf/text/pdf/parser/RenderFilter;)V

    .line 172
    .local v4, listener:Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;
    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;

    invoke-direct {v8, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;-><init>(Lcom/itextpdf/text/pdf/parser/RenderListener;)V

    .line 174
    .local v8, processor:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 176
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;->getResultantText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .end local v2           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    .end local v4           #listener:Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;
    .end local v5           #mcid:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v8           #processor:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
    .end local v9           #strategy:Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v11, :cond_3

    move-object/from16 v1, p2

    .line 181
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 182
    .local v1, arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    .line 183
    .local v7, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_0

    .line 184
    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v11, v0}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 185
    add-int/lit8 v11, v7, -0x1

    if-ge v3, v11, :cond_2

    .line 186
    iget-object v11, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v11}, Ljava/io/PrintWriter;->println()V

    .line 183
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .end local v1           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #i:I
    .end local v7           #n:I
    :cond_3
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v11, :cond_0

    move-object/from16 v6, p2

    .line 192
    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 193
    .local v6, mcr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    invoke-virtual {p0, p1, v11, v12}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0
.end method
