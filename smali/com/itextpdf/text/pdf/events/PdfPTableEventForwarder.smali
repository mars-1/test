.class public Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;
.super Ljava/lang/Object;
.source "PdfPTableEventForwarder.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/PdfPTableEvent;


# instance fields
.field protected events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPTableEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->events:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTableEvent(Lcom/itextpdf/text/pdf/PdfPTableEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public tableLayout(Lcom/itextpdf/text/pdf/PdfPTable;[[F[FII[Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 8
    .parameter "table"
    .parameter "widths"
    .parameter "heights"
    .parameter "headerRows"
    .parameter "rowStart"
    .parameter "canvases"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/itextpdf/text/pdf/events/PdfPTableEventForwarder;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPTableEvent;

    .local v0, event:Lcom/itextpdf/text/pdf/PdfPTableEvent;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 77
    invoke-interface/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfPTableEvent;->tableLayout(Lcom/itextpdf/text/pdf/PdfPTable;[[F[FII[Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto :goto_0

    .line 79
    .end local v0           #event:Lcom/itextpdf/text/pdf/PdfPTableEvent;
    :cond_0
    return-void
.end method
