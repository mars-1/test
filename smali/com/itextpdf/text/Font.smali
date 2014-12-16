.class public Lcom/itextpdf/text/Font;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/Font$1;,
        Lcom/itextpdf/text/Font$FontFamily;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/Font;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLDITALIC:I = 0x3

.field public static final DEFAULTSIZE:I = 0xc

.field public static final ITALIC:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final STRIKETHRU:I = 0x8

.field public static final UNDEFINED:I = -0x1

.field public static final UNDERLINE:I = 0x4


# instance fields
.field private baseFont:Lcom/itextpdf/text/pdf/BaseFont;

.field private color:Lcom/itextpdf/text/BaseColor;

.field private family:Lcom/itextpdf/text/Font$FontFamily;

.field private size:F

.field private style:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 265
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    const/high16 v1, -0x4080

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;)V
    .locals 3
    .parameter "family"

    .prologue
    .line 257
    const/high16 v0, -0x4080

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;F)V
    .locals 2
    .parameter "family"
    .parameter "size"

    .prologue
    .line 245
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;FI)V
    .locals 1
    .parameter "family"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "family"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 114
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 120
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 123
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 156
    iput-object p1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 157
    iput p2, p0, Lcom/itextpdf/text/Font;->size:F

    .line 158
    iput p3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 159
    iput-object p4, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 114
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 120
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 123
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 134
    iget-object v0, p1, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 135
    iget v0, p1, Lcom/itextpdf/text/Font;->size:F

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 136
    iget v0, p1, Lcom/itextpdf/text/Font;->style:I

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 137
    iget-object v0, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 138
    iget-object v0, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 3
    .parameter "bf"

    .prologue
    .line 215
    const/high16 v0, -0x4080

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 2
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 205
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;FI)V
    .locals 1
    .parameter "bf"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "bf"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 114
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 120
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 123
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 176
    iput-object p1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 177
    iput p2, p0, Lcom/itextpdf/text/Font;->size:F

    .line 178
    iput p3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 179
    iput-object p4, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 180
    return-void
.end method

.method public static getFamily(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontFamily;
    .locals 1
    .parameter "family"

    .prologue
    .line 382
    const-string/jumbo v0, "Courier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->COURIER:Lcom/itextpdf/text/Font$FontFamily;

    .line 397
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string/jumbo v0, "Helvetica"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->HELVETICA:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 388
    :cond_1
    const-string/jumbo v0, "Times-Roman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->TIMES_ROMAN:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 391
    :cond_2
    const-string/jumbo v0, "Symbol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 394
    :cond_3
    const-string/jumbo v0, "ZapfDingbats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 397
    :cond_4
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0
.end method

.method public static getStyleValue(Ljava/lang/String;)I
    .locals 3
    .parameter "style"

    .prologue
    const/4 v2, -0x1

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, s:I
    const-string/jumbo v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 560
    or-int/lit8 v0, v0, 0x0

    .line 562
    :cond_0
    const-string/jumbo v1, "bold"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 563
    or-int/lit8 v0, v0, 0x1

    .line 565
    :cond_1
    const-string/jumbo v1, "italic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 566
    or-int/lit8 v0, v0, 0x2

    .line 568
    :cond_2
    const-string/jumbo v1, "oblique"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 569
    or-int/lit8 v0, v0, 0x2

    .line 571
    :cond_3
    const-string/jumbo v1, "underline"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 572
    or-int/lit8 v0, v0, 0x4

    .line 574
    :cond_4
    const-string/jumbo v1, "line-through"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 575
    or-int/lit8 v0, v0, 0x8

    .line 577
    :cond_5
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/Font;)I
    .locals 5
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 278
    if-nez p1, :cond_1

    .line 279
    const/4 v1, -0x1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    const/4 v1, -0x2

    goto :goto_0

    .line 285
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 286
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    :cond_3
    iget v3, p0, Lcom/itextpdf/text/Font;->size:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 289
    const/4 v1, 0x2

    goto :goto_0

    .line 291
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/Font;->style:I

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 292
    const/4 v1, 0x3

    goto :goto_0

    .line 294
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_6

    .line 295
    iget-object v3, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-eqz v3, :cond_0

    move v1, v2

    .line 298
    goto :goto_0

    .line 300
    :cond_6
    iget-object v3, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_7

    move v1, v2

    .line 301
    goto :goto_0

    .line 303
    :cond_7
    iget-object v3, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 306
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/itextpdf/text/Font;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Font;->compareTo(Lcom/itextpdf/text/Font;)I

    move-result v0

    return v0
