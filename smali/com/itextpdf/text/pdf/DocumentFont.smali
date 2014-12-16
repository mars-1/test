.class public Lcom/itextpdf/text/pdf/DocumentFont;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "DocumentFont.java"


# static fields
.field private static cjkEncs:[Ljava/lang/String;

.field private static cjkEncs2:[Ljava/lang/String;

.field private static cjkNames:[Ljava/lang/String;

.field private static cjkNames2:[Ljava/lang/String;

.field private static final stdEnc:[I


# instance fields
.field private Ascender:F

.field private CapHeight:F

.field private Descender:F

.field private ItalicAngle:F

.field private cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

.field private diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

.field private font:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private fontName:Ljava/lang/String;

.field private isType0:Z

.field private llx:F

.field private lly:F

.field private metrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

.field private uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

.field private urx:F

.field private ury:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "HeiseiMin-W3"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HeiseiKakuGo-W5"

    aput-object v1, v0, v4

    const-string/jumbo v1, "STSong-Light"

    aput-object v1, v0, v5

    const-string/jumbo v1, "MHei-Medium"

    aput-object v1, v0, v6

    const-string/jumbo v1, "MSung-Light"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "HYGoThic-Medium"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "HYSMyeongJo-Medium"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "MSungStd-Light"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "STSongStd-Light"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "HYSMyeongJoStd-Medium"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "KozMinPro-Regular"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames:[Ljava/lang/String;

    .line 80
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UniJIS-UCS2-H"

    aput-object v1, v0, v3

    const-string/jumbo v1, "UniJIS-UCS2-H"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UniGB-UCS2-H"

    aput-object v1, v0, v5

    const-string/jumbo v1, "UniCNS-UCS2-H"

    aput-object v1, v0, v6

    const-string/jumbo v1, "UniCNS-UCS2-H"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "UniKS-UCS2-H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "UniKS-UCS2-H"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "UniCNS-UCS2-H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "UniGB-UCS2-H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UniKS-UCS2-H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UniJIS-UCS2-H"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs:[Ljava/lang/String;

    .line 84
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "MSungStd-Light"

    aput-object v1, v0, v3

    const-string/jumbo v1, "STSongStd-Light"

    aput-object v1, v0, v4

    const-string/jumbo v1, "HYSMyeongJoStd-Medium"

    aput-object v1, v0, v5

    const-string/jumbo v1, "KozMinPro-Regular"

    aput-object v1, v0, v6

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames2:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UniCNS-UCS2-H"

    aput-object v1, v0, v3

    const-string/jumbo v1, "UniGB-UCS2-H"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UniKS-UCS2-H"

    aput-object v1, v0, v5

    const-string/jumbo v1, "UniJIS-UCS2-H"

    aput-object v1, v0, v6

    const-string/jumbo v1, "UniCNS-UTF16-H"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "UniGB-UTF16-H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "UniKS-UTF16-H"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "UniJIS-UTF16-H"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs2:[Ljava/lang/String;

    .line 89
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/DocumentFont;->stdEnc:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x44t 0x20t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x39t 0x20t 0x0t 0x0t
        0x3at 0x20t 0x0t 0x0t
        0x1t 0xfbt 0x0t 0x0t
        0x2t 0xfbt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x13t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x21t 0x20t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0x22t 0x20t 0x0t 0x0t
        0x1at 0x20t 0x0t 0x0t
        0x1et 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x26t 0x20t 0x0t 0x0t
        0x30t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xc6t 0x2t 0x0t 0x0t
        0xdct 0x2t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0xd8t 0x2t 0x0t 0x0t
        0xd9t 0x2t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdat 0x2t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xddt 0x2t 0x0t 0x0t
        0xdbt 0x2t 0x0t 0x0t
        0xc7t 0x2t 0x0t 0x0t
        0x14t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x1t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0x52t 0x1t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0x53t 0x1t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 7
    .parameter "refFont"

    .prologue
    const/high16 v6, -0x3cb8

    const/4 v5, 0x0

    .line 108
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 58
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    .line 62
    new-instance v4, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 64
    const/high16 v4, 0x4448

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Ascender:F

    .line 65
    const/high16 v4, 0x442f

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->CapHeight:F

    .line 66
    iput v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Descender:F

    .line 67
    const/4 v4, 0x0

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ItalicAngle:F

    .line 68
    const/high16 v4, -0x3db8

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 69
    iput v6, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 70
    const/high16 v4, 0x42c8

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 71
    const/high16 v4, 0x4461

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 72
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    .line 109
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->encoding:Ljava/lang/String;

    .line 110
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontSpecific:Z

    .line 111
    iput-object p1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 112
    const/4 v4, 0x4

    iput v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontType:I

    .line 113
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 114
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    .line 116
    .local v3, subType:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRUETYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->doType1TT()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    sget-object v4, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    sget-object v5, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    sget-object v4, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    sget-object v5, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, enc:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs2:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 133
    sget-object v4, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs2:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 135
    const/4 v4, 0x3

    if-le v2, v4, :cond_5

    .line 136
    add-int/lit8 v2, v2, -0x4

    .line 137
    :cond_5
    :try_start_1
    sget-object v4, Lcom/itextpdf/text/pdf/DocumentFont;->cjkNames2:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lcom/itextpdf/text/pdf/DocumentFont;->cjkEncs2:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_7
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Identity-H"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/DocumentFont;->processType0(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 147
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    goto/16 :goto_0
.end method

.method private decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;
    .locals 2
    .parameter "ps"

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->isHexWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    const-string/jumbo v1, "UnicodeBigUnmarked"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private doType1TT()V
    .locals 18

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 273
    .local v6, enc:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v6, :cond_1

    .line 274
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 305
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->WIDTHS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v13

    .line 306
    .local v13, newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->FIRSTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    .line 307
    .local v9, first:Lcom/itextpdf/text/pdf/PdfNumber;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->LASTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v11

    .line 308
    .local v11, last:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v15, Lcom/itextpdf/text/pdf/DocumentFont;->BuiltinFonts14:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    const-string/jumbo v16, "Cp1252"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 316
    .local v1, bf:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v5

    .line 317
    .local v5, e:[I
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1
    array-length v15, v5

    if-ge v10, v15, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget v16, v5, v10

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v12

    .line 319
    .local v12, n:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v16, v5, v10

    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v12, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v16

    aput v16, v15, v12

    .line 317
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 276
    .end local v1           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #e:[I
    .end local v9           #first:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v10           #k:I
    .end local v11           #last:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v12           #n:I
    .end local v13           #newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object v15, v6

    .line 277
    check-cast v15, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0

    :cond_2
    move-object v7, v6

    .line 279
    check-cast v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 280
    .local v7, encDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->BASEENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 281
    if-nez v6, :cond_3

    .line 282
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 285
    :goto_2
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->DIFFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v4

    .line 286
    .local v4, diffs:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_0

    .line 287
    new-instance v15, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v15}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, currentNumber:I
    const/4 v10, 0x0

    .restart local v10       #k:I
    :goto_3
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v15

    if-ge v10, v15, :cond_0

    .line 290
    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    .line 291
    .local v14, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 292
    check-cast v14, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v14           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 289
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .end local v3           #currentNumber:I
    .end local v4           #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #k:I
    :cond_3
    move-object v15, v6

    .line 284
    check-cast v15, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_2

    .line 294
    .restart local v3       #currentNumber:I
    .restart local v4       #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v10       #k:I
    .restart local v14       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_4
    check-cast v14, Lcom/itextpdf/text/pdf/PdfName;

    .end local v14           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/itextpdf/text/pdf/GlyphList;->nameToUnicode(Ljava/lang/String;)[I

    move-result-object v2

    .line 295
    .local v2, c:[I
    if-eqz v2, :cond_5

    array-length v15, v2

    if-lez v15, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v16, 0x0

    aget v16, v2, v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    const/16 v16, 0x0

    aget v16, v2, v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 299
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 313
    .end local v2           #c:[I
    .end local v3           #currentNumber:I
    .end local v4           #diffs:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #encDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v10           #k:I
    .restart local v9       #first:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v11       #last:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v13       #newWidths:Lcom/itextpdf/text/pdf/PdfArray;
    :catch_0
    move-exception v5

    .line 314
    .local v5, e:Ljava/lang/Exception;
    new-instance v15, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v15, v5}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v15

    .line 321
    .restart local v1       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .local v5, e:[I
    .restart local v10       #k:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v15, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v5

    .line 323
    const/4 v10, 0x0

    :goto_5
    array-length v15, v5

    if-ge v10, v15, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    aget v16, v5, v10

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v12

    .line 325
    .restart local v12       #n:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v16, v5, v10

    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v12, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getRawWidth(ILjava/lang/String;)I

    move-result v16

    aput v16, v15, v12

    .line 323
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 327
    .end local v12           #n:I
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->diffmap:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 329
    :cond_8
    const/4 v15, 0x1

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->Ascender:F

    .line 330
    const/4 v15, 0x2

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->CapHeight:F

    .line 331
    const/4 v15, 0x3

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->Descender:F

    .line 332
    const/4 v15, 0x4

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->ItalicAngle:F

    .line 333
    const/4 v15, 0x5

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 334
    const/4 v15, 0x6

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 335
    const/4 v15, 0x7

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 336
    const/16 v15, 0x8

    const/high16 v16, 0x447a

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 338
    .end local v1           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #e:[I
    .end local v10           #k:I
    :cond_9
    if-eqz v9, :cond_a

    if-eqz v11, :cond_a

    if-eqz v13, :cond_a

    .line 339
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 340
    .local v8, f:I
    const/4 v10, 0x0

    .restart local v10       #k:I
    :goto_6
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v15

    if-ge v10, v15, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    add-int v16, v8, v10

    invoke-virtual {v13, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v17

    aput v17, v15, v16

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 344
    .end local v8           #f:I
    .end local v10           #k:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/DocumentFont;->font:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 345
    return-void
.end method

.method private fillEncoding(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 8
    .parameter "encoding"

    .prologue
    const/16 v7, 0x100

    .line 382
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    :cond_0
    new-array v1, v7, [B

    .line 384
    .local v1, b:[B
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 385
    int-to-byte v5, v4

    aput-byte v5, v1, v4

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const-string/jumbo v3, "Cp1252"

    .line 387
    .local v3, enc:Ljava/lang/String;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    const-string/jumbo v3, "MacRoman"

    .line 389
    :cond_2
    invoke-static {v1, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, cv:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 391
    .local v0, arr:[C
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 392
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v6, v0, v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    .end local v0           #arr:[C
    .end local v1           #b:[B
    .end local v2           #cv:Ljava/lang/String;
    .end local v3           #enc:Ljava/lang/String;
    .end local v4           #k:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_2
    if-ge v4, v7, :cond_4

    .line 397
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    sget-object v6, Lcom/itextpdf/text/pdf/DocumentFont;->stdEnc:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 400
    :cond_4
    return-void
.end method

.method private fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "fontDesc"

    .prologue
    .line 348
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 351
    .local v2, v:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v2, :cond_2

    .line 352
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Ascender:F

    .line 353
    :cond_2
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->CapHeight:F

    .line 356
    :cond_3
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_4

    .line 358
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Descender:F

    .line 359
    :cond_4
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_5

    .line 361
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ItalicAngle:F

    .line 362
    :cond_5
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 363
    .local v0, bbox:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_0

    .line 364
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 365
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 366
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 367
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    .line 368
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    iget v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 369
    iget v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 370
    .local v1, t:F
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    .line 371
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    .line 373
    .end local v1           #t:F
    :cond_6
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    iget v4, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 374
    iget v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 375
    .restart local v1       #t:F
    iget v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    iput v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    .line 376
    iput v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    goto/16 :goto_0
.end method

.method private fillMetrics([BLcom/itextpdf/text/pdf/IntHashtable;I)V
    .locals 24
    .parameter "touni"
    .parameter "widths"
    .parameter "dw"

    .prologue
    .line 206
    :try_start_0
    new-instance v16, Lcom/itextpdf/text/pdf/PdfContentParser;

    new-instance v20, Lcom/itextpdf/text/pdf/PRTokeniser;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentParser;-><init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V

    .line 207
    .local v16, ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    const/4 v14, 0x0

    .line 208
    .local v14, ob:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v12, 0x0

    .line 209
    .local v12, last:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 210
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 211
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "beginbfchar"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 212
    move-object v0, v12

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 213
    .local v13, n:I
    const/4 v11, 0x0

    .local v11, k:I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, cid:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v17

    .line 216
    .local v17, uni:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 217
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 218
    .local v8, cidc:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 219
    .local v18, unic:I
    move/from16 v19, p3

    .line 220
    .local v19, w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 221
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v19

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v8, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v8           #cidc:I
    .end local v18           #unic:I
    .end local v19           #w:I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 226
    .end local v3           #cid:Ljava/lang/String;
    .end local v11           #k:I
    .end local v13           #n:I
    .end local v17           #uni:Ljava/lang/String;
    :cond_3
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "beginbfrange"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 227
    move-object v0, v12

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v13

    .line 228
    .restart local v13       #n:I
    const/4 v11, 0x0

    .restart local v11       #k:I
    :goto_2
    if-ge v11, v13, :cond_0

    .line 229
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, cid1:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, cid2:Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 232
    .local v5, cid1c:I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 233
    .local v7, cid2c:I
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 234
    .local v15, ob2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 235
    check-cast v15, Lcom/itextpdf/text/pdf/PdfString;

    .end local v15           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v17

    .line 236
    .restart local v17       #uni:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 237
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 238
    .restart local v18       #unic:I
    :goto_3
    if-gt v5, v7, :cond_8

    .line 239
    move/from16 v19, p3

    .line 240
    .restart local v19       #w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 241
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v19

    .line 242
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v5, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 247
    .end local v17           #uni:Ljava/lang/String;
    .end local v18           #unic:I
    .end local v19           #w:I
    .restart local v15       #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    move-object v0, v15

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v2, v0

    .line 248
    .local v2, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 249
    invoke-virtual {v2, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->decodeString(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v17

    .line 250
    .restart local v17       #uni:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 251
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 252
    .restart local v18       #unic:I
    move/from16 v19, p3

    .line 253
    .restart local v19       #w:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 254
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v19

    .line 255
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v5, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v18           #unic:I
    .end local v19           #w:I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 228
    .end local v2           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #j:I
    .end local v15           #ob2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v17           #uni:Ljava/lang/String;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 263
    .end local v4           #cid1:Ljava/lang/String;
    .end local v5           #cid1c:I
    .end local v6           #cid2:Ljava/lang/String;
    .end local v7           #cid2c:I
    .end local v11           #k:I
    .end local v13           #n:I
    :cond_9
    move-object v12, v14

    goto/16 :goto_0

    .line 266
    .end local v12           #last:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v14           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v16           #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    :catch_0
    move-exception v9

    .line 267
    .local v9, e:Ljava/lang/Exception;
    new-instance v20, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 269
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #last:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v14       #ob:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v16       #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    :cond_a
    return-void
.end method

.method private processType0(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 9
    .parameter "font"

    .prologue
    .line 154
    :try_start_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 155
    .local v6, toUniObject:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 156
    .local v1, df:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 157
    .local v0, cidft:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 158
    .local v3, dwo:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v2, 0x3e8

    .line 159
    .local v2, dw:I
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 161
    :cond_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/DocumentFont;->readWidths(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v7

    .line 162
    .local v7, widths:Lcom/itextpdf/text/pdf/IntHashtable;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 163
    .local v5, fontDesc:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/DocumentFont;->fillFontDesc(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 164
    if-eqz v6, :cond_1

    .line 165
    check-cast v6, Lcom/itextpdf/text/pdf/PRStream;

    .end local v6           #toUniObject:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v8

    invoke-direct {p0, v8, v7, v2}, Lcom/itextpdf/text/pdf/DocumentFont;->fillMetrics([BLcom/itextpdf/text/pdf/IntHashtable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    return-void

    .line 168
    .end local v0           #cidft:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #df:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #dw:I
    .end local v3           #dwo:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v5           #fontDesc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #widths:Lcom/itextpdf/text/pdf/IntHashtable;
    :catch_0
    move-exception v4

    .line 169
    .local v4, e:Ljava/lang/Exception;
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method private readWidths(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 10
    .parameter "ws"

    .prologue
    .line 174
    new-instance v4, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 175
    .local v4, hh:Lcom/itextpdf/text/pdf/IntHashtable;
    if-nez p1, :cond_1

    .line 194
    :cond_0
    return-object v4

    .line 177
    :cond_1
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 178
    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 179
    .local v1, c1:I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 180
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v7

    .line 181
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 182
    .local v0, a2:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 183
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 184
    .local v3, c2:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #c1:I
    .local v2, c1:I
    invoke-virtual {v4, v1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 182
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    .end local v2           #c1:I
    .restart local v1       #c1:I
    goto :goto_1

    .line 188
    .end local v0           #a2:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #c2:I
    .end local v5           #j:I
    :cond_2
    check-cast v7, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v7           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    .line 189
    .restart local v3       #c2:I
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 190
    .local v8, w:I
    :goto_2
    if-gt v1, v3, :cond_3

    .line 191
    invoke-virtual {v4, v1, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 177
    .end local v3           #c2:I
    .end local v8           #w:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public charExists(I)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v0

    .line 662
    :goto_0
    return v0

    .line 658
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 662
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v0

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 6
    .parameter "char1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v2, :cond_0

    .line 632
    int-to-char v2, p1

    const-string/jumbo v3, "UnicodeBigUnmarked"

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(CLjava/lang/String;)[B

    move-result-object v2

    .line 646
    :goto_0
    return-object v2

    .line 633
    :cond_0
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v2, :cond_2

    .line 634
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 635
    .local v1, ws:[I
    if-eqz v1, :cond_1

    .line 636
    aget v0, v1, v4

    .line 637
    .local v0, g:I
    const/4 v2, 0x2

    new-array v2, v2, [B

    div-int/lit16 v3, v0, 0x100

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    int-to-byte v3, v0

    aput-byte v3, v2, v5

    goto :goto_0

    .line 640
    .end local v0           #g:I
    :cond_1
    new-array v2, v4, [B

    goto :goto_0

    .line 643
    .end local v1           #ws:[I
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    new-array v2, v5, [B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_0

    .line 646
    :cond_3
    new-array v2, v4, [B

    goto :goto_0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 17
    .parameter "text"

    .prologue
    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v14, :cond_1

    .line 589
    const-string/jumbo v14, "UnicodeBigUnmarked"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 624
    :cond_0
    :goto_0
    return-object v1

    .line 590
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v14, :cond_4

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 592
    .local v6, chars:[C
    array-length v9, v6

    .line 593
    .local v9, len:I
    mul-int/lit8 v14, v9, 0x2

    new-array v1, v14, [B

    .line 594
    .local v1, b:[B
    const/4 v3, 0x0

    .line 595
    .local v3, bptr:I
    const/4 v8, 0x0

    .local v8, k:I
    move v4, v3

    .end local v3           #bptr:I
    .local v4, bptr:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/Integer;

    aget-char v16, v6, v8

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 597
    .local v13, ws:[I
    if-eqz v13, :cond_2

    .line 598
    const/4 v14, 0x0

    aget v7, v13, v14

    .line 599
    .local v7, g:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #bptr:I
    .restart local v3       #bptr:I
    div-int/lit16 v14, v7, 0x100

    int-to-byte v14, v14

    aput-byte v14, v1, v4

    .line 600
    add-int/lit8 v4, v3, 0x1

    .end local v3           #bptr:I
    .restart local v4       #bptr:I
    int-to-byte v14, v7

    aput-byte v14, v1, v3

    .end local v7           #g:I
    :cond_2
    move v3, v4

    .line 595
    .end local v4           #bptr:I
    .restart local v3       #bptr:I
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    .end local v3           #bptr:I
    .restart local v4       #bptr:I
    goto :goto_1

    .line 603
    .end local v13           #ws:[I
    :cond_3
    array-length v14, v1

    if-eq v4, v14, :cond_0

    .line 606
    new-array v10, v4, [B

    .line 607
    .local v10, nb:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v14, v10, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    .line 608
    goto :goto_0

    .line 612
    .end local v1           #b:[B
    .end local v4           #bptr:I
    .end local v6           #chars:[C
    .end local v8           #k:I
    .end local v9           #len:I
    .end local v10           #nb:[B
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 613
    .local v5, cc:[C
    array-length v14, v5

    new-array v1, v14, [B

    .line 614
    .restart local v1       #b:[B
    const/4 v11, 0x0

    .line 615
    .local v11, ptr:I
    const/4 v8, 0x0

    .restart local v8       #k:I
    :goto_2
    array-length v14, v5

    if-ge v8, v14, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v15, v5, v8

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 617
    add-int/lit8 v12, v11, 0x1

    .end local v11           #ptr:I
    .local v12, ptr:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    aget-char v15, v5, v8

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v11

    move v11, v12

    .line 615
    .end local v12           #ptr:I
    .restart local v11       #ptr:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 619
    :cond_6
    array-length v14, v1

    if-eq v11, v14, :cond_0

    .line 622
    new-array v2, v11, [B

    .line 623
    .local v2, b2:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v1, v14, v2, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 624
    goto :goto_0
.end method

.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 481
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 1
    .parameter "c"

    .prologue
    .line 681
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/DocumentFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 3
    .parameter "key"
    .parameter "fontSize"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x447a

    .line 427
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v0

    .line 453
    :goto_0
    :pswitch_0
    return v0

    .line 429
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Ascender:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 434
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->CapHeight:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 437
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->Descender:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 439
    :pswitch_4
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ItalicAngle:F

    goto :goto_0

    .line 441
    :pswitch_5
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 443
    :pswitch_6
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->lly:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 445
    :pswitch_7
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 447
    :pswitch_8
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->ury:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 451
    :pswitch_9
    iget v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->urx:F

    iget v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->llx:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 467
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return-object v0
.end method

.method getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->refFont:Lcom/itextpdf/text/pdf/PRIndirectReference;

    return-object v0
.end method

.method public getKerning(II)I
    .locals 1
    .parameter "char1"
    .parameter "char2"

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 686
    const/4 v0, 0x0

    return-object v0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method getUni2Byte()Lcom/itextpdf/text/pdf/IntHashtable;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/itextpdf/text/pdf/DocumentFont;->uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;

    return-object v0
.end method

.method public getWidth(I)I
    .locals 3
    .parameter "char1"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(I)I

    move-result v1

    .line 564
    :goto_0
    return v1

    .line 556
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 558
    .local v0, ws:[I
    if-eqz v0, :cond_1

    .line 559
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0

    .line 561
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 564
    .end local v0           #ws:[I
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(I)I

    move-result v1

    goto :goto_0
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    .line 569
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_1

    .line 570
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->cjkMirror:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v5, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v3

    .line 583
    :cond_0
    :goto_0
    return v3

    .line 571
    :cond_1
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->isType0:Z

    if-eqz v5, :cond_3

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 573
    .local v0, chars:[C
    array-length v2, v0

    .line 574
    .local v2, len:I
    const/4 v3, 0x0

    .line 575
    .local v3, total:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 576
    iget-object v5, p0, Lcom/itextpdf/text/pdf/DocumentFont;->metrics:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    aget-char v7, v0, v1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 577
    .local v4, ws:[I
    if-eqz v4, :cond_2

    .line 578
    const/4 v5, 0x1

    aget v5, v4, v5

    add-int/2addr v3, v5

    .line 575
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v0           #chars:[C
    .end local v1           #k:I
    .end local v2           #len:I
    .end local v3           #total:I
    .end local v4           #ws:[I
    :cond_3
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidth(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public setKerning(III)Z
    .locals 1
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 672
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 0
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    return-void
.end method
