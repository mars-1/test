.class public Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;
.super Ljava/lang/Object;
.source "TrueTypeFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/TrueTypeFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WindowsMetrics"
.end annotation


# instance fields
.field achVendID:[B

.field fsSelection:I

.field fsType:S

.field panose:[B

.field sCapHeight:I

.field sFamilyClass:S

.field sTypoAscender:S

.field sTypoDescender:S

.field sTypoLineGap:S

.field ulCodePageRange1:I

.field ulCodePageRange2:I

.field usFirstCharIndex:I

.field usLastCharIndex:I

.field usWeightClass:I

.field usWidthClass:I

.field usWinAscent:I

.field usWinDescent:I

.field xAvgCharWidth:S

.field yStrikeoutPosition:S

.field yStrikeoutSize:S

.field ySubscriptXOffset:S

.field ySubscriptXSize:S

.field ySubscriptYOffset:S

.field ySubscriptYSize:S

.field ySuperscriptXOffset:S

.field ySuperscriptXSize:S

.field ySuperscriptYOffset:S

.field ySuperscriptYSize:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->panose:[B

    .line 315
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->achVendID:[B

    return-void
.end method