.end method

.method public difference(Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "font"

    .prologue
    const/4 v6, -0x1

    .line 743
    if-nez p1, :cond_0

    .line 780
    .end local p0
    :goto_0
    return-object p0

    .line 745
    .restart local p0
    :cond_0
    iget v1, p1, Lcom/itextpdf/text/Font;->size:F

    .line 746
    .local v1, dSize:F
    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    .line 747
    iget v1, p0, Lcom/itextpdf/text/Font;->size:F

    .line 750
    :cond_1
    const/4 v2, -0x1

    .line 751
    .local v2, dStyle:I
    iget v3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 752
    .local v3, style1:I
    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v4

    .line 753
    .local v4, style2:I
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_5

    .line 754
    :cond_2
    if-ne v3, v6, :cond_3

    .line 755
    const/4 v3, 0x0

    .line 756
    :cond_3
    if-ne v4, v6, :cond_4

    .line 757
    const/4 v4, 0x0

    .line 758
    :cond_4
    or-int v2, v3, v4

    .line 761
    :cond_5
    iget-object v0, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 762
    .local v0, dColor:Lcom/itextpdf/text/BaseColor;
    if-nez v0, :cond_6

    .line 763
    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 766
    :cond_6
    iget-object v5, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_7

    .line 767
    new-instance p0, Lcom/itextpdf/text/Font;

    .end local p0
    iget-object v5, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 769
    .restart local p0
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v5, v6, :cond_8

    .line 770
    new-instance p0, Lcom/itextpdf/text/Font;

    .end local p0
    iget-object v5, p1, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 772
    .restart local p0
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_a

    .line 773
    if-ne v2, v3, :cond_9

    .line 774
    new-instance v5, Lcom/itextpdf/text/Font;

    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {v5, v6, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    move-object p0, v5

    goto :goto_0

    .line 776
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getFamilyname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2, v0}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object p0

    goto :goto_0

    .line 780
    :cond_a
    new-instance v5, Lcom/itextpdf/text/Font;

    iget-object v6, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-direct {v5, v6, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    move-object p0, v5

    goto :goto_0
.end method

.method public getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method public getCalculatedBaseFont(Z)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 7
    .parameter "specialEncoding"

    .prologue
    .line 638
    iget-object v5, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_0

    .line 639
    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 716
    :goto_0
    return-object v0

    .line 640
    :cond_0
    iget v4, p0, Lcom/itextpdf/text/Font;->style:I

    .line 641
    .local v4, style:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 642
    const/4 v4, 0x0

    .line 644
    :cond_1
    const-string/jumbo v3, "Helvetica"

    .line 645
    .local v3, fontName:Ljava/lang/String;
    const-string/jumbo v2, "Cp1252"

    .line 646
    .local v2, encoding:Ljava/lang/String;
    const/4 v0, 0x0

    .line 647
    .local v0, cfont:Lcom/itextpdf/text/pdf/BaseFont;
    sget-object v5, Lcom/itextpdf/text/Font$1;->$SwitchMap$com$itextpdf$text$Font$FontFamily:[I

    iget-object v6, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {v6}, Lcom/itextpdf/text/Font$FontFamily;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 694
    :pswitch_0
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_1

    .line 706
    const-string/jumbo v3, "Helvetica"

    .line 712
    :cond_2
    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v2, v5}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_1
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_2

    .line 661
    const-string/jumbo v3, "Courier"

    .line 662
    goto :goto_1

    .line 651
    :pswitch_2
    const-string/jumbo v3, "Courier-Bold"

    .line 652
    goto :goto_1

    .line 654
    :pswitch_3
    const-string/jumbo v3, "Courier-Oblique"

    .line 655
    goto :goto_1

    .line 657
    :pswitch_4
    const-string/jumbo v3, "Courier-BoldOblique"

    .line 658
    goto :goto_1

    .line 666
    :pswitch_5
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_3

    .line 678
    const-string/jumbo v3, "Times-Roman"

    .line 679
    goto :goto_1

    .line 668
    :pswitch_6
    const-string/jumbo v3, "Times-Bold"

    .line 669
    goto :goto_1

    .line 671
    :pswitch_7
    const-string/jumbo v3, "Times-Italic"

    .line 672
    goto :goto_1

    .line 674
    :pswitch_8
    const-string/jumbo v3, "Times-BoldItalic"

    .line 675
    goto :goto_1

    .line 683
    :pswitch_9
    const-string/jumbo v3, "Symbol"

    .line 684
    if-eqz p1, :cond_2

    .line 685
    const-string/jumbo v2, "Symbol"

    goto :goto_1

    .line 688
    :pswitch_a
    const-string/jumbo v3, "ZapfDingbats"

    .line 689
    if-eqz p1, :cond_2

    .line 690
    const-string/jumbo v2, "ZapfDingbats"

    goto :goto_1

    .line 696
    :pswitch_b
    const-string/jumbo v3, "Helvetica-Bold"

    .line 697
    goto :goto_1

    .line 699
    :pswitch_c
    const-string/jumbo v3, "Helvetica-Oblique"

    .line 700
    goto :goto_1

    .line 702
    :pswitch_d
    const-string/jumbo v3, "Helvetica-BoldOblique"

    .line 703
    goto :goto_1

    .line 713
    :catch_0
    move-exception v1

    .line 714
    .local v1, ee:Ljava/lang/Exception;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 694
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 649
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 666
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getCalculatedLeading(F)F
    .locals 1
    .parameter "linespacing"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getCalculatedSize()F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public getCalculatedSize()F
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 420
    .local v0, s:F
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 421
    const/high16 v0, 0x4140

    .line 423
    :cond_0
    return v0
.end method

.method public getCalculatedStyle()I
    .locals 3

    .prologue
    .line 466
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 467
    .local v0, style:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_2

    .line 475
    .end local v0           #style:I
    :cond_1
    :goto_0
    return v0

    .line 472
    .restart local v0       #style:I
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v2, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v2, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v1, v2, :cond_1

    .line 475
    and-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public getColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getFamily()Lcom/itextpdf/text/Font$FontFamily;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    return-object v0
.end method

.method public getFamilyname()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 329
    const-string/jumbo v5, "unknown"

    .line 330
    .local v5, tmp:Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/text/Font$1;->$SwitchMap$com$itextpdf$text$Font$FontFamily:[I

    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/Font$FontFamily;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 342
    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v6, :cond_3

    .line 343
    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/BaseFont;->getFamilyFontName()[[Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, names:[[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 345
    .local v3, name:[Ljava/lang/String;
    const-string/jumbo v6, "0"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 346
    aget-object v6, v3, v9

    .line 357
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:[Ljava/lang/String;
    .end local v4           #names:[[Ljava/lang/String;
    :goto_1
    return-object v6

    .line 332
    :pswitch_0
    const-string/jumbo v6, "Courier"

    goto :goto_1

    .line 334
    :pswitch_1
    const-string/jumbo v6, "Helvetica"

    goto :goto_1

    .line 336
    :pswitch_2
    const-string/jumbo v6, "Times-Roman"

    goto :goto_1

    .line 338
    :pswitch_3
    const-string/jumbo v6, "Symbol"

    goto :goto_1

    .line 340
    :pswitch_4
    const-string/jumbo v6, "ZapfDingbats"

    goto :goto_1

    .line 348
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:[Ljava/lang/String;
    .restart local v4       #names:[[Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "1033"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 349
    aget-object v5, v3, v9

    .line 351
    :cond_1
    const-string/jumbo v6, ""

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    aget-object v5, v3, v9

    .line 344
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:[Ljava/lang/String;
    .end local v4           #names:[[Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .line 357
    goto :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    return v0
.end method

.method public isBold()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    iget v2, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 487
    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isItalic()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 496
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStandardFont()Z
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrikethru()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 520
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 508
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColor(III)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 613
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, p1, p2, p3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    iput-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 614
    return-void
.end method

.method public setColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 600
    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "family"

    .prologue
    .line 368
    invoke-static {p1}, Lcom/itextpdf/text/Font;->getFamily(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 369
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 444
    iput p1, p0, Lcom/itextpdf/text/Font;->size:F

    .line 445
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 533
    iput p1, p0, Lcom/itextpdf/text/Font;->style:I

    .line 534
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 544
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 545
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 546
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    invoke-static {p1}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 547
    return-void
.end method
