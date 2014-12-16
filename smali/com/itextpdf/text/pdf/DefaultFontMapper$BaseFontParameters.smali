.class public Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
.super Ljava/lang/Object;
.source "DefaultFontMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/DefaultFontMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseFontParameters"
.end annotation


# instance fields
.field public cached:Z

.field public embedded:Z

.field public encoding:Ljava/lang/String;

.field public fontName:Ljava/lang/String;

.field public pfb:[B

.field public ttfAfm:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "fontName"

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->fontName:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "Cp1252"

    iput-object v0, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->encoding:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->embedded:Z

    .line 86
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->cached:Z

    .line 87
    return-void
.end method
