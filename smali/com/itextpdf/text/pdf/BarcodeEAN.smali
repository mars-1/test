.class public Lcom/itextpdf/text/pdf/BarcodeEAN;
.super Lcom/itextpdf/text/pdf/Barcode;
.source "BarcodeEAN.java"


# static fields
.field private static final BARS:[[B = null

.field private static final EVEN:I = 0x1

.field private static final GUARD_EAN13:[I = null

.field private static final GUARD_EAN8:[I = null

.field private static final GUARD_EMPTY:[I = null

.field private static final GUARD_UPCA:[I = null

.field private static final GUARD_UPCE:[I = null

.field private static final ODD:I = 0x0

.field private static final PARITY13:[[B = null

.field private static final PARITY2:[[B = null

.field private static final PARITY5:[[B = null

.field private static final PARITYE:[[B = null

.field private static final TEXTPOS_EAN13:[F = null

.field private static final TEXTPOS_EAN8:[F = null

.field private static final TOTALBARS_EAN13:I = 0x3b

.field private static final TOTALBARS_EAN8:I = 0x2b

.field private static final TOTALBARS_SUPP2:I = 0xd

.field private static final TOTALBARS_SUPP5:I = 0x1f

.field private static final TOTALBARS_UPCE:I = 0x21


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x6

    .line 73
    new-array v0, v7, [I

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EMPTY:[I

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_UPCA:[I

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EAN13:[I

    .line 79
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EAN8:[I

    .line 81
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_UPCE:[I

    .line 83
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN13:[F

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN8:[F

    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v4, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v4, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    .line 117
    const/16 v0, 0xa

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_10

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_12

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_14

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_15

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY13:[[B

    .line 132
    new-array v0, v4, [[B

    new-array v1, v6, [B

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v6, [B

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    new-array v1, v6, [B

    fill-array-data v1, :array_1c

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [B

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY2:[[B

    .line 141
    const/16 v0, 0xa

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_1e

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v5, [B

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    new-array v1, v5, [B

    fill-array-data v1, :array_20

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v5, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v5, [B

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    new-array v1, v5, [B

    fill-array-data v1, :array_23

    aput-object v1, v0, v5

    new-array v1, v5, [B

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v5, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY5:[[B

    .line 156
    const/16 v0, 0xa

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_28

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_2a

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_2c

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_2d

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_2e

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITYE:[[B

    return-void

    .line 75
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    .line 81
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 83
    :array_4
    .array-data 0x4
        0x0t 0x0t 0xd0t 0x40t
        0x0t 0x0t 0x58t 0x41t
        0x0t 0x0t 0xa4t 0x41t
        0x0t 0x0t 0xdct 0x41t
        0x0t 0x0t 0xat 0x42t
        0x0t 0x0t 0x26t 0x42t
        0x0t 0x0t 0x56t 0x42t
        0x0t 0x0t 0x72t 0x42t
        0x0t 0x0t 0x87t 0x42t
        0x0t 0x0t 0x95t 0x42t
        0x0t 0x0t 0xa3t 0x42t
        0x0t 0x0t 0xb1t 0x42t
    .end array-data

    .line 85
    :array_5
    .array-data 0x4
        0x0t 0x0t 0xd0t 0x40t
        0x0t 0x0t 0x58t 0x41t
        0x0t 0x0t 0xa4t 0x41t
        0x0t 0x0t 0xdct 0x41t
        0x0t 0x0t 0x1et 0x42t
        0x0t 0x0t 0x3at 0x42t
        0x0t 0x0t 0x56t 0x42t
        0x0t 0x0t 0x72t 0x42t
    .end array-data

    .line 87
    :array_6
    .array-data 0x1
        0x3t
        0x2t
        0x1t
        0x1t
    .end array-data

    :array_7
    .array-data 0x1
        0x2t
        0x2t
        0x2t
        0x1t
    .end array-data

    :array_8
    .array-data 0x1
        0x2t
        0x1t
        0x2t
        0x2t
    .end array-data

    :array_9
    .array-data 0x1
        0x1t
        0x4t
        0x1t
        0x1t
    .end array-data

    :array_a
    .array-data 0x1
        0x1t
        0x1t
        0x3t
        0x2t
    .end array-data

    :array_b
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x1t
    .end array-data

    :array_c
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x4t
    .end array-data

    :array_d
    .array-data 0x1
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data

    :array_e
    .array-data 0x1
        0x1t
        0x2t
        0x1t
        0x3t
    .end array-data

    :array_f
    .array-data 0x1
        0x3t
        0x1t
        0x1t
        0x2t
    .end array-data

    .line 117
    :array_10
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_11
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_13
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_15
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_16
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_17
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_18
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_19
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 132
    nop

    :array_1a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1b
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1c
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 141
    nop

    :array_1e
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_22
    .array-data 0x1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_23
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    .line 156
    nop

    :array_28
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_2c
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_30
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_31
    .array-data 0x1
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Barcode;-><init>()V

    .line 173
    const v1, 0x3f4ccccd

    :try_start_0
    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    .line 174
    const-string/jumbo v1, "Helvetica"

    const-string/jumbo v2, "winansi"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    .line 175
    const/high16 v1, 0x4100

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    .line 176
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    .line 177
    iget v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->guardBars:Z

    .line 179
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    .line 180
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static calculateEANParity(Ljava/lang/String;)I
    .locals 5
    .parameter "code"

    .prologue
    .line 192
    const/4 v1, 0x3

    .line 193
    .local v1, mul:I
    const/4 v3, 0x0

    .line 194
    .local v3, total:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, k:I
    :goto_0
    if-ltz v0, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v4, -0x30

    .line 196
    .local v2, n:I
    mul-int v4, v1, v2

    add-int/2addr v3, v4

    .line 197
    xor-int/lit8 v1, v1, 0x2

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    .end local v2           #n:I
    :cond_0
    rem-int/lit8 v4, v3, 0xa

    rsub-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    return v4
.end method

.method public static convertUPCAtoUPCE(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x3

    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x6

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 211
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    const/16 v0, 0x9

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 224
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x35

    if-lt v0, v1, :cond_6

    .line 225
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getBarsEAN13(Ljava/lang/String;)[B
    .locals 14
    .parameter "_code"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v2, v8, [I

    .line 237
    .local v2, code:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 238
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    aput v8, v2, v3

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const/16 v8, 0x3b

    new-array v0, v8, [B

    .line 240
    .local v0, bars:[B
    const/4 v4, 0x0

    .line 241
    .local v4, pb:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .local v5, pb:I
    aput-byte v10, v0, v4

    .line 242
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v10, v0, v5

    .line 243
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v10, v0, v4

    .line 244
    sget-object v8, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY13:[[B

    aget v9, v2, v11

    aget-object v6, v8, v9

    .line 245
    .local v6, sequence:[B
    const/4 v3, 0x0

    move v4, v5

    .end local v5           #pb:I
    .restart local v4       #pb:I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_2

    .line 246
    add-int/lit8 v8, v3, 0x1

    aget v1, v2, v8

    .line 247
    .local v1, c:I
    sget-object v8, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v7, v8, v1

    .line 248
    .local v7, stripes:[B
    aget-byte v8, v6, v3

    if-nez v8, :cond_1

    .line 249
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v11

    aput-byte v8, v0, v4

    .line 250
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v10

    aput-byte v8, v0, v5

    .line 251
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v12

    aput-byte v8, v0, v4

    .line 252
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v13

    aput-byte v8, v0, v5

    .line 245
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v13

    aput-byte v8, v0, v4

    .line 256
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v12

    aput-byte v8, v0, v5

    .line 257
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v10

    aput-byte v8, v0, v4

    .line 258
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v11

    aput-byte v8, v0, v5

    goto :goto_2

    .line 261
    .end local v1           #c:I
    .end local v7           #stripes:[B
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v10, v0, v4

    .line 262
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v10, v0, v5

    .line 263
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v10, v0, v4

    .line 264
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v10, v0, v5

    .line 265
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v10, v0, v4

    .line 266
    const/4 v3, 0x7

    :goto_3
    const/16 v8, 0xd

    if-ge v3, v8, :cond_3

    .line 267
    aget v1, v2, v3

    .line 268
    .restart local v1       #c:I
    sget-object v8, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v7, v8, v1

    .line 269
    .restart local v7       #stripes:[B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v11

    aput-byte v8, v0, v5

    .line 270
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v10

    aput-byte v8, v0, v4

    .line 271
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v8, v7, v12

    aput-byte v8, v0, v5

    .line 272
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v8, v7, v13

    aput-byte v8, v0, v4

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 274
    .end local v1           #c:I
    .end local v7           #stripes:[B
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v10, v0, v5

    .line 275
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v10, v0, v4

    .line 276
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v10, v0, v5

    .line 277
    return-object v0
.end method

.method public static getBarsEAN8(Ljava/lang/String;)[B
    .locals 12
    .parameter "_code"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v2, v7, [I

    .line 286
    .local v2, code:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 287
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    aput v7, v2, v3

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_0
    const/16 v7, 0x2b

    new-array v0, v7, [B

    .line 289
    .local v0, bars:[B
    const/4 v4, 0x0

    .line 290
    .local v4, pb:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .local v5, pb:I
    aput-byte v8, v0, v4

    .line 291
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 292
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v8, v0, v4

    .line 293
    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v3, v7, :cond_1

    .line 294
    aget v1, v2, v3

    .line 295
    .local v1, c:I
    sget-object v7, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v6, v7, v1

    .line 296
    .local v6, stripes:[B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v7, v6, v9

    aput-byte v7, v0, v5

    .line 297
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v7, v6, v8

    aput-byte v7, v0, v4

    .line 298
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v7, v6, v10

    aput-byte v7, v0, v5

    .line 299
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v7, v6, v11

    aput-byte v7, v0, v4

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    .end local v1           #c:I
    .end local v6           #stripes:[B
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 302
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v8, v0, v4

    .line 303
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 304
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v8, v0, v4

    .line 305
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 306
    const/4 v3, 0x4

    move v5, v4

    .end local v4           #pb:I
    .restart local v5       #pb:I
    :goto_2
    const/16 v7, 0x8

    if-ge v3, v7, :cond_2

    .line 307
    aget v1, v2, v3

    .line 308
    .restart local v1       #c:I
    sget-object v7, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v6, v7, v1

    .line 309
    .restart local v6       #stripes:[B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v7, v6, v9

    aput-byte v7, v0, v5

    .line 310
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v7, v6, v8

    aput-byte v7, v0, v4

    .line 311
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aget-byte v7, v6, v10

    aput-byte v7, v0, v5

    .line 312
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aget-byte v7, v6, v11

    aput-byte v7, v0, v4

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 314
    .end local v1           #c:I
    .end local v6           #stripes:[B
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 315
    add-int/lit8 v5, v4, 0x1

    .end local v4           #pb:I
    .restart local v5       #pb:I
    aput-byte v8, v0, v4

    .line 316
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pb:I
    .restart local v4       #pb:I
    aput-byte v8, v0, v5

    .line 317
    return-object v0
.end method

.method public static getBarsSupplemental2(Ljava/lang/String;)[B
    .locals 15
    .parameter "_code"

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 365
    new-array v2, v12, [I

    .line 366
    .local v2, code:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 367
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    aput v9, v2, v3

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_0
    const/16 v9, 0xd

    new-array v0, v9, [B

    .line 369
    .local v0, bars:[B
    const/4 v5, 0x0

    .line 370
    .local v5, pb:I
    aget v9, v2, v13

    mul-int/lit8 v9, v9, 0xa

    aget v10, v2, v11

    add-int/2addr v9, v10

    rem-int/lit8 v4, v9, 0x4

    .line 371
    .local v4, parity:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .local v6, pb:I
    aput-byte v11, v0, v5

    .line 372
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v11, v0, v6

    .line 373
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v12, v0, v5

    .line 374
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY2:[[B

    aget-object v7, v9, v4

    .line 375
    .local v7, sequence:[B
    const/4 v3, 0x0

    move v5, v6

    .end local v6           #pb:I
    .restart local v5       #pb:I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_3

    .line 376
    if-ne v3, v11, :cond_1

    .line 377
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v11, v0, v5

    .line 378
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v11, v0, v6

    .line 380
    :cond_1
    aget v1, v2, v3

    .line 381
    .local v1, c:I
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v8, v9, v1

    .line 382
    .local v8, stripes:[B
    aget-byte v9, v7, v3

    if-nez v9, :cond_2

    .line 383
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v9, v8, v13

    aput-byte v9, v0, v5

    .line 384
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v9, v8, v11

    aput-byte v9, v0, v6

    .line 385
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v9, v8, v12

    aput-byte v9, v0, v5

    .line 386
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v9, v8, v14

    aput-byte v9, v0, v6

    .line 375
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v9, v8, v14

    aput-byte v9, v0, v5

    .line 390
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v9, v8, v12

    aput-byte v9, v0, v6

    .line 391
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v9, v8, v11

    aput-byte v9, v0, v5

    .line 392
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v9, v8, v13

    aput-byte v9, v0, v6

    goto :goto_2

    .line 395
    .end local v1           #c:I
    .end local v8           #stripes:[B
    :cond_3
    return-object v0
.end method

.method public static getBarsSupplemental5(Ljava/lang/String;)[B
    .locals 12
    .parameter "_code"

    .prologue
    .line 403
    const/4 v9, 0x5

    new-array v2, v9, [I

    .line 404
    .local v2, code:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 405
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    aput v9, v2, v3

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_0
    const/16 v9, 0x1f

    new-array v0, v9, [B

    .line 407
    .local v0, bars:[B
    const/4 v5, 0x0

    .line 408
    .local v5, pb:I
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x2

    aget v10, v2, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget v10, v2, v10

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x3

    const/4 v10, 0x1

    aget v10, v2, v10

    const/4 v11, 0x3

    aget v11, v2, v11

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x9

    add-int/2addr v9, v10

    rem-int/lit8 v4, v9, 0xa

    .line 409
    .local v4, parity:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .local v6, pb:I
    const/4 v9, 0x1

    aput-byte v9, v0, v5

    .line 410
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x1

    aput-byte v9, v0, v6

    .line 411
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x2

    aput-byte v9, v0, v5

    .line 412
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITY5:[[B

    aget-object v7, v9, v4

    .line 413
    .local v7, sequence:[B
    const/4 v3, 0x0

    move v5, v6

    .end local v6           #pb:I
    .restart local v5       #pb:I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_3

    .line 414
    if-eqz v3, :cond_1

    .line 415
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x1

    aput-byte v9, v0, v5

    .line 416
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x1

    aput-byte v9, v0, v6

    .line 418
    :cond_1
    aget v1, v2, v3

    .line 419
    .local v1, c:I
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v8, v9, v1

    .line 420
    .local v8, stripes:[B
    aget-byte v9, v7, v3

    if-nez v9, :cond_2

    .line 421
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    .line 422
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x1

    aget-byte v9, v8, v9

    aput-byte v9, v0, v6

    .line 423
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x2

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    .line 424
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x3

    aget-byte v9, v8, v9

    aput-byte v9, v0, v6

    .line 413
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x3

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    .line 428
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x2

    aget-byte v9, v8, v9

    aput-byte v9, v0, v6

    .line 429
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    const/4 v9, 0x1

    aget-byte v9, v8, v9

    aput-byte v9, v0, v5

    .line 430
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    aput-byte v9, v0, v6

    goto :goto_2

    .line 433
    .end local v1           #c:I
    .end local v8           #stripes:[B
    :cond_3
    return-object v0
.end method

.method public static getBarsUPCE(Ljava/lang/String;)[B
    .locals 15
    .parameter "_code"

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    new-array v2, v11, [I

    .line 326
    .local v2, code:[I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v11, v2

    if-ge v4, v11, :cond_0

    .line 327
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    aput v11, v2, v4

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    :cond_0
    const/16 v11, 0x21

    new-array v0, v11, [B

    .line 329
    .local v0, bars:[B
    aget v11, v2, v10

    if-eqz v11, :cond_1

    move v3, v9

    .line 330
    .local v3, flip:Z
    :goto_1
    const/4 v5, 0x0

    .line 331
    .local v5, pb:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .local v6, pb:I
    aput-byte v9, v0, v5

    .line 332
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v9, v0, v6

    .line 333
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v9, v0, v5

    .line 334
    sget-object v11, Lcom/itextpdf/text/pdf/BarcodeEAN;->PARITYE:[[B

    array-length v12, v2

    add-int/lit8 v12, v12, -0x1

    aget v12, v2, v12

    aget-object v7, v11, v12

    .line 335
    .local v7, sequence:[B
    const/4 v4, 0x1

    move v5, v6

    .end local v6           #pb:I
    .restart local v5       #pb:I
    :goto_2
    array-length v11, v2

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_4

    .line 336
    aget v1, v2, v4

    .line 337
    .local v1, c:I
    sget-object v11, Lcom/itextpdf/text/pdf/BarcodeEAN;->BARS:[[B

    aget-object v8, v11, v1

    .line 338
    .local v8, stripes:[B
    add-int/lit8 v11, v4, -0x1

    aget-byte v12, v7, v11

    if-eqz v3, :cond_2

    move v11, v9

    :goto_3
    if-ne v12, v11, :cond_3

    .line 339
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v11, v8, v10

    aput-byte v11, v0, v5

    .line 340
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v11, v8, v9

    aput-byte v11, v0, v6

    .line 341
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v11, v8, v13

    aput-byte v11, v0, v5

    .line 342
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v11, v8, v14

    aput-byte v11, v0, v6

    .line 335
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1           #c:I
    .end local v3           #flip:Z
    .end local v5           #pb:I
    .end local v7           #sequence:[B
    .end local v8           #stripes:[B
    :cond_1
    move v3, v10

    .line 329
    goto :goto_1

    .restart local v1       #c:I
    .restart local v3       #flip:Z
    .restart local v5       #pb:I
    .restart local v7       #sequence:[B
    .restart local v8       #stripes:[B
    :cond_2
    move v11, v10

    .line 338
    goto :goto_3

    .line 345
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v11, v8, v14

    aput-byte v11, v0, v5

    .line 346
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v11, v8, v13

    aput-byte v11, v0, v6

    .line 347
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aget-byte v11, v8, v9

    aput-byte v11, v0, v5

    .line 348
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aget-byte v11, v8, v10

    aput-byte v11, v0, v6

    goto :goto_4

    .line 351
    .end local v1           #c:I
    .end local v8           #stripes:[B
    :cond_4
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v9, v0, v5

    .line 352
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v9, v0, v6

    .line 353
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v9, v0, v5

    .line 354
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v9, v0, v6

    .line 355
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pb:I
    .restart local v6       #pb:I
    aput-byte v9, v0, v5

    .line 356
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pb:I
    .restart local v5       #pb:I
    aput-byte v9, v0, v6

    .line 357
    return-object v0
.end method


# virtual methods
.method public createAwtImage(Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Image;
    .locals 19
    .parameter "foreground"
    .parameter "background"

    .prologue
    .line 661
    invoke-virtual/range {p1 .. p1}, Ljava/awt/Color;->getRGB()I

    move-result v10

    .line 662
    .local v10, f:I
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Color;->getRGB()I

    move-result v11

    .line 663
    .local v11, g:I
    new-instance v9, Ljava/awt/Canvas;

    invoke-direct {v9}, Ljava/awt/Canvas;-><init>()V

    .line 665
    .local v9, canvas:Ljava/awt/Canvas;
    const/4 v2, 0x0

    .line 666
    .local v2, width:I
    const/4 v7, 0x0

    .line 667
    .local v7, bars:[B
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    packed-switch v1, :pswitch_data_0

    .line 693
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "invalid.code.type"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v7

    .line 670
    const/16 v2, 0x5f

    .line 696
    :goto_0
    const/4 v15, 0x1

    .line 697
    .local v15, print:Z
    const/16 v16, 0x0

    .line 698
    .local v16, ptr:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    float-to-int v3, v1

    .line 699
    .local v3, height:I
    mul-int v1, v2, v3

    new-array v4, v1, [I

    .line 700
    .local v4, pix:[I
    const/4 v14, 0x0

    .local v14, k:I
    :goto_1
    array-length v1, v7

    if-ge v14, v1, :cond_3

    .line 701
    aget-byte v18, v7, v14

    .line 702
    .local v18, w:I
    move v8, v11

    .line 703
    .local v8, c:I
    if-eqz v15, :cond_0

    .line 704
    move v8, v10

    .line 705
    :cond_0
    if-nez v15, :cond_1

    const/4 v15, 0x1

    .line 706
    :goto_2
    const/4 v13, 0x0

    .local v13, j:I
    move/from16 v17, v16

    .end local v16           #ptr:I
    .local v17, ptr:I
    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 707
    add-int/lit8 v16, v17, 0x1

    .end local v17           #ptr:I
    .restart local v16       #ptr:I
    aput v8, v4, v17

    .line 706
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v16

    .end local v16           #ptr:I
    .restart local v17       #ptr:I
    goto :goto_3

    .line 673
    .end local v3           #height:I
    .end local v4           #pix:[I
    .end local v8           #c:I
    .end local v13           #j:I
    .end local v14           #k:I
    .end local v15           #print:Z
    .end local v17           #ptr:I
    .end local v18           #w:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v7

    .line 674
    const/16 v2, 0x43

    .line 675
    goto :goto_0

    .line 677
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v7

    .line 678
    const/16 v2, 0x5f

    .line 679
    goto :goto_0

    .line 681
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v7

    .line 682
    const/16 v2, 0x33

    .line 683
    goto :goto_0

    .line 685
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v7

    .line 686
    const/16 v2, 0x14

    .line 687
    goto :goto_0

    .line 689
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v7

    .line 690
    const/16 v2, 0x2f

    .line 691
    goto :goto_0

    .line 705
    .restart local v3       #height:I
    .restart local v4       #pix:[I
    .restart local v8       #c:I
    .restart local v14       #k:I
    .restart local v15       #print:Z
    .restart local v16       #ptr:I
    .restart local v18       #w:I
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 700
    .end local v16           #ptr:I
    .restart local v13       #j:I
    .restart local v17       #ptr:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v17

    .end local v17           #ptr:I
    .restart local v16       #ptr:I
    goto :goto_1

    .line 709
    .end local v8           #c:I
    .end local v13           #j:I
    .end local v18           #w:I
    :cond_3
    move v14, v2

    :goto_4
    array-length v1, v4

    if-ge v14, v1, :cond_4

    .line 710
    const/4 v1, 0x0

    invoke-static {v4, v1, v4, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    add-int/2addr v14, v2

    goto :goto_4

    .line 712
    :cond_4
    new-instance v1, Ljava/awt/image/MemoryImageSource;

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    invoke-virtual {v9, v1}, Ljava/awt/Canvas;->createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/Image;

    move-result-object v12

    .line 714
    .local v12, img:Ljava/awt/Image;
    return-object v12

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getBarcodeSize()Lcom/itextpdf/text/Rectangle;
    .locals 8

    .prologue
    const/high16 v7, 0x42be

    const/4 v6, 0x0

    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, width:F
    iget v0, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    .line 443
    .local v0, height:F
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_0

    .line 444
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 445
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    neg-float v2, v2

    iget v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 449
    :cond_0
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    packed-switch v2, :pswitch_data_0

    .line 478
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "invalid.code.type"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    const/4 v4, 0x3

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_0

    .line 451
    :pswitch_0
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    mul-float v1, v2, v7

    .line 452
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v2

    add-float/2addr v1, v2

    .line 480
    :cond_2
    :goto_1
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    return-object v2

    .line 457
    :pswitch_1
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    const/high16 v3, 0x4286

    mul-float v1, v2, v3

    .line 458
    goto :goto_1

    .line 460
    :pswitch_2
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    mul-float v1, v2, v7

    .line 461
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_2

    .line 462
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1

    .line 466
    :pswitch_3
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    const/high16 v3, 0x424c

    mul-float v1, v2, v3

    .line 467
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v4, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget v5, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_1

    .line 472
    :pswitch_4
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    const/high16 v3, 0x41a0

    mul-float v1, v2, v3

    .line 473
    goto :goto_1

    .line 475
    :pswitch_5
    iget v2, p0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    const/high16 v3, 0x423c

    mul-float v1, v2, v3

    .line 476
    goto :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public placeBarcode(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Rectangle;
    .locals 21
    .parameter "cb"
    .parameter "barColor"
    .parameter "textColor"

    .prologue
    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarcodeSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v15

    .line 521
    .local v15, rect:Lcom/itextpdf/text/Rectangle;
    const/4 v4, 0x0

    .line 522
    .local v4, barStartX:F
    const/4 v5, 0x0

    .line 523
    .local v5, barStartY:F
    const/16 v16, 0x0

    .line 524
    .local v16, textStartY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    move/from16 v19, v0

    sub-float v16, v18, v19

    .line 532
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 540
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v6, 0x0

    .line 541
    .local v6, bars:[B
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EMPTY:[I

    .line 542
    .local v9, guard:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    .line 566
    :goto_2
    move v11, v4

    .line 567
    .local v11, keepBarX:F
    const/4 v14, 0x1

    .line 568
    .local v14, print:Z
    const/4 v8, 0x0

    .line 569
    .local v8, gd:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->guardBars:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 572
    :cond_2
    if-eqz p2, :cond_3

    .line 573
    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 574
    :cond_3
    const/4 v10, 0x0

    .local v10, k:I
    :goto_3
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 575
    aget-byte v18, v6, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v17, v18, v19

    .line 576
    .local v17, w:F
    if-eqz v14, :cond_4

    .line 577
    invoke-static {v9, v10}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v18

    if-ltz v18, :cond_6

    .line 578
    sub-float v18, v5, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->inkSpreading:F

    move/from16 v19, v0

    sub-float v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    move/from16 v20, v0

    add-float v20, v20, v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 582
    :cond_4
    :goto_4
    if-nez v14, :cond_7

    const/4 v14, 0x1

    .line 583
    :goto_5
    add-float v4, v4, v17

    .line 574
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 528
    .end local v6           #bars:[B
    .end local v8           #gd:F
    .end local v9           #guard:[I
    .end local v10           #k:I
    .end local v11           #keepBarX:F
    .end local v14           #print:Z
    .end local v17           #w:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v16, v0

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->baseline:F

    move/from16 v18, v0

    add-float v5, v16, v18

    goto/16 :goto_0

    .line 536
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(IF)F

    move-result v18

    add-float v4, v4, v18

    goto/16 :goto_1

    .line 544
    .restart local v6       #bars:[B
    .restart local v9       #guard:[I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v6

    .line 545
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EAN13:[I

    .line 546
    goto/16 :goto_2

    .line 548
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN8(Ljava/lang/String;)[B

    move-result-object v6

    .line 549
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_EAN8:[I

    .line 550
    goto/16 :goto_2

    .line 552
    :pswitch_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsEAN13(Ljava/lang/String;)[B

    move-result-object v6

    .line 553
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_UPCA:[I

    .line 554
    goto/16 :goto_2

    .line 556
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsUPCE(Ljava/lang/String;)[B

    move-result-object v6

    .line 557
    sget-object v9, Lcom/itextpdf/text/pdf/BarcodeEAN;->GUARD_UPCE:[I

    .line 558
    goto/16 :goto_2

    .line 560
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsSupplemental2(Ljava/lang/String;)[B

    move-result-object v6

    .line 561
    goto/16 :goto_2

    .line 563
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/BarcodeEAN;->getBarsSupplemental5(Ljava/lang/String;)[B

    move-result-object v6

    goto/16 :goto_2

    .line 580
    .restart local v8       #gd:F
    .restart local v10       #k:I
    .restart local v11       #keepBarX:F
    .restart local v14       #print:Z
    .restart local v17       #w:F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->inkSpreading:F

    move/from16 v18, v0

    sub-float v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->barHeight:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    goto/16 :goto_4

    .line 582
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 585
    .end local v17           #w:F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 587
    if-eqz p3, :cond_9

    .line 588
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 589
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->codeType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_2

    .line 649
    :cond_a
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 651
    :cond_b
    return-object v15

    .line 593
    :pswitch_8
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 595
    const/4 v10, 0x1

    :goto_7
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v12

    .line 598
    .local v12, len:F
    sget-object v18, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v19, v10, -0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v19, v12, v19

    sub-float v13, v18, v19

    .line 599
    .local v13, pX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 600
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 595
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 604
    .end local v7           #c:Ljava/lang/String;
    .end local v12           #len:F
    .end local v13           #pX:F
    :pswitch_9
    const/4 v10, 0x0

    :goto_8
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 606
    .restart local v7       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v12

    .line 607
    .restart local v12       #len:F
    sget-object v18, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN8:[F

    aget v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v19, v12, v19

    sub-float v13, v18, v19

    .line 608
    .restart local v13       #pX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 609
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 604
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 613
    .end local v7           #c:Ljava/lang/String;
    .end local v12           #len:F
    .end local v13           #pX:F
    :pswitch_a
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 615
    const/4 v10, 0x1

    :goto_9
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ge v10, v0, :cond_c

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 617
    .restart local v7       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v12

    .line 618
    .restart local v12       #len:F
    sget-object v18, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN13:[F

    aget v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v19, v12, v19

    sub-float v13, v18, v19

    .line 619
    .restart local v13       #pX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 620
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 615
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 622
    .end local v7           #c:Ljava/lang/String;
    .end local v12           #len:F
    .end local v13           #pX:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v18, v0

    const/high16 v19, 0x42be

    mul-float v18, v18, v19

    add-float v18, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0xc

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 626
    :pswitch_b
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 628
    const/4 v10, 0x1

    :goto_a
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 630
    .restart local v7       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v12

    .line 631
    .restart local v12       #len:F
    sget-object v18, Lcom/itextpdf/text/pdf/BarcodeEAN;->TEXTPOS_EAN13:[F

    add-int/lit8 v19, v10, -0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v19, v12, v19

    sub-float v13, v18, v19

    .line 632
    .restart local v13       #pX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 633
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 628
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 635
    .end local v7           #c:Ljava/lang/String;
    .end local v12           #len:F
    .end local v13           #pX:F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v18, v0

    const/high16 v19, 0x424c

    mul-float v18, v18, v19

    add-float v18, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    const/16 v20, 0x8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 640
    :pswitch_c
    const/4 v10, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->code:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 642
    .restart local v7       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->font:Lcom/itextpdf/text/pdf/BaseFont;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->size:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v12

    .line 643
    .restart local v12       #len:F
    const/high16 v18, 0x40f0

    mul-int/lit8 v19, v10, 0x9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/BarcodeEAN;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v19, v12, v19

    sub-float v13, v18, v19

    .line 644
    .restart local v13       #pX:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 645
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 542
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 591
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
