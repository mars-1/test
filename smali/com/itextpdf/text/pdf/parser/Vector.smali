.class public Lcom/itextpdf/text/pdf/parser/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# static fields
.field public static final I1:I = 0x0

.field public static final I2:I = 0x1

.field public static final I3:I = 0x2


# instance fields
.field private final vals:[F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 78
    return-void

    .line 64
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public cross(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 9
    .parameter "by"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v6

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v8

    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 97
    .local v0, x:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v6

    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v8

    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 98
    .local v1, y:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v6

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v8

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/parser/Matrix;->get(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 100
    .local v2, z:F
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v3, v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public cross(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 9
    .parameter "with"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v7

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v8

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v8

    iget-object v5, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v5, v5, v7

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 123
    .local v0, x:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v8

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v6

    iget-object v5, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 124
    .local v1, y:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v6

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    iget-object v5, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float v2, v3, v4

    .line 126
    .local v2, z:F
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v3, v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public dot(Lcom/itextpdf/text/pdf/parser/Vector;)F
    .locals 5
    .parameter "with"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v3

    iget-object v2, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v4

    iget-object v2, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/parser/Vector;

    .line 208
    .local v0, rhs:Lcom/itextpdf/text/pdf/parser/Vector;
    iget-object v3, v0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public get(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v0, v0, p1

    return v0
.end method

.method public length()F
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/Vector;->lengthSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public lengthSquared()F
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public multiply(F)Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 5
    .parameter "by"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float v0, v3, p1

    .line 150
    .local v0, x:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float v1, v3, p1

    .line 151
    .local v1, y:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float v2, v3, p1

    .line 152
    .local v2, z:F
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v3, v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public normalize()Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 6

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/Vector;->length()F

    move-result v0

    .line 136
    .local v0, l:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    div-float v1, v4, v0

    .line 137
    .local v1, x:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    div-float v2, v4, v0

    .line 138
    .local v2, y:F
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    div-float v3, v4, v0

    .line 139
    .local v3, z:F
    new-instance v4, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v4, v1, v2, v3}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    return-object v4
.end method

.method public subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v5

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v5

    sub-float v0, v3, v4

    .line 110
    .local v0, x:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v6

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v6

    sub-float v1, v3, v4

    .line 111
    .local v1, y:F
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v3, v3, v7

    iget-object v4, p1, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    aget v4, v4, v7

    sub-float v2, v3, v4

    .line 113
    .local v2, z:F
    new-instance v3, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v3, v0, v1, v2}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/Vector;->vals:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
