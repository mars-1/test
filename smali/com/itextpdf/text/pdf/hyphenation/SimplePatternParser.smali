.class public Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;
.super Ljava/lang/Object;
.source "SimplePatternParser.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# static fields
.field static final ELEM_CLASSES:I = 0x1

.field static final ELEM_EXCEPTIONS:I = 0x2

.field static final ELEM_HYPHEN:I = 0x4

.field static final ELEM_PATTERNS:I = 0x3


# instance fields
.field consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

.field currElement:I

.field exception:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hyphenChar:C

.field parser:Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;

.field token:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    .line 87
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    .line 88
    return-void
.end method

.method protected static getInterletterValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pat"

    .prologue
    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v2, il:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, word:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 165
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 165
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 174
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "word"

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v2, pat:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_0

    .line 281
    new-instance v1, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;-><init>()V

    .line 282
    .local v1, pp:Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;
    new-instance v2, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->parse(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1           #pp:Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public addException(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "w"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, e:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "p"
    .parameter "v"

    .prologue
    .line 275
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 182
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, word:Ljava/lang/String;
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    if-eq v1, v5, :cond_0

    .line 203
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 206
    .end local v0           #word:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    if-ne v1, v5, :cond_1

    .line 207
    const/4 v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    .line 211
    :goto_1
    return-void

    .line 186
    .restart local v0       #word:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-interface {v1, v0}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addClass(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    .line 191
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addException(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #word:Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_1

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, ex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v2, res:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 149
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, item:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 151
    check-cast v1, Ljava/lang/String;

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v1       #item:Ljava/lang/Object;
    :cond_1
    move-object v3, v1

    .line 153
    check-cast v3, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 154
    check-cast v1, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    .end local v1           #item:Ljava/lang/Object;
    iget-object v3, v1, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, ex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v6, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 118
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 119
    .local v4, item:Ljava/lang/Object;
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v7, v4

    .line 120
    check-cast v7, Ljava/lang/String;

    .line 121
    .local v7, str:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 124
    .local v1, c:C
    iget-char v8, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    if-eq v1, v8, :cond_0

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 129
    const/4 v8, 0x1

    new-array v2, v8, [C

    .line 130
    .local v2, h:[C
    iget-char v8, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    aput-char v8, v2, v10

    .line 133
    new-instance v8, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, v9, v11, v11}, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    .end local v1           #c:C
    .end local v2           #h:[C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v5           #j:I
    .end local v7           #str:Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 143
    .end local v4           #item:Ljava/lang/Object;
    :cond_4
    return-object v6
.end method

.method public parse(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;)V
    .locals 3
    .parameter "stream"
    .parameter "consumer"

    .prologue
    .line 91
    iput-object p2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    .line 93
    :try_start_0
    invoke-static {p0, p1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 98
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 100
    :goto_1
    throw v1

    .line 99
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
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
    .local p2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 217
    const-string/jumbo v1, "hyphen-char"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-string/jumbo v1, "value"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, hh:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 220
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->hyphenChar:C

    .line 237
    .end local v0           #hh:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 238
    return-void

    .line 222
    :cond_1
    const-string/jumbo v1, "classes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iput v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v1, "patterns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    const/4 v1, 0x3

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0

    .line 226
    :cond_3
    const-string/jumbo v1, "exceptions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    const/4 v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    goto :goto_0

    .line 229
    :cond_4
    const-string/jumbo v1, "hyphen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->token:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    new-instance v5, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;

    const-string/jumbo v1, "pre"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "no"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "post"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v1, v2, v3}, Lcom/itextpdf/text/pdf/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v1, 0x4

    iput v1, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 242
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, tk:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, word:Ljava/lang/String;
    iget v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->currElement:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-interface {v2, v1}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addClass(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    .line 253
    iget-object v3, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v3, v4, v2}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addException(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 255
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->consumer:Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/itextpdf/text/pdf/hyphenation/SimplePatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/itextpdf/text/pdf/hyphenation/PatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
