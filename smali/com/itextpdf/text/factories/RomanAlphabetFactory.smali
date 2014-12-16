.class public Lcom/itextpdf/text/factories/RomanAlphabetFactory;
.super Ljava/lang/Object;
.source "RomanAlphabetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLowerCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(I)Ljava/lang/String;
    .locals 7
    .parameter "index"

    .prologue
    .line 61
    const/4 v5, 0x1

    if-ge p0, v5, :cond_0

    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "you.can.t.translate.a.negative.number.into.an.alphabetical.value"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 64
    const/4 v0, 0x1

    .line 65
    .local v0, bytes:I
    const/4 v2, 0x0

    .line 66
    .local v2, start:I
    const/16 v3, 0x1a

    .line 67
    .local v3, symbols:I
    :goto_0
    add-int v5, v3, v2

    if-lt p0, v5, :cond_1

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    add-int/2addr v2, v3

    .line 70
    mul-int/lit8 v3, v3, 0x1a

    goto :goto_0

    .line 73
    :cond_1
    sub-int v1, p0, v2

    .line 74
    .local v1, c:I
    new-array v4, v0, [C

    .line 75
    .local v4, value:[C
    :goto_1
    if-lez v0, :cond_2

    .line 76
    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v5, v1, 0x1a

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    aput-char v5, v4, v0

    .line 77
    div-int/lit8 v1, v1, 0x1a

    goto :goto_1

    .line 80
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static final getString(IZ)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "lowercase"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getLowerCaseString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getUpperCaseString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getUpperCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 120
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v1, 0x7d00

    if-ge v0, v1, :cond_0

    .line 121
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/itextpdf/text/factories/RomanAlphabetFactory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
