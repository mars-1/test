.class public Lcom/itextpdf/text/pdf/XfdfReader;
.super Ljava/lang/Object;
.source "XfdfReader.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# instance fields
.field private fieldNames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldValues:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fileSpec:Ljava/lang/String;

.field private foundRoot:Z

.field protected listFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->foundRoot:Z

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    .line 67
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    .line 112
    invoke-static {p0, p1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/XfdfReader;->foundRoot:Z

    .line 66
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    .line 67
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0           #fin:Ljava/io/FileInputStream;
    .local v1, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p0, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 92
    .end local v1           #fin:Ljava/io/FileInputStream;
    .restart local v0       #fin:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v2

    .end local v0           #fin:Ljava/io/FileInputStream;
    .restart local v1       #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1           #fin:Ljava/io/FileInputStream;
    .restart local v0       #fin:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v0           #fin:Ljava/io/FileInputStream;
    .restart local v1       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fin:Ljava/io/FileInputStream;
    .restart local v0       #fin:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "xfdfIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/XfdfReader;-><init>(Ljava/io/InputStream;)V

    .line 103
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 196
    const-string/jumbo v5, "value"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 197
    const-string/jumbo v0, ""

    .line 198
    .local v0, fName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, fVal:Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, old:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 206
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->listFields:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 207
    .local v3, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v3       #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->listFields:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v0           #fName:Ljava/lang/String;
    .end local v1           #fVal:Ljava/lang/String;
    .end local v2           #k:I
    .end local v3           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #old:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 215
    :cond_4
    const-string/jumbo v5, "field"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, field:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    .end local v0           #field:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFileSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fileSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getListValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->listFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fileSpec:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->foundRoot:Z

    if-nez v1, :cond_1

    .line 171
    const-string/jumbo v1, "xfdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "root.element.is.not.xfdf.1"

    invoke-static {v2, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->foundRoot:Z

    .line 177
    :cond_1
    const-string/jumbo v1, "xfdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    :cond_2
    :goto_0
    return-void

    .line 179
    :cond_3
    const-string/jumbo v1, "f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    const-string/jumbo v1, "href"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fileSpec:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_4
    const-string/jumbo v1, "fields"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fields:Ljava/util/HashMap;

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->listFields:Ljava/util/HashMap;

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v1, "field"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    const-string/jumbo v1, "name"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, fName:Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    .end local v0           #fName:Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldNames:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, val:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfdfReader;->fieldValues:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
