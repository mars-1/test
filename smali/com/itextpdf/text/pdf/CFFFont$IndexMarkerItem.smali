.class public final Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;
.super Lcom/itextpdf/text/pdf/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "IndexMarkerItem"
.end annotation


# instance fields
.field private indexBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

.field private offItem:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V
    .locals 0
    .parameter "offItem"
    .parameter "indexBase"

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$Item;-><init>()V

    .line 492
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;->offItem:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;

    .line 493
    iput-object p2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;->indexBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    .line 494
    return-void
.end method


# virtual methods
.method public xref()V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;->offItem:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;->myOffset:I

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;->indexBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;->myOffset:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;->set(I)V

    .line 499
    return-void
.end method