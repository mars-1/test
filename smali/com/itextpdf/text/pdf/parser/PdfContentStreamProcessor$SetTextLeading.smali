.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;
.super Ljava/lang/Object;
.source "PdfContentStreamProcessor.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/parser/ContentOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetTextLeading"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "processor"
    .parameter "operator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 625
    .local v0, leading:Lcom/itextpdf/text/pdf/PdfNumber;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    invoke-static {p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->leading:F

    .line 626
    return-void
.end method
