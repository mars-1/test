.class public Lcom/itextpdf/text/pdf/DefaultFontMapper;
.super Ljava/lang/Object;
.source "DefaultFontMapper.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/FontMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    }
.end annotation


# instance fields
.field private aliases:Ljava/util/HashMap;
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

.field private mapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public awtToPdf(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 10
    .parameter "font"

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/DefaultFontMapper;->getBaseFontParameters(Ljava/lang/String;)Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    move-result-object v9

    .line 106
    .local v9, p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    if-eqz v9, :cond_0

    .line 107
    iget-object v0, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->fontName:Ljava/lang/String;

    iget-object v1, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->encoding:Ljava/lang/String;

    iget-boolean v2, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->embedded:Z

    iget-boolean v3, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->cached:Z

    iget-object v4, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->ttfAfm:[B

    iget-object v5, v9, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->pfb:[B

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const/4 v7, 0x0

    .line 109
    .local v7, fontKey:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, logicalName:Ljava/lang/String;
    const-string/jumbo v0, "DialogInput"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Monospaced"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Courier"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string/jumbo v7, "Courier-BoldOblique"

    .line 167
    :goto_1
    const-string/jumbo v0, "Cp1252"

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v7, "Courier-Oblique"

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    const-string/jumbo v7, "Courier-Bold"

    goto :goto_1

    .line 126
    :cond_4
    const-string/jumbo v7, "Courier"

    goto :goto_1

    .line 130
    :cond_5
    const-string/jumbo v0, "Serif"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "TimesRoman"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 132
    :cond_6
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    const-string/jumbo v7, "Times-BoldItalic"

    goto :goto_1

    .line 137
    :cond_7
    const-string/jumbo v7, "Times-Italic"

    goto :goto_1

    .line 141
    :cond_8
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 142
    const-string/jumbo v7, "Times-Bold"

    goto :goto_1

    .line 145
    :cond_9
    const-string/jumbo v7, "Times-Roman"

    goto :goto_1

    .line 151
    :cond_a
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 152
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    const-string/jumbo v7, "Helvetica-BoldOblique"

    goto :goto_1

    .line 156
    :cond_b
    const-string/jumbo v7, "Helvetica-Oblique"

    goto :goto_1

    .line 160
    :cond_c
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 161
    const-string/jumbo v7, "Helvetica-Bold"

    goto :goto_1

    .line 163
    :cond_d
    const-string/jumbo v7, "Helvetica"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    .end local v7           #fontKey:Ljava/lang/String;
    .end local v8           #logicalName:Ljava/lang/String;
    .end local v9           #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAliases()Ljava/util/HashMap;
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
    .line 306
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBaseFontParameters(Ljava/lang/String;)Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    .locals 3
    .parameter "name"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, alias:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    .line 233
    :goto_0
    return-object v2

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    .line 230
    .local v1, p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    if-nez v1, :cond_1

    .line 231
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 233
    goto :goto_0
.end method

.method public getMapper()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    return-object v0
.end method

.method public insertDirectory(Ljava/lang/String;)I
    .locals 12
    .parameter "dir"

    .prologue
    const/4 v1, 0x0

    .line 269
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 298
    :cond_0
    return v1

    .line 272
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 273
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    array-length v9, v3

    if-ge v5, v9, :cond_0

    .line 277
    aget-object v2, v3, v5

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 280
    .local v6, name:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, ".ttf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, ".otf"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, ".afm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 281
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Cp1252"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/itextpdf/text/pdf/BaseFont;->getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, allNames:[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v0, v9}, Lcom/itextpdf/text/pdf/DefaultFontMapper;->insertNames([Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 276
    .end local v0           #allNames:[Ljava/lang/Object;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    :cond_4
    const-string/jumbo v9, ".ttc"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/BaseFont;->enumerateTTCNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, ttcs:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, nt:Ljava/lang/String;
    const-string/jumbo v9, "Cp1252"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Lcom/itextpdf/text/pdf/BaseFont;->getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 290
    .restart local v0       #allNames:[Ljava/lang/Object;
    invoke-virtual {p0, v0, v7}, Lcom/itextpdf/text/pdf/DefaultFontMapper;->insertNames([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 292
    .end local v0           #allNames:[Ljava/lang/Object;
    .end local v7           #nt:Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v4           #j:I
    .end local v8           #ttcs:[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public insertNames([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10
    .parameter "allNames"
    .parameter "path"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 242
    aget-object v5, p1, v9

    check-cast v5, [[Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [[Ljava/lang/String;

    .line 243
    .local v3, names:[[Ljava/lang/String;
    const/4 v1, 0x0

    .line 244
    .local v1, main:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 245
    aget-object v2, v3, v0

    .line 246
    .local v2, name:[Ljava/lang/String;
    aget-object v5, v2, v9

    const-string/jumbo v6, "1033"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    aget-object v1, v2, v7

    .line 251
    .end local v2           #name:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 252
    aget-object v5, v3, v8

    aget-object v1, v5, v7

    .line 253
    :cond_1
    new-instance v4, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    invoke-direct {v4, p2}, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 256
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    aget-object v6, v3, v0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v4           #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    .restart local v2       #name:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v2           #name:[Ljava/lang/String;
    .restart local v4       #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    aget-object v5, p1, v8

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public pdfToAwt(Lcom/itextpdf/text/pdf/BaseFont;I)Ljava/awt/Font;
    .locals 11
    .parameter "font"
    .parameter "size"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, names:[[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v10, :cond_0

    .line 185
    new-instance v6, Ljava/awt/Font;

    aget-object v7, v5, v8

    aget-object v7, v7, v9

    invoke-direct {v6, v7, v8, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 202
    :goto_0
    return-object v6

    .line 186
    :cond_0
    const/4 v3, 0x0

    .line 187
    .local v3, name10:Ljava/lang/String;
    const/4 v4, 0x0

    .line 188
    .local v4, name3x:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 189
    aget-object v2, v5, v1

    .line 190
    .local v2, name:[Ljava/lang/String;
    aget-object v6, v2, v8

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v2, v10

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    aget-object v3, v2, v9

    .line 188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :cond_2
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string/jumbo v7, "1033"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 193
    aget-object v4, v2, v9

    .line 197
    .end local v2           #name:[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 198
    .local v0, finalName:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 199
    move-object v0, v3

    .line 200
    :cond_4
    if-nez v0, :cond_5

    .line 201
    aget-object v6, v5, v8

    aget-object v0, v6, v9

    .line 202
    :cond_5
    new-instance v6, Ljava/awt/Font;

    invoke-direct {v6, v0, v8, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public putAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alias"
    .parameter "awtName"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public putName(Ljava/lang/String;Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;)V
    .locals 1
    .parameter "awtName"
    .parameter "parameters"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method
