.class public final Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;
.super Lcom/itextpdf/text/pdf/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "DictNumberItem"
.end annotation


# instance fields
.field public size:I

.field public final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$Item;-><init>()V

    .line 651
    const/4 v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->size:I

    .line 652
    iput p1, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->value:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 661
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->size:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 662
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->myOffset:I

    const/16 v1, 0x1d

    aput-byte v1, p1, v0

    .line 663
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->myOffset:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->value:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 664
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->myOffset:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->value:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 665
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->myOffset:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->value:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 666
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->myOffset:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->value:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 668
    :cond_0
    return-void
.end method

.method public increment([I)V
    .locals 3
    .parameter "currentOffset"

    .prologue
    .line 655
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont$Item;->increment([I)V

    .line 656
    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;->size:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 657
    return-void
.end method
