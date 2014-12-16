.class public Lcom/itextpdf/text/List;
.super Ljava/lang/Object;
.source "List.java"

# interfaces
.implements Lcom/itextpdf/text/TextElementArray;


# static fields
.field public static final ALPHABETICAL:Z = true

.field public static final LOWERCASE:Z = true

.field public static final NUMERICAL:Z = false

.field public static final ORDERED:Z = true

.field public static final UNORDERED:Z

.field public static final UPPERCASE:Z


# instance fields
.field protected alignindent:Z

.field protected autoindent:Z

.field protected first:I

.field protected indentationLeft:F

.field protected indentationRight:F

.field protected lettered:Z

.field protected list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected lowercase:Z

.field protected numbered:Z

.field protected postSymbol:Ljava/lang/String;

.field protected preSymbol:Ljava/lang/String;

.field protected symbol:Lcom/itextpdf/text/Chunk;

.field protected symbolIndent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, v0}, Lcom/itextpdf/text/List;-><init>(ZZ)V

    .line 155
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .parameter "symbolIndent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 120
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 122
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lowercase:Z

    .line 124
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->autoindent:Z

    .line 126
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->alignindent:Z

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/List;->first:I

    .line 131
    new-instance v0, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v1, "- "

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    .line 136
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ". "

    iput-object v0, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    .line 144
    iput v2, p0, Lcom/itextpdf/text/List;->indentationLeft:F

    .line 146
    iput v2, p0, Lcom/itextpdf/text/List;->indentationRight:F

    .line 148
    iput v2, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 163
    iput p1, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 164
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "numbered"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/List;-><init>(ZZ)V

    .line 172
    return-void
.end method

.method public constructor <init>(ZF)V
    .locals 1
    .parameter "numbered"
    .parameter "symbolIndent"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/text/List;-><init>(ZZF)V

    .line 198
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 4
    .parameter "numbered"
    .parameter "lettered"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 120
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 122
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lowercase:Z

    .line 124
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->autoindent:Z

    .line 126
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->alignindent:Z

    .line 129
    iput v3, p0, Lcom/itextpdf/text/List;->first:I

    .line 131
    new-instance v0, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v1, "- "

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    .line 136
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ". "

    iput-object v0, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    .line 144
    iput v2, p0, Lcom/itextpdf/text/List;->indentationLeft:F

    .line 146
    iput v2, p0, Lcom/itextpdf/text/List;->indentationRight:F

    .line 148
    iput v2, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 180
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 181
    iput-boolean p2, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 182
    iput-boolean v3, p0, Lcom/itextpdf/text/List;->autoindent:Z

    .line 183
    iput-boolean v3, p0, Lcom/itextpdf/text/List;->alignindent:Z

    .line 184
    return-void
.end method

