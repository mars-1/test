.class public Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;
.super Ljava/lang/Object;
.source "GraphConfiguration.java"


# static fields
.field private static final GraphColor:[I = null

.field private static final GraphFPSMax:I = 0xb4

.field private static final GraphViewMax:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/16 v8, 0x8b

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/16 v5, 0xff

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 19
    const/16 v1, 0x80

    const/16 v2, 0x2a

    const/16 v3, 0x59

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x1

    .line 20
    const/16 v2, 0x38

    const/16 v3, 0x2f

    const/16 v4, 0x70

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 21
    const/16 v2, 0x3b

    const/16 v3, 0xb4

    const/16 v4, 0xf8

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 22
    const/16 v2, 0x6a

    const/16 v3, 0xc7

    invoke-static {v5, v7, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 23
    const/16 v2, 0x2c

    const/16 v3, 0x80

    const/16 v4, 0xd1

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 24
    const/16 v1, 0x2b

    const/16 v2, 0x4c

    invoke-static {v5, v1, v2, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v9

    .line 25
    const/16 v1, 0x2a

    const/16 v2, 0x9f

    const/16 v3, 0x84

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x7

    .line 26
    const/16 v2, 0x5a

    const/16 v3, 0xcc

    const/16 v4, 0x40

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 27
    const/16 v2, 0xf6

    invoke-static {v5, v2, v8, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 28
    const/16 v2, 0x26

    const/16 v3, 0x1a

    invoke-static {v5, v8, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 29
    const/16 v2, 0x53

    const/16 v3, 0x19

    invoke-static {v5, v7, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 30
    const/16 v2, 0x46

    const/16 v3, 0x3e

    const/16 v4, 0x79

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 31
    const/16 v2, 0xb0

    const/16 v3, 0x1c

    const/16 v4, 0x32

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 32
    const/16 v2, 0x45

    invoke-static {v5, v5, v2, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 33
    const/16 v2, 0xfe

    const/16 v3, 0x43

    invoke-static {v5, v2, v3, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    .line 18
    sput-object v0, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->GraphColor:[I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxGraphFPSNum()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xb4

    return v0
.end method

.method public static getMaxGraphLimitNum()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xf

    return v0
.end method

.method public static getPaintColor(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 37
    sget-object v0, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->GraphColor:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 38
    sget-object v0, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->GraphColor:[I

    aget v0, v0, p0

    .line 40
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method
