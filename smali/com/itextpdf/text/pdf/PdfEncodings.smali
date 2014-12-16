.class public Lcom/itextpdf/text/pdf/PdfEncodings;
.super Ljava/lang/Object;
.source "PdfEncodings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfEncodings$1;,
        Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;
    }
.end annotation


# static fields
.field protected static final CIDCHAR:I = 0x2

.field protected static final CIDNONE:I = 0x0

.field protected static final CIDRANGE:I = 0x1

.field public static final CRLF_CID_NEWLINE:[[B

.field static final cmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[[C>;"
        }
    .end annotation
.end field

.field static extraEncodings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/ExtraEncoding;",
            ">;"
        }
    .end annotation
.end field

.field static final pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

.field static final pdfEncodingByteToChar:[C

.field static final winansi:Lcom/itextpdf/text/pdf/IntHashtable;

.field static final winansiByteToChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v3, 0xa1

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    const/16 v2, 0x100

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    .line 84
    const/16 v2, 0x100

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    .line 102
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 104
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    .line 109
    const/16 v1, 0x80

    .local v1, k:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 110
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    aget-char v0, v2, v1

    .line 111
    .local v0, c:C
    const v2, 0xfffd

    if-eq v0, v2, :cond_0

    .line 112
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0           #c:C
    :cond_1
    const/16 v1, 0x80

    :goto_1
    if-ge v1, v3, :cond_3

    .line 116
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    aget-char v0, v2, v1

    .line 117
    .restart local v0       #c:C
    const v2, 0xfffd

    if-eq v0, v2, :cond_2

    .line 118
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v0           #c:C
    :cond_3
    const-string/jumbo v2, "Wingdings"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 122
    const-string/jumbo v2, "Symbol"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 123
    const-string/jumbo v2, "ZapfDingbats"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;

    invoke-direct {v3, v5}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 124
    const-string/jumbo v2, "SymbolTT"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 125
    const-string/jumbo v2, "Cp437"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    .line 311
    new-array v2, v7, [[B

    new-array v3, v6, [B

    const/16 v4, 0xa

    aput-byte v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v7, [B

    fill-array-data v3, :array_2

    aput-object v3, v2, v6

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->CRLF_CID_NEWLINE:[[B

    return-void

    .line 66
    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0xact 0x20t
        0xfdt 0xfft
        0x1at 0x20t
        0x92t 0x1t
        0x1et 0x20t
        0x26t 0x20t
        0x20t 0x20t
        0x21t 0x20t
        0xc6t 0x2t
        0x30t 0x20t
        0x60t 0x1t
        0x39t 0x20t
        0x52t 0x1t
        0xfdt 0xfft
        0x7dt 0x1t
        0xfdt 0xfft
        0xfdt 0xfft
        0x18t 0x20t
        0x19t 0x20t
        0x1ct 0x20t
        0x1dt 0x20t
        0x22t 0x20t
        0x13t 0x20t
        0x14t 0x20t
        0xdct 0x2t
        0x22t 0x21t
        0x61t 0x1t
        0x3at 0x20t
        0x53t 0x1t
        0xfdt 0xfft
        0x7et 0x1t
        0x78t 0x1t
        0xa0t 0x0t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0xaft 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xbbt 0x0t
        0xbct 0x0t
        0xbdt 0x0t
        0xbet 0x0t
        0xbft 0x0t
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0xd0t 0x0t
        0xd1t 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xddt 0x0t
        0xdet 0x0t
        0xdft 0x0t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0xf0t 0x0t
        0xf1t 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0xfdt 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data

    .line 84
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0x22t 0x20t
        0x20t 0x20t
        0x21t 0x20t
        0x26t 0x20t
        0x14t 0x20t
        0x13t 0x20t
        0x92t 0x1t
        0x44t 0x20t
        0x39t 0x20t
        0x3at 0x20t
        0x12t 0x22t
        0x30t 0x20t
        0x1et 0x20t
        0x1ct 0x20t
        0x1dt 0x20t
        0x18t 0x20t
        0x19t 0x20t
        0x1at 0x20t
        0x22t 0x21t
        0x1t 0xfbt
        0x2t 0xfbt
        0x41t 0x1t
        0x52t 0x1t
        0x60t 0x1t
        0x78t 0x1t
        0x7dt 0x1t
        0x31t 0x1t
        0x42t 0x1t
        0x53t 0x1t
        0x61t 0x1t
        0x7et 0x1t
        0xfdt 0xfft
        0xact 0x20t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0xaft 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xbbt 0x0t
        0xbct 0x0t
        0xbdt 0x0t
        0xbet 0x0t
        0xbft 0x0t
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0xd0t 0x0t
        0xd1t 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xddt 0x0t
        0xdet 0x0t
        0xdft 0x0t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0xf0t 0x0t
        0xf1t 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0xfdt 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data

    .line 311
    :array_2
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    return-void
.end method

.method public static addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V
    .locals 3
    .parameter "name"
    .parameter "enc"

    .prologue
    .line 531
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    monitor-enter v2

    .line 532
    :try_start_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 533
    .local v0, newEncodings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    .line 535
    monitor-exit v2

    .line 536
    return-void

    .line 535
    .end local v0           #newEncodings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static breakLong(JI[B)V
    .locals 3
    .parameter "n"
    .parameter "size"
    .parameter "seqs"

    .prologue
    .line 496
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 497
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method

.method public static clearCmap(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 320
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 321
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    sget-object v0, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 325
    :goto_0
    monitor-exit v1

    .line 326
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static convertCmap(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "seq"

    .prologue
    .line 362
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertCmap(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertCmap(Ljava/lang/String;[BII)Ljava/lang/String;
    .locals 5
    .parameter "name"
    .parameter "seq"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 379
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [[C

    .line 380
    .local v2, planes:[[C
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :try_start_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [[C

    move-object v2, v0

    .line 382
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    if-nez v2, :cond_0

    .line 384
    const/4 v3, 0x0

    :try_start_2
    check-cast v3, [[B

    check-cast v3, [[B

    invoke-static {p0, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->readCmap(Ljava/lang/String;[[B)[[C

    move-result-object v2

    .line 385
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    :try_start_3
    sget-object v3, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 389
    :cond_0
    :try_start_4
    invoke-static {p1, p2, p3, v2}, Lcom/itextpdf/text/pdf/PdfEncodings;->decodeSequence([BII[[C)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    return-object v3

    .line 382
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 391
    .end local v2           #planes:[[C
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 387
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #planes:[[C
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public static final convertToBytes(CLjava/lang/String;)[B
    .locals 9
    .parameter "char1"
    .parameter "encoding"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 207
    :cond_0
    new-array v0, v8, [B

    int-to-byte v5, p0

    aput-byte v5, v0, v7

    .line 240
    :cond_1
    :goto_0
    return-object v0

    .line 208
    :cond_2
    sget-object v5, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 209
    .local v3, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v3, :cond_3

    .line 210
    invoke-interface {v3, p0, p1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->charToByte(CLjava/lang/String;)[B

    move-result-object v0

    .line 211
    .local v0, b:[B
    if-nez v0, :cond_1

    .line 214
    .end local v0           #b:[B
    :cond_3
    const/4 v4, 0x0

    .line 215
    .local v4, hash:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string/jumbo v5, "Cp1252"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 216
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 219
    :cond_4
    :goto_1
    if-eqz v4, :cond_9

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, c:I
    const/16 v5, 0x80

    if-lt p0, v5, :cond_5

    const/16 v5, 0xa0

    if-le p0, v5, :cond_7

    const/16 v5, 0xff

    if-gt p0, v5, :cond_7

    .line 222
    :cond_5
    move v1, p0

    .line 225
    :goto_2
    if-eqz v1, :cond_8

    .line 226
    new-array v0, v8, [B

    int-to-byte v5, v1

    aput-byte v5, v0, v7

    goto :goto_0

    .line 217
    .end local v1           #c:I
    :cond_6
    const-string/jumbo v5, "PDF"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 218
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_1

    .line 224
    .restart local v1       #c:I
    :cond_7
    invoke-virtual {v4, p0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v1

    goto :goto_2

    .line 228
    :cond_8
    new-array v0, v7, [B

    goto :goto_0

    .line 230
    .end local v1           #c:I
    :cond_9
    const-string/jumbo v5, "UnicodeBig"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 232
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 233
    .restart local v0       #b:[B
    const/4 v5, -0x2

    aput-byte v5, v0, v7

    .line 234
    const/4 v5, -0x1

    aput-byte v5, v0, v8

    .line 235
    const/4 v5, 0x2

    shr-int/lit8 v6, p0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 236
    const/4 v5, 0x3

    and-int/lit16 v6, p0, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_0

    .line 240
    .end local v0           #b:[B
    :cond_a
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v5, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public static final convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 18
    .parameter "text"
    .parameter "encoding"

    .prologue
    .line 135
    if-nez p0, :cond_1

    .line 136
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 192
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_3

    .line 138
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 139
    .local v13, len:I
    new-array v2, v13, [B

    .line 140
    .local v2, b:[B
    const/4 v12, 0x0

    .local v12, k:I
    :goto_1
    if-ge v12, v13, :cond_0

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v2, v12

    .line 140
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 144
    .end local v2           #b:[B
    .end local v12           #k:I
    .end local v13           #len:I
    :cond_3
    sget-object v16, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 145
    .local v10, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v10, :cond_4

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v10, v0, v1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->charToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 147
    .restart local v2       #b:[B
    if-nez v2, :cond_0

    .line 150
    .end local v2           #b:[B
    :cond_4
    const/4 v11, 0x0

    .line 151
    .local v11, hash:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string/jumbo v16, "Cp1252"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 152
    sget-object v11, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 155
    :cond_5
    :goto_2
    if-eqz v11, :cond_a

    .line 156
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 157
    .local v7, cc:[C
    array-length v13, v7

    .line 158
    .restart local v13       #len:I
    const/4 v14, 0x0

    .line 159
    .local v14, ptr:I
    new-array v2, v13, [B

    .line 160
    .restart local v2       #b:[B
    const/4 v6, 0x0

    .line 161
    .local v6, c:I
    const/4 v12, 0x0

    .restart local v12       #k:I
    move v15, v14

    .end local v14           #ptr:I
    .local v15, ptr:I
    :goto_3
    if-ge v12, v13, :cond_9

    .line 162
    aget-char v8, v7, v12

    .line 163
    .local v8, char1:C
    const/16 v16, 0x80

    move/from16 v0, v16

    if-lt v8, v0, :cond_6

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-le v8, v0, :cond_8

    const/16 v16, 0xff

    move/from16 v0, v16

    if-gt v8, v0, :cond_8

    .line 164
    :cond_6
    move v6, v8

    .line 167
    :goto_4
    if-eqz v6, :cond_c

    .line 168
    add-int/lit8 v14, v15, 0x1

    .end local v15           #ptr:I
    .restart local v14       #ptr:I
    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, v2, v15

    .line 161
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move v15, v14

    .end local v14           #ptr:I
    .restart local v15       #ptr:I
    goto :goto_3

    .line 153
    .end local v2           #b:[B
    .end local v6           #c:I
    .end local v7           #cc:[C
    .end local v8           #char1:C
    .end local v12           #k:I
    .end local v13           #len:I
    .end local v15           #ptr:I
    :cond_7
    const-string/jumbo v16, "PDF"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 154
    sget-object v11, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_2

    .line 166
    .restart local v2       #b:[B
    .restart local v6       #c:I
    .restart local v7       #cc:[C
    .restart local v8       #char1:C
    .restart local v12       #k:I
    .restart local v13       #len:I
    .restart local v15       #ptr:I
    :cond_8
    invoke-virtual {v11, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v6

    goto :goto_4

    .line 170
    .end local v8           #char1:C
    :cond_9
    if-eq v15, v13, :cond_0

    .line 172
    new-array v3, v15, [B

    .line 173
    .local v3, b2:[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v3, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    .line 174
    goto/16 :goto_0

    .line 176
    .end local v2           #b:[B
    .end local v3           #b2:[B
    .end local v6           #c:I
    .end local v7           #cc:[C
    .end local v12           #k:I
    .end local v13           #len:I
    .end local v15           #ptr:I
    :cond_a
    const-string/jumbo v16, "UnicodeBig"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 178
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 179
    .restart local v7       #cc:[C
    array-length v13, v7

    .line 180
    .restart local v13       #len:I
    array-length v0, v7

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 181
    .restart local v2       #b:[B
    const/16 v16, 0x0

    const/16 v17, -0x2

    aput-byte v17, v2, v16

    .line 182
    const/16 v16, 0x1

    const/16 v17, -0x1

    aput-byte v17, v2, v16

    .line 183
    const/4 v4, 0x2

    .line 184
    .local v4, bptr:I
    const/4 v12, 0x0

    .restart local v12       #k:I
    move v5, v4

    .end local v4           #bptr:I
    .local v5, bptr:I
    :goto_6
    if-ge v12, v13, :cond_0

    .line 185
    aget-char v6, v7, v12

    .line 186
    .local v6, c:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #bptr:I
    .restart local v4       #bptr:I
    shr-int/lit8 v16, v6, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v2, v5

    .line 187
    add-int/lit8 v5, v4, 0x1

    .end local v4           #bptr:I
    .restart local v5       #bptr:I
    and-int/lit16 v0, v6, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v2, v4

    .line 184
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 192
    .end local v2           #b:[B
    .end local v5           #bptr:I
    .end local v6           #c:C
    .end local v7           #cc:[C
    .end local v12           #k:I
    .end local v13           #len:I
    :cond_b
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v9

    .line 195
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    new-instance v16, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v16

    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #b:[B
    .local v6, c:I
    .restart local v7       #cc:[C
    .restart local v8       #char1:C
    .restart local v12       #k:I
    .restart local v13       #len:I
    .restart local v15       #ptr:I
    :cond_c
    move v14, v15

    .end local v15           #ptr:I
    .restart local v14       #ptr:I
    goto/16 :goto_5
.end method

.method public static final convertToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "bytes"
    .parameter "encoding"

    .prologue
    .line 254
    if-nez p0, :cond_1

    .line 255
    const-string/jumbo v6, ""

    .line 282
    :cond_0
    :goto_0
    return-object v6

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 257
    :cond_2
    array-length v7, p0

    new-array v0, v7, [C

    .line 258
    .local v0, c:[C
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 259
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v0, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 262
    .end local v0           #c:[C
    .end local v4           #k:I
    :cond_4
    sget-object v7, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 263
    .local v3, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v3, :cond_5

    .line 264
    invoke-interface {v3, p0, p1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->byteToChar([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 268
    .end local v6           #text:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 269
    .local v1, ch:[C
    const-string/jumbo v7, "Cp1252"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 270
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    .line 273
    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 274
    array-length v5, p0

    .line 275
    .local v5, len:I
    new-array v0, v5, [C

    .line 276
    .restart local v0       #c:[C
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 277
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    aget-char v7, v1, v7

    aput-char v7, v0, v4

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 271
    .end local v0           #c:[C
    .end local v4           #k:I
    .end local v5           #len:I
    :cond_7
    const-string/jumbo v7, "PDF"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 272
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    goto :goto_2

    .line 279
    .restart local v0       #c:[C
    .restart local v4       #k:I
    .restart local v5       #len:I
    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 282
    .end local v0           #c:[C
    .end local v4           #k:I
    .end local v5           #len:I
    :cond_9
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v7, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method static decodeSequence([BII[[C)Ljava/lang/String;
    .locals 8
    .parameter "seq"
    .parameter "start"
    .parameter "length"
    .parameter "planes"

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v0, buf:Ljava/lang/StringBuffer;
    add-int v3, p1, p2

    .line 399
    .local v3, end:I
    const/4 v2, 0x0

    .line 400
    .local v2, currentPlane:I
    move v4, p1

    .local v4, k:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 401
    aget-byte v7, p0, v4

    and-int/lit16 v5, v7, 0xff

    .line 402
    .local v5, one:I
    aget-object v6, p3, v2

    .line 403
    .local v6, plane:[C
    aget-char v1, v6, v5

    .line 404
    .local v1, cid:I
    const v7, 0x8000

    and-int/2addr v7, v1

    if-nez v7, :cond_0

    .line 405
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    const/4 v2, 0x0

    .line 400
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 409
    :cond_0
    and-int/lit16 v2, v1, 0x7fff

    goto :goto_1

    .line 411
    .end local v1           #cid:I
    .end local v5           #one:I
    .end local v6           #plane:[C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method static encodeSequence(I[BCLjava/util/ArrayList;)V
    .locals 7
    .parameter "size"
    .parameter "seqs"
    .parameter "cid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BC",
            "Ljava/util/ArrayList",
            "<[C>;)V"
        }
    .end annotation

    .prologue
    .local p3, planes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    const v6, 0x8000

    .line 502
    add-int/lit8 p0, p0, -0x1

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, nextPlane:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, p0, :cond_2

    .line 505
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 506
    .local v4, plane:[C
    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    .line 507
    .local v3, one:I
    aget-char v0, v4, v3

    .line 508
    .local v0, c:C
    if-eqz v0, :cond_0

    and-int v5, v0, v6

    if-nez v5, :cond_0

    .line 509
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "inconsistent.mapping"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 510
    :cond_0
    if-nez v0, :cond_1

    .line 511
    const/16 v5, 0x100

    new-array v5, v5, [C

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    or-int/2addr v5, v6

    int-to-char v0, v5

    .line 513
    aput-char v0, v4, v3

    .line 515
    :cond_1
    and-int/lit16 v2, v0, 0x7fff

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v0           #c:C
    .end local v3           #one:I
    .end local v4           #plane:[C
    :cond_2
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 518
    .restart local v4       #plane:[C
    aget-byte v5, p1, p0

    and-int/lit16 v3, v5, 0xff

    .line 519
    .restart local v3       #one:I
    aget-char v0, v4, v3

    .line 520
    .restart local v0       #c:C
    and-int v5, v0, v6

    if-eqz v5, :cond_3

    .line 521
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "inconsistent.mapping"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 522
    :cond_3
    aput-char p2, v4, v3

    .line 523
    return-void
.end method

.method static encodeStream(Ljava/io/InputStream;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "in"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList",
            "<[C>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    .local p1, planes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string/jumbo v18, "iso-8859-1"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 437
    .local v9, rd:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 438
    .local v8, line:Ljava/lang/String;
    const/4 v14, 0x0

    .line 439
    .local v14, state:I
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v10, v0, [B

    .line 440
    .local v10, seqs:[B
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 441
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 443
    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 445
    :pswitch_0
    const-string/jumbo v17, "begincidrange"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_1

    .line 446
    const/4 v14, 0x1

    goto :goto_0

    .line 447
    :cond_1
    const-string/jumbo v17, "begincidchar"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_2

    .line 448
    const/4 v14, 0x2

    goto :goto_0

    .line 449
    :cond_2
    const-string/jumbo v17, "usecmap"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_0

    .line 450
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 451
    .local v16, tk:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 452
    .local v15, t:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->readCmap(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 457
    .end local v15           #t:Ljava/lang/String;
    .end local v16           #tk:Ljava/util/StringTokenizer;
    :pswitch_1
    const-string/jumbo v17, "endcidrange"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_3

    .line 458
    const/4 v14, 0x0

    .line 459
    goto :goto_0

    .line 461
    :cond_3
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v16       #tk:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 463
    .restart local v15       #t:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int/lit8 v11, v17, -0x1

    .line 464
    .local v11, size:I
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 465
    .local v12, start:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 466
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 467
    .local v4, end:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 468
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 469
    .local v3, cid:I
    move-wide v6, v12

    .local v6, k:J
    :goto_1
    cmp-long v17, v6, v4

    if-gtz v17, :cond_0

    .line 470
    invoke-static {v6, v7, v11, v10}, Lcom/itextpdf/text/pdf/PdfEncodings;->breakLong(JI[B)V

    .line 471
    int-to-char v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v11, v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->encodeSequence(I[BCLjava/util/ArrayList;)V

    .line 472
    add-int/lit8 v3, v3, 0x1

    .line 469
    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    goto :goto_1

    .line 477
    .end local v3           #cid:I
    .end local v4           #end:J
    .end local v6           #k:J
    .end local v11           #size:I
    .end local v12           #start:J
    .end local v15           #t:Ljava/lang/String;
    .end local v16           #tk:Ljava/util/StringTokenizer;
    :pswitch_2
    const-string/jumbo v17, "endcidchar"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_4

    .line 478
    const/4 v14, 0x0

    .line 479
    goto/16 :goto_0

    .line 481
    :cond_4
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v16       #tk:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 483
    .restart local v15       #t:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int/lit8 v11, v17, -0x1

    .line 484
    .restart local v11       #size:I
    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 485
    .restart local v12       #start:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 486
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 487
    .restart local v3       #cid:I
    invoke-static {v12, v13, v11, v10}, Lcom/itextpdf/text/pdf/PdfEncodings;->breakLong(JI[B)V

    .line 488
    int-to-char v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v11, v10, v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->encodeSequence(I[BCLjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 493
    .end local v3           #cid:I
    .end local v11           #size:I
    .end local v12           #start:J
    .end local v15           #t:Ljava/lang/String;
    .end local v16           #tk:Ljava/util/StringTokenizer;
    :cond_5
    return-void

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isPdfDocEncoding(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    .line 294
    if-nez p0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v3

    .line 296
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 297
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 299
    .local v0, char1:C
    const/16 v4, 0x80

    if-lt v0, v4, :cond_2

    const/16 v4, 0xa0

    if-le v0, v4, :cond_3

    const/16 v4, 0xff

    if-gt v0, v4, :cond_3

    .line 297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static loadCmap(Ljava/lang/String;[[B)V
    .locals 5
    .parameter "name"
    .parameter "newline"

    .prologue
    .line 335
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, [[C

    .line 336
    .local v2, planes:[[C
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :try_start_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [[C

    move-object v2, v0

    .line 338
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    if-nez v2, :cond_0

    .line 340
    :try_start_2
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/PdfEncodings;->readCmap(Ljava/lang/String;[[B)[[C

    move-result-object v2

    .line 341
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 342
    :try_start_3
    sget-object v3, Lcom/itextpdf/text/pdf/PdfEncodings;->cmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    :cond_0
    return-void

    .line 338
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 346
    .end local v2           #planes:[[C
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 343
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #planes:[[C
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method static readCmap(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<[C>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    .local p1, planes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com/itextpdf/text/pdf/fonts/cmaps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, fullName:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 429
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 430
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "the.cmap.1.was.not.found"

    invoke-static {v3, p0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_0
    invoke-static {v1, p1}, Lcom/itextpdf/text/pdf/PdfEncodings;->encodeStream(Ljava/io/InputStream;Ljava/util/ArrayList;)V

    .line 432
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 433
    return-void
.end method

.method static readCmap(Ljava/lang/String;[[B)[[C
    .locals 6
    .parameter "name"
    .parameter "newline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, planes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[C>;"
    const/16 v3, 0x100

    new-array v3, v3, [C

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-static {p0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->readCmap(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 418
    if-eqz p1, :cond_0

    .line 419
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 420
    aget-object v3, p1, v0

    array-length v3, v3

    aget-object v4, p1, v0

    const/16 v5, 0x7fff

    invoke-static {v3, v4, v5, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->encodeSequence(I[BCLjava/util/ArrayList;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0           #k:I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [[C

    .line 423
    .local v2, ret:[[C
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    return-object v3
.end method
