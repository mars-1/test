.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
.super Ljava/lang/Object;
.source "CMapParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$1;,
        Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;,
        Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;
    }
.end annotation


# static fields
.field private static final BEGIN_BASE_FONT_CHAR:Ljava/lang/String; = "beginbfchar"

.field private static final BEGIN_BASE_FONT_RANGE:Ljava/lang/String; = "beginbfrange"

.field private static final BEGIN_CODESPACE_RANGE:Ljava/lang/String; = "begincodespacerange"

.field private static final MARK_END_OF_ARRAY:Ljava/lang/String; = "]"

.field private static final MARK_END_OF_DICTIONARY:Ljava/lang/String; = ">>"


# instance fields
.field private tokenParserByteBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->tokenParserByteBuffer:[B

    .line 67
    return-void
.end method

.method private compare([B[B)I
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    .line 428
    const/4 v2, 0x1

    .line 429
    .local v2, retval:I
    const/4 v0, 0x0

    .line 430
    .local v0, done:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    if-nez v0, :cond_2

    .line 432
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    if-ne v3, v4, :cond_0

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    aget-byte v3, p1, v1

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    aget-byte v4, p2, v1

    add-int/lit16 v4, v4, 0x100

    rem-int/lit16 v4, v4, 0x100

    if-ge v3, v4, :cond_1

    .line 438
    const/4 v0, 0x1

    .line 439
    const/4 v2, -0x1

    goto :goto_1

    .line 443
    :cond_1
    const/4 v0, 0x1

    .line 444
    const/4 v2, 0x1

    goto :goto_1

    .line 447
    :cond_2
    return v2
.end method

.method private createStringFromBytes([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, retval:Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 417
    new-instance v0, Ljava/lang/String;

    .end local v0           #retval:Ljava/lang/String;
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 423
    .restart local v0       #retval:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0           #retval:Ljava/lang/String;
    const-string/jumbo v1, "UTF-16BE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_0
.end method

.method private increment([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 396
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->increment([BI)V

    .line 397
    return-void
.end method

.method private increment([BI)V
    .locals 2
    .parameter "data"
    .parameter "position"

    .prologue
    .line 401
    if-lez p2, :cond_0

    aget-byte v0, p1, p2

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 403
    const/4 v0, 0x0

    aput-byte v0, p1, p2

    .line 404
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->increment([BI)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    aget-byte v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    goto :goto_0
.end method

.method private isWhitespaceOrEOF(I)Z
    .locals 1
    .parameter "aByte"

    .prologue
    .line 390
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    array-length v2, p0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 485
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "usage: java org.pdfbox.cmapparser.CMapParser <CMAP File>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 488
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;-><init>()V

    .line 489
    .local v0, parser:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;
    new-instance v2, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parse(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    move-result-object v1

    .line 490
    .local v1, result:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;
    .locals 23
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v14, 0x0

    .line 184
    .local v14, retval:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    .line 186
    .local v11, nextByte:I
    :goto_0
    const/16 v19, 0x9

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    const/16 v19, 0x20

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v11, v0, :cond_1

    .line 188
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    goto :goto_0

    .line 190
    :cond_1
    sparse-switch v11, :sswitch_data_0

    .line 361
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v4, buffer:Ljava/lang/StringBuffer;
    int-to-char v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    .line 365
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v19

    if-nez v19, :cond_10

    .line 367
    int-to-char v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    goto :goto_1

    .line 196
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    int-to-char v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->readUntilEndOfLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 375
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v14           #retval:Ljava/lang/Object;
    :goto_2
    :sswitch_1
    return-object v14

    .line 204
    .restart local v14       #retval:Ljava/lang/Object;
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v16

    .line 207
    .local v16, stringByte:I
    :goto_3
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    const/16 v19, 0x29

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 209
    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v16

    goto :goto_3

    .line 212
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, retval:Ljava/lang/String;
    goto :goto_2

    .line 217
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v16           #stringByte:I
    .local v14, retval:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v15

    .line 218
    .local v15, secondCloseBrace:I
    const/16 v19, 0x3e

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 220
    const-string/jumbo v14, ">>"

    .local v14, retval:Ljava/lang/String;
    goto :goto_2

    .line 224
    .local v14, retval:Ljava/lang/Object;
    :cond_3
    new-instance v19, Ljava/io/IOException;

    const-string/jumbo v20, "error.expected.the.end.of.a.dictionary"

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 230
    .end local v15           #secondCloseBrace:I
    :sswitch_4
    const-string/jumbo v14, "]"

    .line 231
    .local v14, retval:Ljava/lang/String;
    goto :goto_2

    .line 235
    .local v14, retval:Ljava/lang/Object;
    :sswitch_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v12

    .line 238
    .local v12, nextToken:Ljava/lang/Object;
    :goto_4
    const-string/jumbo v19, "]"

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_4

    .line 240
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    .line 243
    :cond_4
    move-object v14, v9

    .line 244
    .local v14, retval:Ljava/util/List;
    goto :goto_2

    .line 248
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v12           #nextToken:Ljava/lang/Object;
    .local v14, retval:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v17

    .line 249
    .local v17, theNextByte:I
    const/16 v19, 0x3c

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 251
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v13, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v8

    .line 254
    .local v8, key:Ljava/lang/Object;
    :goto_5
    instance-of v0, v8, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const-string/jumbo v19, ">>"

    move-object/from16 v0, v19

    if-eq v8, v0, :cond_5

    .line 256
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v18

    .line 257
    .local v18, value:Ljava/lang/Object;
    check-cast v8, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;

    .end local v8           #key:Ljava/lang/Object;
    #getter for: Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->name:Ljava/lang/String;
    invoke-static {v8}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->access$100(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v8

    .line 259
    .restart local v8       #key:Ljava/lang/Object;
    goto :goto_5

    .line 260
    .end local v18           #value:Ljava/lang/Object;
    :cond_5
    move-object v14, v13

    .line 261
    .local v14, retval:Ljava/util/Map;
    goto/16 :goto_2

    .line 266
    .end local v8           #key:Ljava/lang/Object;
    .end local v13           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v14, retval:Ljava/lang/Object;
    :cond_6
    const/16 v10, 0x10

    .line 267
    .local v10, multiplyer:I
    const/4 v5, -0x1

    .line 268
    .local v5, bufferIndex:I
    :goto_6
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/16 v19, 0x3e

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 270
    const/4 v7, 0x0

    .line 271
    .local v7, intValue:I
    const/16 v19, 0x30

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/16 v19, 0x39

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 273
    add-int/lit8 v7, v17, -0x30

    .line 287
    :goto_7
    mul-int/2addr v7, v10

    .line 288
    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v10, v0, :cond_a

    .line 290
    add-int/lit8 v5, v5, 0x1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->tokenParserByteBuffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-byte v20, v19, v5

    .line 292
    const/4 v10, 0x1

    .line 298
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->tokenParserByteBuffer:[B

    move-object/from16 v19, v0

    aget-byte v20, v19, v5

    add-int v20, v20, v7

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v19, v5

    .line 299
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v17

    .line 300
    goto :goto_6

    .line 275
    :cond_7
    const/16 v19, 0x41

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    const/16 v19, 0x46

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_8

    .line 277
    add-int/lit8 v19, v17, 0xa

    add-int/lit8 v7, v19, -0x41

    goto :goto_7

    .line 279
    :cond_8
    const/16 v19, 0x61

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    const/16 v19, 0x66

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 281
    add-int/lit8 v19, v17, 0xa

    add-int/lit8 v7, v19, -0x61

    goto :goto_7

    .line 285
    :cond_9
    new-instance v19, Ljava/io/IOException;

    const-string/jumbo v20, "error.expected.hex.character.and.not.char.thenextbyte.1"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 296
    :cond_a
    const/16 v10, 0x10

    goto :goto_8

    .line 301
    .end local v7           #intValue:I
    :cond_b
    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 302
    .local v6, finalResult:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->tokenParserByteBuffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    move-object v14, v6

    .line 305
    .local v14, retval:[B
    goto/16 :goto_2

    .line 309
    .end local v5           #bufferIndex:I
    .end local v6           #finalResult:[B
    .end local v10           #multiplyer:I
    .end local v17           #theNextByte:I
    .local v14, retval:Ljava/lang/Object;
    :sswitch_7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v16

    .line 312
    .restart local v16       #stringByte:I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v19

    if-nez v19, :cond_c

    .line 314
    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v16

    goto :goto_9

    .line 317
    :cond_c
    new-instance v14, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;

    .end local v14           #retval:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;-><init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$1;)V

    .line 318
    .local v14, retval:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;
    goto/16 :goto_2

    .line 336
    .end local v4           #buffer:Ljava/lang/StringBuffer;
    .end local v16           #stringByte:I
    .local v14, retval:Ljava/lang/Object;
    :sswitch_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .restart local v4       #buffer:Ljava/lang/StringBuffer;
    int-to-char v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    .line 340
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->isWhitespaceOrEOF(I)Z

    move-result v19

    if-nez v19, :cond_e

    int-to-char v0, v11

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDigit(C)Z

    move-result v19

    if-nez v19, :cond_d

    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    .line 344
    :cond_d
    int-to-char v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual/range {p1 .. p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    goto :goto_a

    .line 347
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 349
    .local v18, value:Ljava/lang/String;
    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    if-ltz v19, :cond_f

    .line 351
    new-instance v14, Ljava/lang/Double;

    .end local v14           #retval:Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .local v14, retval:Ljava/lang/Double;
    goto/16 :goto_2

    .line 355
    .local v14, retval:Ljava/lang/Object;
    :cond_f
    new-instance v14, Ljava/lang/Integer;

    .end local v14           #retval:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 357
    .local v14, retval:Ljava/lang/Integer;
    goto/16 :goto_2

    .line 370
    .end local v18           #value:Ljava/lang/String;
    .local v14, retval:Ljava/lang/Object;
    :cond_10
    new-instance v14, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;

    .end local v14           #retval:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v14, v0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;-><init>(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$1;)V

    .line 372
    .local v14, retval:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;
    goto/16 :goto_2

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x25 -> :sswitch_0
        0x28 -> :sswitch_2
        0x2f -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x3c -> :sswitch_6
        0x3e -> :sswitch_3
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
    .end sparse-switch
.end method

.method private readUntilEndOfLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "is"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 381
    .local v0, nextByte:I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 383
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;
    .locals 25
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v6, Ljava/io/PushbackInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v6, cmapStream:Ljava/io/PushbackInputStream;
    new-instance v17, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;

    invoke-direct/range {v17 .. v17}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;-><init>()V

    .line 82
    .local v17, result:Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;
    const/4 v15, 0x0

    .line 83
    .local v15, previousToken:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 84
    .end local v15           #previousToken:Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v20

    .local v20, token:Ljava/lang/Object;
    if-eqz v20, :cond_a

    .line 86
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v14, v20

    .line 88
    check-cast v14, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;

    .line 89
    .local v14, op:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;
    #getter for: Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->op:Ljava/lang/String;
    invoke-static {v14}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->access$000(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "begincodespacerange"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object v7, v15

    .line 91
    check-cast v7, Ljava/lang/Number;

    .line 92
    .local v7, cosCount:Ljava/lang/Number;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_9

    .line 94
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v19, v23

    check-cast v19, [B

    .line 95
    .local v19, startRange:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v10, v23

    check-cast v10, [B

    .line 96
    .local v10, endRange:[B
    new-instance v16, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;-><init>()V

    .line 97
    .local v16, range:Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->setStart([B)V

    .line 98
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;->setEnd([B)V

    .line 99
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->addCodespaceRange(Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;)V

    .line 92
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 102
    .end local v7           #cosCount:Ljava/lang/Number;
    .end local v10           #endRange:[B
    .end local v12           #j:I
    .end local v16           #range:Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;
    .end local v19           #startRange:[B
    :cond_0
    #getter for: Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->op:Ljava/lang/String;
    invoke-static {v14}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->access$000(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "beginbfchar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object v7, v15

    .line 104
    check-cast v7, Ljava/lang/Number;

    .line 105
    .restart local v7       #cosCount:Ljava/lang/Number;
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_9

    .line 107
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v11, v23

    check-cast v11, [B

    .line 108
    .local v11, inputCode:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v13

    .line 109
    .local v13, nextToken:Ljava/lang/Object;
    instance-of v0, v13, [B

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 111
    check-cast v13, [B

    .end local v13           #nextToken:Ljava/lang/Object;
    move-object v5, v13

    check-cast v5, [B

    .line 112
    .local v5, bytes:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v22

    .line 113
    .local v22, value:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->addMapping([BLjava/lang/String;)V

    .line 105
    .end local v5           #bytes:[B
    .end local v22           #value:Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 115
    .restart local v13       #nextToken:Ljava/lang/Object;
    :cond_1
    instance-of v0, v13, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 117
    check-cast v13, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;

    .end local v13           #nextToken:Ljava/lang/Object;
    #getter for: Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->name:Ljava/lang/String;
    invoke-static {v13}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;->access$100(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$LiteralName;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->addMapping([BLjava/lang/String;)V

    goto :goto_3

    .line 121
    .restart local v13       #nextToken:Ljava/lang/Object;
    :cond_2
    new-instance v23, Ljava/io/IOException;

    const-string/jumbo v24, "error.parsing.cmap.beginbfchar.expected.cosstring.or.cosname.and.not.1"

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 125
    .end local v7           #cosCount:Ljava/lang/Number;
    .end local v11           #inputCode:[B
    .end local v12           #j:I
    .end local v13           #nextToken:Ljava/lang/Object;
    :cond_3
    #getter for: Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->op:Ljava/lang/String;
    invoke-static {v14}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;->access$000(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "beginbfrange"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object v7, v15

    .line 127
    check-cast v7, Ljava/lang/Number;

    .line 129
    .restart local v7       #cosCount:Ljava/lang/Number;
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ge v12, v0, :cond_9

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v18, v23

    check-cast v18, [B

    .line 132
    .local v18, startCode:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [B

    move-object/from16 v9, v23

    check-cast v9, [B

    .line 133
    .local v9, endCode:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->parseNextToken(Ljava/io/PushbackInputStream;)Ljava/lang/Object;

    move-result-object v13

    .line 134
    .restart local v13       #nextToken:Ljava/lang/Object;
    const/4 v3, 0x0

    .line 135
    .local v3, array:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/16 v21, 0x0

    .line 136
    .local v21, tokenBytes:[B
    instance-of v0, v13, Ljava/util/List;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object v3, v13

    .line 138
    check-cast v3, Ljava/util/List;

    .line 139
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #tokenBytes:[B
    check-cast v21, [B

    .line 146
    .end local v13           #nextToken:Ljava/lang/Object;
    .restart local v21       #tokenBytes:[B
    :goto_5
    const/16 v22, 0x0

    .line 148
    .restart local v22       #value:Ljava/lang/String;
    const/4 v4, 0x0

    .line 149
    .local v4, arrayIndex:I
    const/4 v8, 0x0

    .line 150
    .local v8, done:Z
    :cond_4
    :goto_6
    if-nez v8, :cond_8

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->compare([B[B)I

    move-result v23

    if-ltz v23, :cond_5

    .line 154
    const/4 v8, 0x1

    .line 156
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v22

    .line 157
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->addMapping([BLjava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->increment([B)V

    .line 160
    if-nez v3, :cond_7

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser;->increment([B)V

    goto :goto_6

    .line 143
    .end local v4           #arrayIndex:I
    .end local v8           #done:Z
    .end local v22           #value:Ljava/lang/String;
    .restart local v13       #nextToken:Ljava/lang/Object;
    :cond_6
    check-cast v13, [B

    .end local v13           #nextToken:Ljava/lang/Object;
    move-object/from16 v21, v13

    check-cast v21, [B

    goto :goto_5

    .line 166
    .restart local v4       #arrayIndex:I
    .restart local v8       #done:Z
    .restart local v22       #value:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 167
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_4

    .line 169
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #tokenBytes:[B
    check-cast v21, [B

    .restart local v21       #tokenBytes:[B
    goto :goto_6

    .line 129
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 176
    .end local v3           #array:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v4           #arrayIndex:I
    .end local v7           #cosCount:Ljava/lang/Number;
    .end local v8           #done:Z
    .end local v9           #endCode:[B
    .end local v12           #j:I
    .end local v14           #op:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParser$Operator;
    .end local v18           #startCode:[B
    .end local v21           #tokenBytes:[B
    .end local v22           #value:Ljava/lang/String;
    :cond_9
    move-object/from16 v15, v20

    .restart local v15       #previousToken:Ljava/lang/Object;
    goto/16 :goto_0

    .line 178
    .end local v15           #previousToken:Ljava/lang/Object;
    :cond_a
    return-object v17
.end method
