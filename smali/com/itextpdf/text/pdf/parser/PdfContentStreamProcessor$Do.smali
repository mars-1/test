.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;
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
    name = "Do"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    .local p3, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 800
    .local v0, xobjectName:Lcom/itextpdf/text/pdf/PdfName;
    #calls: Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayXObject(Lcom/itextpdf/text/pdf/PdfName;)V
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->access$3600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 801
    return-void
.end method
