.class public Lcom/itextpdf/text/pdf/codec/wmf/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/wmf/Point;->x:I

    .line 55
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/wmf/Point;->y:I

    .line 56
    return-void
.end method
