.class public Lcom/itextpdf/text/pdf/PdfDocument$Destination;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Destination"
.end annotation


# instance fields
.field public action:Lcom/itextpdf/text/pdf/PdfAction;

.field public destination:Lcom/itextpdf/text/pdf/PdfDestination;

.field public reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field final synthetic this$0:Lcom/itextpdf/text/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfDocument;)V
    .locals 0
    .parameter

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->this$0:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
