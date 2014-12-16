.class final Lcom/itextpdf/text/pdf/PdfGraphics2D$Kid;
.super Ljava/lang/Object;
.source "PdfGraphics2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfGraphics2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Kid"
.end annotation


# instance fields
.field final graphics:Lcom/itextpdf/text/pdf/PdfGraphics2D;

.field final pos:I


# direct methods
.method constructor <init>(ILcom/itextpdf/text/pdf/PdfGraphics2D;)V
    .locals 0
    .parameter "pos"
    .parameter "graphics"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfGraphics2D$Kid;->pos:I

    .line 145
    iput-object p2, p0, Lcom/itextpdf/text/pdf/PdfGraphics2D$Kid;->graphics:Lcom/itextpdf/text/pdf/PdfGraphics2D;

    .line 146
    return-void
.end method
