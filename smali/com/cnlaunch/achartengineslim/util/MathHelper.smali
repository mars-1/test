.class public Lcom/cnlaunch/achartengineslim/util/MathHelper;
.super Ljava/lang/Object;
.source "MathHelper.java"


# static fields
.field private static final FORMAT:Ljava/text/NumberFormat; = null

.field public static final NULL_VALUE:D = 1.7976931348623157E308

.field private static final TAG:Ljava/lang/String; = "MathHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static computeLabels(DDI)[D
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "approxNumLabels"

    .prologue
    .line 146
    sub-double v15, p0, p2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3e7ad7f2a0000000L

    cmpg-double v15, v15, v17

    if-gez v15, :cond_0

    .line 147
    const/4 v15, 0x3

    new-array v15, v15, [D

    const/16 v16, 0x0

    aput-wide p0, v15, v16

    const/16 v16, 0x1

    aput-wide p0, v15, v16

    const/16 v16, 0x2

    const-wide/16 v17, 0x0

    aput-wide v17, v15, v16

    .line 167
    :goto_0
    return-object v15

    .line 149
    :cond_0
    move-wide/from16 v8, p0

    .line 150
    .local v8, s:D
    move-wide/from16 v2, p2

    .line 151
    .local v2, e:D
    const/4 v12, 0x0

    .line 152
    .local v12, switched:Z
    cmpl-double v15, v8, v2

    if-lez v15, :cond_1

    .line 153
    const/4 v12, 0x1

    .line 154
    move-wide v13, v8

    .line 155
    .local v13, tmp:D
    move-wide v8, v2

    .line 156
    move-wide v2, v13

    .line 160
    .end local v13           #tmp:D
    :cond_1
    sub-double v15, v8, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v10, v15, v17

    .line 162
    .local v10, step:D
    div-double v15, v8, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    mul-double v6, v10, v15

    .line 163
    .local v6, newStart:D
    div-double v15, v2, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    mul-double v4, v10, v15

    .line 164
    .local v4, newEnd:D
    if-eqz v12, :cond_2

    .line 165
    const/4 v15, 0x3

    new-array v15, v15, [D

    const/16 v16, 0x0

    aput-wide v4, v15, v16

    const/16 v16, 0x1

    aput-wide v6, v15, v16

    const/16 v16, 0x2

    const-wide/high16 v17, -0x4010

    mul-double v17, v17, v10

    aput-wide v17, v15, v16

    goto :goto_0

    .line 167
    :cond_2
    const/4 v15, 0x3

    new-array v15, v15, [D

    const/16 v16, 0x0

    aput-wide v6, v15, v16

    const/16 v16, 0x1

    aput-wide v4, v15, v16

    const/16 v16, 0x2

    aput-wide v10, v15, v16

    goto :goto_0
.end method

.method public static getDataStreamLabels(DDI)Ljava/util/List;
    .locals 12
    .parameter "start"
    .parameter "end"
    .parameter "approxNumLabels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    if-gtz p4, :cond_1

    .line 133
    :cond_0
    return-object v2

    .line 116
    :cond_1
    sget-object v6, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 117
    invoke-static/range {p0 .. p4}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->computeLabels(DDI)[D

    move-result-object v1

    .line 122
    .local v1, labelParams:[D
    const/4 v6, 0x1

    aget-wide v6, v1, v6

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const/4 v8, 0x2

    aget-wide v8, v1, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    .line 123
    .local v3, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 124
    const/4 v6, 0x0

    aget-wide v6, v1, v6

    int-to-double v8, v0

    const/4 v10, 0x2

    aget-wide v10, v1, v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 127
    .local v4, z:D
    :try_start_0
    sget-object v6, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    sget-object v7, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 131
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static getLabels(DDI)Ljava/util/List;
    .locals 12
    .parameter "start"
    .parameter "end"
    .parameter "approxNumLabels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    if-gtz p4, :cond_1

    .line 97
    :cond_0
    return-object v2

    .line 78
    :cond_1
    sget-object v6, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 79
    invoke-static/range {p0 .. p4}, Lcom/cnlaunch/achartengineslim/util/MathHelper;->computeLabels(DDI)[D

    move-result-object v1

    .line 81
    .local v1, labelParams:[D
    const/4 v6, 0x1

    aget-wide v6, v1, v6

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    sub-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, v1, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    .line 86
    .local v3, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 87
    const/4 v6, 0x0

    aget-wide v6, v1, v6

    int-to-double v8, v0

    const/4 v10, 0x2

    aget-wide v10, v1, v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 91
    .local v4, z:D
    :try_start_0
    sget-object v6, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    sget-object v7, Lcom/cnlaunch/achartengineslim/util/MathHelper;->FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 95
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static minmax(Ljava/util/List;)[D
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 50
    new-array v8, v10, [D

    .line 60
    :goto_0
    return-object v8

    .line 52
    :cond_0
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 53
    .local v4, min:D
    move-wide v2, v4

    .line 54
    .local v2, max:D
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 55
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 60
    new-array v8, v10, [D

    aput-wide v4, v8, v9

    const/4 v9, 0x1

    aput-wide v2, v8, v9

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 57
    .local v6, value:D
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 58
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static roundUp(D)D
    .locals 7
    .parameter "val"

    .prologue
    const-wide/high16 v5, 0x4024

    .line 176
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 177
    .local v0, exponent:I
    neg-int v3, v0

    int-to-double v3, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v1, p0, v3

    .line 178
    .local v1, rval:D
    const-wide/high16 v3, 0x4014

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    .line 179
    const-wide/high16 v1, 0x4024

    .line 185
    :cond_0
    :goto_0
    int-to-double v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    .line 186
    return-wide v1

    .line 180
    :cond_1
    const-wide/high16 v3, 0x4000

    cmpl-double v3, v1, v3

    if-lez v3, :cond_2

    .line 181
    const-wide/high16 v1, 0x4014

    .line 182
    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    .line 183
    const-wide/high16 v1, 0x4000

    goto :goto_0
.end method
