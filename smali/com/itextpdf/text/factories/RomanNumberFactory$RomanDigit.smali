.class Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;
.super Ljava/lang/Object;
.source "RomanNumberFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/factories/RomanNumberFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RomanDigit"
.end annotation


# instance fields
.field public digit:C

.field public pre:Z

.field public value:I


# direct methods
.method constructor <init>(CIZ)V
    .locals 0
    .parameter "digit"
    .parameter "value"
    .parameter "pre"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-char p1, p0, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->digit:C

    .line 71
    iput p2, p0, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    .line 72
    iput-boolean p3, p0, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->pre:Z

    .line 73
    return-void
.end method