.method public constructor <init>(ZZF)V
    .locals 3
    .parameter "numbered"
    .parameter "lettered"
    .parameter "symbolIndent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    .line 118
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 120
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 122
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->lowercase:Z

    .line 124
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->autoindent:Z

    .line 126
    iput-boolean v1, p0, Lcom/itextpdf/text/List;->alignindent:Z

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/List;->first:I

    .line 131
    new-instance v0, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v1, "- "

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    .line 136
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ". "

    iput-object v0, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    .line 144
    iput v2, p0, Lcom/itextpdf/text/List;->indentationLeft:F

    .line 146
    iput v2, p0, Lcom/itextpdf/text/List;->indentationRight:F

    .line 148
    iput v2, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 207
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 208
    iput-boolean p2, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 209
    iput p3, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 210
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 279
    instance-of v4, p1, Lcom/itextpdf/text/ListItem;

    if-eqz v4, :cond_3

    move-object v2, p1

    .line 280
    check-cast v2, Lcom/itextpdf/text/ListItem;

    .line 281
    .local v2, item:Lcom/itextpdf/text/ListItem;
    iget-boolean v4, p0, Lcom/itextpdf/text/List;->numbered:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/itextpdf/text/List;->lettered:Z

    if-eqz v4, :cond_2

    .line 282
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Chunk;

    iget-object v4, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    iget-object v5, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v5}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 283
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget v4, p0, Lcom/itextpdf/text/List;->first:I

    iget-object v5, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v1, v4, v5

    .line 284
    .local v1, index:I
    iget-boolean v4, p0, Lcom/itextpdf/text/List;->lettered:Z

    if-eqz v4, :cond_1

    .line 285
    iget-boolean v4, p0, Lcom/itextpdf/text/List;->lowercase:Z

    invoke-static {v1, v4}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getString(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    .line 294
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #index:I
    :goto_1
    iget v4, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    iget-boolean v5, p0, Lcom/itextpdf/text/List;->autoindent:Z

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(FZ)V

    .line 295
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/ListItem;->setIndentationRight(F)V

    .line 296
    iget-object v4, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 304
    .end local v2           #item:Lcom/itextpdf/text/ListItem;
    :goto_2
    return v4

    .line 287
    .restart local v0       #chunk:Lcom/itextpdf/text/Chunk;
    .restart local v1       #index:I
    .restart local v2       #item:Lcom/itextpdf/text/ListItem;
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 292
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v1           #index:I
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/ListItem;->setListSymbol(Lcom/itextpdf/text/Chunk;)V

    goto :goto_1

    .line 298
    .end local v2           #item:Lcom/itextpdf/text/ListItem;
    :cond_3
    instance-of v4, p1, Lcom/itextpdf/text/List;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 299
    check-cast v3, Lcom/itextpdf/text/List;

    .line 300
    .local v3, nested:Lcom/itextpdf/text/List;
    invoke-virtual {v3}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 301
    iget v4, p0, Lcom/itextpdf/text/List;->first:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/List;->first:I

    .line 302
    iget-object v4, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    .line 304
    .end local v3           #nested:Lcom/itextpdf/text/List;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    new-instance v0, Lcom/itextpdf/text/ListItem;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/List;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    iget-object v3, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 250
    .local v0, element:Lcom/itextpdf/text/Element;
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->getChunks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 252
    .end local v0           #element:Lcom/itextpdf/text/Element;
    :cond_0
    return-object v2
.end method

.method public getFirst()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/itextpdf/text/List;->first:I

    return v0
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/itextpdf/text/List;->indentationLeft:F

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/itextpdf/text/List;->indentationRight:F

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPostSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getPreSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Lcom/itextpdf/text/Chunk;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    return-object v0
.end method

.method public getSymbolIndent()F
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    return v0
.end method

.method public getTotalLeading()F
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 450
    const/high16 v1, -0x4080

    .line 453
    :goto_0
    return v1

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/ListItem;

    .line 453
    .local v0, item:Lcom/itextpdf/text/ListItem;
    invoke-virtual {v0}, Lcom/itextpdf/text/ListItem;->getTotalLeading()F

    move-result v1

    goto :goto_0
.end method

.method public isAlignindent()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/itextpdf/text/List;->alignindent:Z

    return v0
.end method

.method public isAutoindent()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/itextpdf/text/List;->autoindent:Z

    return v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLettered()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/itextpdf/text/List;->lettered:Z

    return v0
.end method

.method public isLowercase()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/itextpdf/text/List;->lowercase:Z

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public isNumbered()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/itextpdf/text/List;->numbered:Z

    return v0
.end method

.method public normalizeIndentation()V
    .locals 4

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, max:F
    iget-object v3, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Element;

    .line 313
    .local v2, o:Lcom/itextpdf/text/Element;
    instance-of v3, v2, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_0

    .line 314
    check-cast v2, Lcom/itextpdf/text/ListItem;

    .end local v2           #o:Lcom/itextpdf/text/Element;
    invoke-virtual {v2}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Element;

    .line 318
    .restart local v2       #o:Lcom/itextpdf/text/Element;
    instance-of v3, v2, Lcom/itextpdf/text/ListItem;

    if-eqz v3, :cond_2

    .line 319
    check-cast v2, Lcom/itextpdf/text/ListItem;

    .end local v2           #o:Lcom/itextpdf/text/Element;
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/ListItem;->setIndentationLeft(F)V

    goto :goto_1

    .line 322
    :cond_3
    return-void
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 223
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Element;

    .line 224
    .local v1, element:Lcom/itextpdf/text/Element;
    invoke-interface {p1, v1}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v1           #element:Lcom/itextpdf/text/Element;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 229
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v3, 0x0

    .end local v0           #de:Lcom/itextpdf/text/DocumentException;
    :goto_1
    return v3

    .line 226
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setAlignindent(Z)V
    .locals 0
    .parameter "alignindent"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->alignindent:Z

    .line 358
    return-void
.end method

.method public setAutoindent(Z)V
    .locals 0
    .parameter "autoindent"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->autoindent:Z

    .line 352
    return-void
.end method

.method public setFirst(I)V
    .locals 0
    .parameter "first"

    .prologue
    .line 366
    iput p1, p0, Lcom/itextpdf/text/List;->first:I

    .line 367
    return-void
.end method

.method public setIndentationLeft(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 395
    iput p1, p0, Lcom/itextpdf/text/List;->indentationLeft:F

    .line 396
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 404
    iput p1, p0, Lcom/itextpdf/text/List;->indentationRight:F

    .line 405
    return-void
.end method

.method public setLettered(Z)V
    .locals 0
    .parameter "lettered"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->lettered:Z

    .line 338
    return-void
.end method

.method public setListSymbol(Lcom/itextpdf/text/Chunk;)V
    .locals 0
    .parameter "symbol"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    .line 376
    return-void
.end method

.method public setListSymbol(Ljava/lang/String;)V
    .locals 1
    .parameter "symbol"

    .prologue
    .line 386
    new-instance v0, Lcom/itextpdf/text/Chunk;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/List;->symbol:Lcom/itextpdf/text/Chunk;

    .line 387
    return-void
.end method

.method public setLowercase(Z)V
    .locals 0
    .parameter "uppercase"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->lowercase:Z

    .line 345
    return-void
.end method

.method public setNumbered(Z)V
    .locals 0
    .parameter "numbered"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/itextpdf/text/List;->numbered:Z

    .line 331
    return-void
.end method

.method public setPostSymbol(Ljava/lang/String;)V
    .locals 0
    .parameter "postSymbol"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/itextpdf/text/List;->postSymbol:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setPreSymbol(Ljava/lang/String;)V
    .locals 0
    .parameter "preSymbol"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/itextpdf/text/List;->preSymbol:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setSymbolIndent(F)V
    .locals 0
    .parameter "symbolIndent"

    .prologue
    .line 411
    iput p1, p0, Lcom/itextpdf/text/List;->symbolIndent:F

    .line 412
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/itextpdf/text/List;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 239
    const/16 v0, 0xe

    return v0
.end method
