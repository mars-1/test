.class public Lcom/itextpdf/text/pdf/AsianFontMapper;
.super Lcom/itextpdf/text/pdf/DefaultFontMapper;
.source "AsianFontMapper.java"


# static fields
.field public static final ChineseSimplifiedEncoding_H:Ljava/lang/String; = "UniGB-UCS2-H"

.field public static final ChineseSimplifiedEncoding_V:Ljava/lang/String; = "UniGB-UCS2-V"

.field public static final ChineseSimplifiedFont:Ljava/lang/String; = "STSong-Light"

.field public static final ChineseTraditionalEncoding_H:Ljava/lang/String; = "UniCNS-UCS2-H"

.field public static final ChineseTraditionalEncoding_V:Ljava/lang/String; = "UniCNS-UCS2-V"

.field public static final ChineseTraditionalFont_MHei:Ljava/lang/String; = "MHei-Medium"

.field public static final ChineseTraditionalFont_MSung:Ljava/lang/String; = "MSung-Light"

.field public static final JapaneseEncoding_H:Ljava/lang/String; = "UniJIS-UCS2-H"

.field public static final JapaneseEncoding_HW_H:Ljava/lang/String; = "UniJIS-UCS2-HW-H"

.field public static final JapaneseEncoding_HW_V:Ljava/lang/String; = "UniJIS-UCS2-HW-V"

.field public static final JapaneseEncoding_V:Ljava/lang/String; = "UniJIS-UCS2-V"

.field public static final JapaneseFont_Go:Ljava/lang/String; = "HeiseiKakuGo-W5"

.field public static final JapaneseFont_Min:Ljava/lang/String; = "HeiseiMin-W3"

.field public static final KoreanEncoding_H:Ljava/lang/String; = "UniKS-UCS2-H"

.field public static final KoreanEncoding_V:Ljava/lang/String; = "UniKS-UCS2-V"

.field public static final KoreanFont_GoThic:Ljava/lang/String; = "HYGoThic-Medium"

.field public static final KoreanFont_SMyeongJo:Ljava/lang/String; = "HYSMyeongJo-Medium"


# instance fields
.field private final defaultFont:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "font"
    .parameter "encoding"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/DefaultFontMapper;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AsianFontMapper;->defaultFont:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/itextpdf/text/pdf/AsianFontMapper;->encoding:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public awtToPdf(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 8
    .parameter "font"

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/AsianFontMapper;->getBaseFontParameters(Ljava/lang/String;)Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;

    move-result-object v7

    .line 84
    .local v7, p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    if-eqz v7, :cond_0

    .line 85
    iget-object v0, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->fontName:Ljava/lang/String;

    iget-object v1, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->encoding:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->embedded:Z

    iget-boolean v3, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->cached:Z

    iget-object v4, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->ttfAfm:[B

    iget-object v5, v7, Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;->pfb:[B

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 93
    .end local v7           #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    :goto_0
    return-object v0

    .line 87
    .restart local v7       #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AsianFontMapper;->defaultFont:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/AsianFontMapper;->encoding:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 90
    .end local v7           #p:Lcom/itextpdf/text/pdf/DefaultFontMapper$BaseFontParameters;
    :catch_0
    move-exception v6

    .line 91
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method
