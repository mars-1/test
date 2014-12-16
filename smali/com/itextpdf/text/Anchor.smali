.class public Lcom/itextpdf/text/Anchor;
.super Lcom/itextpdf/text/Phrase;
.source "Anchor.java"


# static fields
.field private static final serialVersionUID:J = -0xbd3e6d01ee79bafL


# instance fields
.field protected name:Ljava/lang/String;

.field protected reference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/high16 v0, 0x4180

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 76
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "leading"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "leading"
    .parameter "chunk"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLcom/itextpdf/text/Chunk;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1
    .parameter "leading"
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 1
    .parameter "chunk"

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 2
    .parameter "phrase"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 76
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 170
    instance-of v1, p1, Lcom/itextpdf/text/Anchor;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 171
    check-cast v0, Lcom/itextpdf/text/Anchor;

    .line 172
    .local v0, a:Lcom/itextpdf/text/Anchor;
    iget-object v1, v0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Anchor;->setName(Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Anchor;->setReference(Ljava/lang/String;)V

    .line 175
    .end local v0           #a:Lcom/itextpdf/text/Anchor;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 76
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public getChunks()Ljava/util/ArrayList;
    .locals 8
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
    const/4 v5, 0x1

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/Anchor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Element;>;"
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 222
    .local v2, localDestination:Z
    :goto_0
    const/4 v3, 0x1

    .line 223
    .local v3, notGotoOK:Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 225
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 226
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 227
    const/4 v3, 0x0

    .line 229
    :cond_0
    if-eqz v2, :cond_3

    .line 230
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 234
    :cond_1
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v2           #localDestination:Z
    .end local v3           #notGotoOK:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 232
    .restart local v0       #chunk:Lcom/itextpdf/text/Chunk;
    .restart local v2       #localDestination:Z
    .restart local v3       #notGotoOK:Z
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->setAnchor(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    goto :goto_2

    .line 236
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    :cond_4
    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 296
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, mue:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 9
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Anchor;->getChunks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 191
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const-string/jumbo v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 192
    .local v3, localDestination:Z
    :goto_0
    const/4 v4, 0x1

    .line 193
    .local v4, notGotoOK:Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Chunk;

    .line 195
    .local v0, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 196
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/Chunk;->setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 197
    const/4 v4, 0x0

    .line 199
    :cond_0
    if-eqz v3, :cond_1

    .line 200
    iget-object v7, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/Chunk;->setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    .line 202
    :cond_1
    invoke-interface {p1, v0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    .end local v0           #chunk:Lcom/itextpdf/text/Chunk;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    .end local v3           #localDestination:Z
    .end local v4           #notGotoOK:Z
    :catch_0
    move-exception v1

    .local v1, de:Lcom/itextpdf/text/DocumentException;
    move v5, v6

    .line 207
    .end local v1           #de:Lcom/itextpdf/text/DocumentException;
    :cond_2
    return v5

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/Chunk;>;"
    :cond_3
    move v3, v6

    .line 191
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/itextpdf/text/Anchor;->name:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0
    .parameter "reference"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/itextpdf/text/Anchor;->reference:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x11

    return v0
.end method
