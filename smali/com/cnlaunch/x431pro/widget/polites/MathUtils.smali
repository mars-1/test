.class public Lcom/cnlaunch/x431pro/widget/polites/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angle(FFFF)F
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 74
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 70
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/MathUtils;->angle(FFFF)F

    move-result v0

    return v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 37
    sub-float v0, p0, p2

    .line 38
    .local v0, x:F
    sub-float v1, p1, p3

    .line 39
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 31
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 32
    .local v0, x:F
    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 33
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static distance(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 26
    .local v0, x:F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 27
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static midpoint(FFFFLandroid/graphics/PointF;)V
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "point"

    .prologue
    const/high16 v1, 0x4000

    .line 51
    add-float v0, p0, p2

    div-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->x:F

    .line 52
    add-float v0, p1, p3

    div-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    .line 53
    return-void
.end method

.method public static midpoint(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
    .locals 6
    .parameter "event"
    .parameter "point"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 44
    .local v0, x1:F
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 45
    .local v2, y1:F
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 46
    .local v1, x2:F
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 47
    .local v3, y2:F
    invoke-static {v0, v2, v1, v3, p1}, Lcom/cnlaunch/x431pro/widget/polites/MathUtils;->midpoint(FFFFLandroid/graphics/PointF;)V

    .line 48
    return-void
.end method


# virtual methods
.method public rotate(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 7
    .parameter "p1"
    .parameter "p2"
    .parameter "angle"

    .prologue
    .line 61
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 62
    .local v2, px:F
    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 63
    .local v3, py:F
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 64
    .local v0, ox:F
    iget v1, p2, Landroid/graphics/PointF;->y:F

    .line 65
    .local v1, oy:F
    invoke-static {p3}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    sub-float v5, v2, v0

    mul-float/2addr v4, v5

    invoke-static {p3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    sub-float v6, v3, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    iput v4, p1, Landroid/graphics/PointF;->x:F

    .line 66
    invoke-static {p3}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    sub-float v5, v2, v0

    mul-float/2addr v4, v5

    invoke-static {p3}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    sub-float v6, v3, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/PointF;->y:F

    .line 67
    return-void
.end method
