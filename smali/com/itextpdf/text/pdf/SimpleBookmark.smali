.class public final Lcom/itextpdf/text/pdf/SimpleBookmark;
.super Ljava/lang/Object;
.source "SimpleBookmark.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# instance fields
.field private attr:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private topList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    .line 112
    return-void
.end method

.method private static bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/util/List;
    .locals 21
    .parameter "reader"
    .parameter "outline"
    .parameter "pages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    if-eqz p1, :cond_13

    .line 117
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfString;

    .line 119
    .local v17, title:Lcom/itextpdf/text/pdf/PdfString;
    const-string/jumbo v18, "Title"

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 121
    .local v4, color:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 122
    new-instance v14, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v14}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 123
    .local v14, out:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 124
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 125
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 126
    const-string/jumbo v18, "Color"

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v14           #out:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_0
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 129
    .local v16, style:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v16, :cond_3

    .line 130
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 131
    .local v7, f:I
    const-string/jumbo v15, ""

    .line 132
    .local v15, s:Ljava/lang/String;
    and-int/lit8 v18, v7, 0x1

    if-eqz v18, :cond_1

    .line 133
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "italic "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 134
    :cond_1
    and-int/lit8 v18, v7, 0x2

    if-eqz v18, :cond_2

    .line 135
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "bold "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 136
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 137
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_3

    .line 138
    const-string/jumbo v18, "Style"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v7           #f:I
    .end local v15           #s:Ljava/lang/String;
    :cond_3
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 141
    .local v5, count:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    if-gez v18, :cond_4

    .line 142
    const-string/jumbo v18, "Open"

    const-string/jumbo v19, "false"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_4
    :try_start_0
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 145
    .local v6, dest:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v6, :cond_7

    .line 146
    move-object/from16 v0, p2

    invoke-static {v12, v6, v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;->mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v6           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    :goto_1
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 215
    .local v9, first:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v9, :cond_6

    .line 216
    const-string/jumbo v18, "Kids"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_6
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 220
    .restart local p1
    goto/16 :goto_0

    .line 149
    .end local v9           #first:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v6       #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    :try_start_1
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 150
    .local v2, action:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v2, :cond_5

    .line 151
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 152
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_5

    .line 154
    move-object/from16 v0, p2

    invoke-static {v12, v6, v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;->mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_1

    .line 211
    .end local v2           #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v18

    goto :goto_1

    .line 157
    .restart local v2       #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v6       #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 158
    const-string/jumbo v18, "Action"

    const-string/jumbo v19, "URI"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v19, "URI"

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 161
    :cond_9
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 162
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_a

    .line 164
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 165
    const-string/jumbo v18, "Named"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_a
    :goto_2
    const-string/jumbo v18, "Action"

    const-string/jumbo v19, "GoToR"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 180
    .local v8, file:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v8, :cond_b

    .line 181
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 182
    const-string/jumbo v19, "File"

    move-object v0, v8

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_b
    :goto_3
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v13

    .line 190
    .local v13, newWindow:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v13, :cond_5

    .line 191
    const-string/jumbo v18, "NewWindow"

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 166
    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v13           #newWindow:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 167
    const-string/jumbo v18, "NamedN"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_d
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 169
    move-object v0, v6

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v3, v0

    .line 170
    .local v3, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v15, s:Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const/4 v10, 0x2

    .local v10, k:I
    :goto_4
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_e

    .line 174
    const/16 v18, 0x20

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual {v3, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 175
    :cond_e
    const-string/jumbo v18, "Page"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 183
    .end local v3           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #k:I
    .end local v15           #s:Ljava/lang/StringBuffer;
    .restart local v8       #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_f
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 184
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 185
    .restart local v8       #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 186
    const-string/jumbo v19, "File"

    move-object v0, v8

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 193
    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_10
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->LAUNCH:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 194
    const-string/jumbo v18, "Action"

    const-string/jumbo v19, "Launch"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 196
    .restart local v8       #file:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v8, :cond_11

    .line 197
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->WIN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 198
    :cond_11
    if-eqz v8, :cond_5

    .line 199
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 200
    const-string/jumbo v18, "File"

    check-cast v8, Lcom/itextpdf/text/pdf/PdfString;

    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 201
    .restart local v8       #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_12
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 202
    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 203
    .restart local v8       #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 204
    const-string/jumbo v18, "File"

    check-cast v8, Lcom/itextpdf/text/pdf/PdfString;

    .end local v8           #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 221
    .end local v2           #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #color:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #count:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v6           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16           #style:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v17           #title:Lcom/itextpdf/text/pdf/PdfString;
    :cond_13
    return-object v11
.end method

.method static createOutlineAction(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;Z)V
    .locals 15
    .parameter "outline"
    .parameter
    .parameter "writer"
    .parameter "namedAsNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string/jumbo v12, "Action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, action:Ljava/lang/String;
    const-string/jumbo v12, "GoTo"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 399
    const-string/jumbo v12, "Named"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, p:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 400
    if-eqz p3, :cond_1

    .line 401
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v13, v9}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 496
    .end local v1           #action:Ljava/lang/String;
    .end local v9           #p:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v1       #action:Ljava/lang/String;
    .restart local v9       #p:Ljava/lang/String;
    :cond_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 493
    .end local v1           #action:Ljava/lang/String;
    .end local v9           #p:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 405
    .restart local v1       #action:Ljava/lang/String;
    .restart local v9       #p:Ljava/lang/String;
    :cond_2
    const-string/jumbo v12, "Page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #p:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #p:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 406
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 407
    .local v2, ar:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-direct {v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 408
    .local v10, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 409
    .local v7, n:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 410
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-nez v12, :cond_4

    .line 411
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 412
    const/4 v12, 0x3

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add([F)Z

    .line 427
    :cond_3
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 415
    :cond_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, fn:Ljava/lang/String;
    const-string/jumbo v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 417
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 418
    :cond_5
    new-instance v12, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v12, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 419
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    const/4 v12, 0x4

    if-ge v6, v12, :cond_3

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 420
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 421
    const-string/jumbo v12, "null"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 422
    sget-object v12, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 419
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 424
    :cond_6
    new-instance v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v12, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_2

    .line 430
    .end local v2           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #fn:Ljava/lang/String;
    .end local v6           #k:I
    .end local v7           #n:I
    .end local v9           #p:Ljava/lang/String;
    .end local v10           #tk:Ljava/util/StringTokenizer;
    :cond_7
    const-string/jumbo v12, "GoToR"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 432
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 433
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const-string/jumbo v12, "Named"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .restart local v9       #p:Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 434
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v14}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 460
    :cond_8
    :goto_3
    const-string/jumbo v12, "File"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 461
    .local v4, file:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v4, :cond_0

    .line 462
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 463
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v13, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 464
    const-string/jumbo v12, "NewWindow"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 465
    .local v8, nw:Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 466
    const-string/jumbo v12, "true"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 467
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 471
    :cond_9
    :goto_4
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 435
    .end local v4           #file:Ljava/lang/String;
    .end local v8           #nw:Ljava/lang/String;
    :cond_a
    const-string/jumbo v12, "NamedN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #p:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #p:Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 436
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v13, v9}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 437
    :cond_b
    const-string/jumbo v12, "Page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #p:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #p:Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 438
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 439
    .restart local v2       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-direct {v10, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v10       #tk:Ljava/util/StringTokenizer;
    new-instance v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 441
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-nez v12, :cond_d

    .line 442
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 443
    const/4 v12, 0x3

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add([F)Z

    .line 458
    :cond_c
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v12, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 446
    :cond_d
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 447
    .restart local v5       #fn:Ljava/lang/String;
    const-string/jumbo v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 448
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    :cond_e
    new-instance v12, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v12, v5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 450
    const/4 v6, 0x0

    .restart local v6       #k:I
    :goto_5
    const/4 v12, 0x4

    if-ge v6, v12, :cond_c

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 451
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 452
    const-string/jumbo v12, "null"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 453
    sget-object v12, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 450
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 455
    :cond_f
    new-instance v12, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v12, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_6

    .line 468
    .end local v2           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #fn:Ljava/lang/String;
    .end local v6           #k:I
    .end local v10           #tk:Ljava/util/StringTokenizer;
    .restart local v4       #file:Ljava/lang/String;
    .restart local v8       #nw:Ljava/lang/String;
    :cond_10
    const-string/jumbo v12, "false"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 469
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 474
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #file:Ljava/lang/String;
    .end local v8           #nw:Ljava/lang/String;
    .end local v9           #p:Ljava/lang/String;
    :cond_11
    const-string/jumbo v12, "URI"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 475
    const-string/jumbo v12, "URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 476
    .local v11, uri:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 477
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 478
    .restart local v3       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 479
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v13, v11}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 480
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 483
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #uri:Ljava/lang/String;
    :cond_12
    const-string/jumbo v12, "Launch"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 484
    const-string/jumbo v12, "File"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 485
    .restart local v4       #file:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 486
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 487
    .restart local v3       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->LAUNCH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 488
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v13, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 489
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v12, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 412
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1ct 0x46t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 443
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1ct 0x46t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static eliminatePages(Ljava/util/List;[I)V
    .locals 11
    .parameter
    .parameter "pageRange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[I)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 339
    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 300
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 301
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 302
    .local v0, hit:Z
    const-string/jumbo v9, "GoTo"

    const-string/jumbo v10, "Action"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 303
    const-string/jumbo v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 304
    .local v7, page:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 305
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 306
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 308
    .local v1, idx:I
    if-gez v1, :cond_5

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 312
    .local v8, pageNum:I
    :goto_1
    array-length v9, p1

    and-int/lit8 v5, v9, -0x2

    .line 313
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 314
    aget v9, p1, v3

    if-lt v8, v9, :cond_6

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    if-gt v8, v9, :cond_6

    .line 315
    const/4 v0, 0x1

    .line 321
    .end local v1           #idx:I
    .end local v3           #k:I
    .end local v5           #len:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    :cond_3
    const-string/jumbo v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 322
    .local v4, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_4

    .line 323
    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->eliminatePages(Ljava/util/List;[I)V

    .line 324
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 325
    const-string/jumbo v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/4 v4, 0x0

    .line 329
    :cond_4
    if-eqz v0, :cond_2

    .line 330
    if-nez v4, :cond_7

    .line 331
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 311
    .end local v4           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1       #idx:I
    .restart local v7       #page:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #pageNum:I
    goto :goto_1

    .line 313
    .restart local v3       #k:I
    .restart local v5       #len:I
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 333
    .end local v1           #idx:I
    .end local v3           #k:I
    .end local v5           #len:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    .restart local v4       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    const-string/jumbo v9, "Action"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v9, "Named"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static exportToXML(Ljava/util/List;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "out"
    .parameter "encoding"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p2}, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, jenc:Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 647
    .local v1, wrt:Ljava/io/Writer;
    invoke-static {p0, v1, p2, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXML(Ljava/util/List;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 648
    return-void
.end method

.method public static exportToXML(Ljava/util/List;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "wrt"
    .parameter "encoding"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 662
    invoke-static {p2, p3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 663
    const-string/jumbo v0, "\"?>\n<Bookmark>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V

    .line 665
    const-string/jumbo v0, "</Bookmark>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 667
    return-void
.end method

.method public static exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V
    .locals 12
    .parameter
    .parameter "out"
    .parameter "indent"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/Writer;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string/jumbo v0, ""

    .line 576
    .local v0, dep:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 579
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 580
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v10, "<Title "

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 582
    const/4 v6, 0x0

    .line 583
    .local v6, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 585
    .local v5, key:Ljava/lang/String;
    const-string/jumbo v10, "Title"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 586
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #title:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 587
    .restart local v8       #title:Ljava/lang/String;
    goto :goto_2

    .line 589
    :cond_1
    const-string/jumbo v10, "Kids"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 590
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    check-cast v6, Ljava/util/List;

    .line 591
    .restart local v6       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_2

    .line 594
    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v10, "=\""

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 596
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 597
    .local v9, value:Ljava/lang/String;
    const-string/jumbo v10, "Named"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "NamedN"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 598
    :cond_3
    invoke-static {v9}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->escapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 599
    :cond_4
    invoke-static {v9, p3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    const-string/jumbo v10, "\" "

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 603
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, ">"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    if-nez v8, :cond_6

    .line 605
    const-string/jumbo v8, ""

    .line 606
    :cond_6
    invoke-static {v8, p3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 607
    if-eqz v6, :cond_7

    .line 608
    const-string/jumbo v10, "\n"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 609
    add-int/lit8 v10, p2, 0x1

    invoke-static {v6, p1, v10, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V

    .line 610
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 612
    :cond_7
    const-string/jumbo v10, "</Title>\n"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 614
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #title:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public static getBookmark(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/List;
    .locals 7
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 275
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 276
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-nez v6, :cond_1

    .line 277
    :cond_0
    const/4 v6, 0x0

    .line 285
    :goto_0
    return-object v6

    :cond_1
    move-object v4, v3

    .line 278
    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 279
    .local v4, outlines:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 280
    .local v5, pages:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v2

    .line 281
    .local v2, numPages:I
    const/4 v1, 0x1

    .local v1, k:I
    :goto_1
    if-gt v1, v2, :cond_2

    .line 282
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 283
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {p0, v6, v5}, Lcom/itextpdf/text/pdf/SimpleBookmark;->bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method

.method private static getNumber(Lcom/itextpdf/text/pdf/PdfIndirectReference;)I
    .locals 4
    .parameter "indirect"

    .prologue
    .line 257
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 258
    .local v1, pdfObj:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 261
    .local v0, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 263
    .end local v0           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v2

    return v2
.end method

.method public static importFromXML(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/itextpdf/text/pdf/SimpleBookmark;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;-><init>()V

    .line 677
    .local v0, book:Lcom/itextpdf/text/pdf/SimpleBookmark;
    invoke-static {v0, p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V

    .line 678
    iget-object v1, v0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public static importFromXML(Ljava/io/Reader;)Ljava/util/List;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    new-instance v0, Lcom/itextpdf/text/pdf/SimpleBookmark;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;-><init>()V

    .line 689
    .local v0, book:Lcom/itextpdf/text/pdf/SimpleBookmark;
    invoke-static {v0, p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V

    .line 690
    iget-object v1, v0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public static iterateOutlines(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/util/List;Z)[Ljava/lang/Object;
    .locals 24
    .parameter "writer"
    .parameter "parent"
    .parameter
    .parameter "namedAsNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    .local p2, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v16, v0

    .line 501
    .local v16, refs:[Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v10, 0x0

    .local v10, k:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v20

    aput-object v20, v16, v10

    .line 501
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 503
    :cond_0
    const/4 v15, 0x0

    .line 504
    .local v15, ptr:I
    const/4 v7, 0x0

    .line 505
    .local v7, count:I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 506
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 507
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 508
    .local v11, lower:[Ljava/lang/Object;
    const-string/jumbo v20, "Kids"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 509
    .local v18, subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 510
    aget-object v20, v16, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->iterateOutlines(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/util/List;Z)[Ljava/lang/Object;

    move-result-object v11

    .line 511
    :cond_1
    new-instance v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v14}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 512
    .local v14, outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    add-int/lit8 v7, v7, 0x1

    .line 513
    if-eqz v11, :cond_2

    .line 514
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v20, 0x0

    aget-object v20, v11, v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 515
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->LAST:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v20, 0x1

    aget-object v20, v11, v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 516
    const/16 v20, 0x2

    aget-object v20, v11, v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 517
    .local v13, n:I
    const-string/jumbo v20, "false"

    const-string/jumbo v21, "Open"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 518
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    neg-int v0, v13

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 525
    .end local v13           #n:I
    :cond_2
    :goto_2
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 526
    if-lez v15, :cond_3

    .line 527
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v21, v15, -0x1

    aget-object v21, v16, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 528
    :cond_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v15, v0, :cond_4

    .line 529
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v21, v15, 0x1

    aget-object v21, v16, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 530
    :cond_4
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v20, "Title"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string/jumbo v23, "UnicodeBig"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 531
    const-string/jumbo v20, "Color"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 532
    .local v6, color:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 534
    :try_start_0
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 535
    .local v4, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v19, Ljava/util/StringTokenizer;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 536
    .local v19, tk:Ljava/util/StringTokenizer;
    const/4 v10, 0x0

    :goto_3
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 537
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 538
    .local v8, f:F
    const/16 v20, 0x0

    cmpg-float v20, v8, v20

    if-gez v20, :cond_5

    const/4 v8, 0x0

    .line 539
    :cond_5
    const/high16 v20, 0x3f80

    cmpl-float v20, v8, v20

    if-lez v20, :cond_6

    const/high16 v8, 0x3f80

    .line 540
    :cond_6
    new-instance v20, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 521
    .end local v4           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #color:Ljava/lang/String;
    .end local v8           #f:F
    .end local v19           #tk:Ljava/util/StringTokenizer;
    .restart local v13       #n:I
    :cond_7
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 522
    add-int/2addr v7, v13

    goto/16 :goto_2

    .line 542
    .end local v13           #n:I
    .restart local v4       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v6       #color:Ljava/lang/String;
    .restart local v19       #tk:Ljava/util/StringTokenizer;
    :cond_8
    :try_start_1
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    .end local v4           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v19           #tk:Ljava/util/StringTokenizer;
    :cond_9
    :goto_4
    const-string/jumbo v20, "Style"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 546
    .local v17, style:Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 547
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 548
    const/4 v5, 0x0

    .line 549
    .local v5, bits:I
    const-string/jumbo v20, "italic"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_a

    .line 550
    or-int/lit8 v5, v5, 0x1

    .line 551
    :cond_a
    const-string/jumbo v20, "bold"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_b

    .line 552
    or-int/lit8 v5, v5, 0x2

    .line 553
    :cond_b
    if-eqz v5, :cond_c

    .line 554
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 556
    .end local v5           #bits:I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v14, v12, v0, v1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->createOutlineAction(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;Z)V

    .line 557
    aget-object v20, v16, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 505
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 559
    .end local v6           #color:Ljava/lang/String;
    .end local v11           #lower:[Ljava/lang/Object;
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v17           #style:Ljava/lang/String;
    .end local v18           #subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_d
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v16, v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v16, v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v22, v20, v21

    return-object v20

    .line 543
    .restart local v6       #color:Ljava/lang/String;
    .restart local v11       #lower:[Ljava/lang/Object;
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14       #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v18       #subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v20

    goto :goto_4
.end method

.method private static makeBookmarkParam(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 7
    .parameter "dest"
    .parameter "pages"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v2, s:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 239
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    check-cast v1, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 243
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const/4 v0, 0x2

    .local v0, k:I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 245
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0           #k:I
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    check-cast v1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->getNumber(Lcom/itextpdf/text/pdf/PdfIndirectReference;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 246
    .restart local v0       #k:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 2
    .parameter
    .parameter "dest"
    .parameter "pages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string/jumbo v0, "Named"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local p1
    :cond_0
    :goto_0
    const-string/jumbo v0, "Action"

    const-string/jumbo v1, "GoTo"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    .line 228
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string/jumbo v0, "Named"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v0, "Page"

    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->makeBookmarkParam(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static shiftPageNumbers(Ljava/util/List;I[I)V
    .locals 11
    .parameter
    .parameter "pageShift"
    .parameter "pageRange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[I)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 392
    :cond_0
    return-void

    .line 355
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 357
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v9, "GoTo"

    const-string/jumbo v10, "Action"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 358
    const-string/jumbo v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 359
    .local v7, page:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 360
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 361
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 363
    .local v1, idx:I
    if-gez v1, :cond_6

    .line 364
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 367
    .local v8, pageNum:I
    :goto_1
    const/4 v0, 0x0

    .line 368
    .local v0, hit:Z
    if-nez p2, :cond_7

    .line 369
    const/4 v0, 0x1

    .line 379
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 380
    if-gez v1, :cond_9

    .line 381
    add-int v9, v8, p1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 385
    :cond_4
    :goto_3
    const-string/jumbo v9, "Page"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v0           #hit:Z
    .end local v1           #idx:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    :cond_5
    const-string/jumbo v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 389
    .local v4, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_2

    .line 390
    invoke-static {v4, p1, p2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->shiftPageNumbers(Ljava/util/List;I[I)V

    goto :goto_0

    .line 366
    .end local v4           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1       #idx:I
    .restart local v7       #page:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #pageNum:I
    goto :goto_1

    .line 371
    .restart local v0       #hit:Z
    :cond_7
    array-length v9, p2

    and-int/lit8 v5, v9, -0x2

    .line 372
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_4
    if-ge v3, v5, :cond_3

    .line 373
    aget v9, p2, v3

    if-lt v8, v9, :cond_8

    add-int/lit8 v9, v3, 0x1

    aget v9, p2, v9

    if-gt v8, v9, :cond_8

    .line 374
    const/4 v0, 0x1

    .line 375
    goto :goto_2

    .line 372
    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    .line 383
    .end local v3           #k:I
    .end local v5           #len:I
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int v10, v8, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 698
    const-string/jumbo v5, "Bookmark"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 699
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 726
    :goto_0
    return-void

    .line 702
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "bookmark.end.tag.out.of.place"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 704
    :cond_1
    const-string/jumbo v5, "Title"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 705
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "invalid.end.tag.1"

    invoke-static {v6, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 706
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 707
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "Title"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 708
    .local v4, title:Ljava/lang/String;
    const-string/jumbo v5, "Title"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v5, "Named"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    .local v2, named:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 711
    const-string/jumbo v5, "Named"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->unEscapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_3
    const-string/jumbo v5, "NamedN"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #named:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 713
    .restart local v2       #named:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 714
    const-string/jumbo v5, "NamedN"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->unEscapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 716
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 718
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 719
    .local v3, parent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "Kids"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 720
    .local v1, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v1, :cond_6

    .line 721
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .restart local v1       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string/jumbo v5, "Kids"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 729
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
    .line 732
    .local p2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 733
    const-string/jumbo v1, "Bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    .line 746
    :goto_0
    return-void

    .line 738
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "root.element.is.not.bookmark.1"

    invoke-static {v2, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_1
    const-string/jumbo v1, "Title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "tag.1.not.allowed"

    invoke-static {v2, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 743
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "Title"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v1, "Kids"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 749
    iget-object v2, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 752
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "Title"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    const-string/jumbo v2, "Title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
