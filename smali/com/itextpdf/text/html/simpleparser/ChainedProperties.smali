.class public Lcom/itextpdf/text/html/simpleparser/ChainedProperties;
.super Ljava/lang/Object;
.source "ChainedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    }
.end annotation


# static fields
.field public static final fontSizes:[I


# instance fields
.field public chain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    .line 68
    return-void
.end method


# virtual methods
.method public addToChain(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .parameter "key"
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
    .line 93
    .local p2, prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "size"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 94
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 95
    const-string/jumbo v8, "pt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    const-string/jumbo v8, "size"

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    new-instance v9, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;

    invoke-direct {v9, p1, p2}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    .line 99
    .restart local v7       #value:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .line 100
    .local v6, s:I
    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 101
    :cond_2
    const-string/jumbo v8, "basefontsize"

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, old:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 103
    const-string/jumbo v5, "12"

    .line 104
    :cond_3
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 105
    .local v1, f:F
    float-to-int v0, v1

    .line 106
    .local v0, c:I
    sget-object v8, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .local v3, k:I
    :goto_1
    if-ltz v3, :cond_4

    .line 107
    sget-object v8, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    aget v8, v8, v3

    if-lt v0, v8, :cond_7

    .line 108
    move v6, v3

    .line 112
    :cond_4
    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, inc:I
    add-int/2addr v6, v2

    .line 122
    .end local v0           #c:I
    .end local v1           #f:F
    .end local v2           #inc:I
    .end local v3           #k:I
    .end local v5           #old:Ljava/lang/String;
    :goto_2
    if-gez v6, :cond_9

    .line 123
    const/4 v6, 0x0

    .line 126
    :cond_6
    :goto_3
    const-string/jumbo v8, "size"

    sget-object v9, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    aget v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .restart local v0       #c:I
    .restart local v1       #f:F
    .restart local v3       #k:I
    .restart local v5       #old:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 117
    .end local v0           #c:I
    .end local v1           #f:F
    .end local v3           #k:I
    .end local v5           #old:Ljava/lang/String;
    :cond_8
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v6, v8, -0x1

    goto :goto_2

    .line 118
    :catch_0
    move-exception v4

    .line 119
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    goto :goto_2

    .line 124
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v7           #value:Ljava/lang/String;
    :cond_9
    sget-object v8, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    array-length v8, v8

    if-lt v6, v8, :cond_6

    .line 125
    sget-object v8, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->fontSizes:[I

    array-length v8, v8

    add-int/lit8 v6, v8, -0x1

    goto :goto_3
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    .line 71
    iget-object v4, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_1

    .line 72
    iget-object v4, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;

    .line 73
    .local v1, p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    iget-object v2, v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;->property:Ljava/util/HashMap;

    .line 74
    .local v2, prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    .local v3, ret:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 78
    .end local v1           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .end local v2           #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #ret:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 71
    .restart local v1       #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .restart local v2       #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #ret:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 78
    .end local v1           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .end local v2           #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 82
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_1

    .line 83
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;

    .line 84
    .local v1, p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    iget-object v2, v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;->property:Ljava/util/HashMap;

    .line 85
    .local v2, prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    .line 88
    .end local v1           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .end local v2           #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v3

    .line 82
    .restart local v1       #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .restart local v2       #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v1           #p:Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;
    .end local v2           #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeChain(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;

    iget-object v1, v1, Lcom/itextpdf/text/html/simpleparser/ChainedProperties$ChainedProperty;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->chain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
