.class public final Lcom/itextpdf/text/pdf/CFFFont$Font;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Font"
.end annotation


# instance fields
.field public CharsetLength:I

.field public CharstringType:I

.field public FDArrayCount:I

.field public FDArrayOffsets:[I

.field public FDArrayOffsize:I

.field public FDSelect:[I

.field public FDSelectFormat:I

.field public FDSelectLength:I

.field public PrivateSubrsOffset:[I

.field public PrivateSubrsOffsetsArray:[[I

.field public SubrsOffsets:[I

.field public charset:[I

.field public charsetOffset:I

.field public charstringsOffset:I

.field public charstringsOffsets:[I

.field public encodingOffset:I

.field public fdarrayOffset:I

.field public fdprivateLengths:[I

.field public fdprivateOffsets:[I

.field public fdprivateSubrs:[I

.field public fdselectOffset:I

.field public fullName:Ljava/lang/String;

.field public isCID:Z

.field public name:Ljava/lang/String;

.field public nglyphs:I

.field public nstrings:I

.field public privateLength:I

.field public privateOffset:I

.field public privateSubrs:I

.field final synthetic this$0:Lcom/itextpdf/text/pdf/CFFFont;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/text/pdf/CFFFont;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1015
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->this$0:Lcom/itextpdf/text/pdf/CFFFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    .line 1019
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    .line 1020
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    .line 1021
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    .line 1022
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    .line 1023
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->encodingOffset:I

    .line 1024
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charsetOffset:I

    .line 1025
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    .line 1026
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    .line 1040
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFont$Font;->CharstringType:I

    return-void
.end method
