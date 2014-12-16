.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;
.super Ljava/lang/Object;
.source "CMap.java"


# instance fields
.field private codeSpaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;",
            ">;"
        }
    .end annotation
.end field

.field private doubleByteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private singleByteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->codeSpaceRanges:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->singleByteMappings:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->doubleByteMappings:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method public addCodespaceRange(Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;)V
    .locals 1
    .parameter "range"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public addMapping([BLjava/lang/String;)V
    .locals 5
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    array-length v1, p1

    if-ne v1, v4, :cond_0

    .line 126
    iget-object v1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->singleByteMappings:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 130
    aget-byte v1, p1, v3

    and-int/lit16 v0, v1, 0xff

    .line 131
    .local v0, intSrc:I
    shl-int/lit8 v0, v0, 0x8

    .line 132
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->doubleByteMappings:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0           #intSrc:I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "mapping.code.should.be.1.or.two.bytes.and.not.1"

    array-length v3, p1

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCodeSpaceRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CodespaceRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->codeSpaceRanges:Ljava/util/List;

    return-object v0
.end method

.method public hasOneByteMappings()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTwoByteMappings()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookup([BII)Ljava/lang/String;
    .locals 4
    .parameter "code"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, key:Ljava/lang/Integer;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    .line 98
    new-instance v1, Ljava/lang/Integer;

    .end local v1           #key:Ljava/lang/Integer;
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 99
    .restart local v1       #key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 111
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :cond_1
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 103
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 104
    .local v0, intKey:I
    shl-int/lit8 v0, v0, 0x8

    .line 105
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 106
    new-instance v1, Ljava/lang/Integer;

    .end local v1           #key:Ljava/lang/Integer;
    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 108
    .restart local v1       #key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMap;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0
.end method
