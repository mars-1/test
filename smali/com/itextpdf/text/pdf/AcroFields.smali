.class public Lcom/itextpdf/text/pdf/AcroFields;
.super Ljava/lang/Object;
.source "AcroFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/AcroFields$1;,
        Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;,
        Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;,
        Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;,
        Lcom/itextpdf/text/pdf/AcroFields$InstHit;,
        Lcom/itextpdf/text/pdf/AcroFields$Item;
    }
.end annotation


# static fields
.field public static final DA_COLOR:I = 0x2

.field public static final DA_FONT:I = 0x0

.field public static final DA_SIZE:I = 0x1

.field public static final FIELD_TYPE_CHECKBOX:I = 0x2

.field public static final FIELD_TYPE_COMBO:I = 0x6

.field public static final FIELD_TYPE_LIST:I = 0x5

.field public static final FIELD_TYPE_NONE:I = 0x0

.field public static final FIELD_TYPE_PUSHBUTTON:I = 0x1

.field public static final FIELD_TYPE_RADIOBUTTON:I = 0x3

.field public static final FIELD_TYPE_SIGNATURE:I = 0x7

.field public static final FIELD_TYPE_TEXT:I = 0x4

.field private static final buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

.field private static final stdFieldFontNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private extensionFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field private extraMarginLeft:F

.field private extraMarginTop:F

.field private fieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;"
        }
    .end annotation
.end field

.field fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;"
        }
    .end annotation
.end field

.field private generateAppearances:Z

.field private lastWasString:Z

.field private localFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private sigNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private substitutionFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field private topFirst:I

.field private totalRevisions:I

.field writer:Lcom/itextpdf/text/pdf/PdfWriter;

.field private xfa:Lcom/itextpdf/text/pdf/XfaForm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    .line 2373
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "CoBO"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Courier-BoldOblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "CoBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Courier-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "CoOb"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Courier-Oblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "Cour"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Courier"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "HeBO"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Helvetica-BoldOblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "HeBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Helvetica-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "HeOb"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Helvetica-Oblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "Helv"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Helvetica"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "Symb"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Symbol"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "TiBI"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Times-BoldItalic"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "TiBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Times-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "TiIt"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Times-Italic"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "TiRo"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Times-Roman"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "ZaDb"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "ZapfDingbats"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "HySm"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "HYSMyeongJo-Medium"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "HyGo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "HYGoThic-Medium"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "KaGo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "HeiseiKakuGo-W5"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "KaMi"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "HeiseiMin-W3"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniJIS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "MHei"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "MHei-Medium"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniCNS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "MSun"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "MSung-Light"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniCNS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2393
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string/jumbo v1, "STSo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "STSong-Light"

    aput-object v3, v2, v4

    const-string/jumbo v3, "UniGB-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "reader"
    .parameter "writer"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    .line 141
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 142
    iput-object p2, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 144
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/XfaForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    instance-of v1, p2, Lcom/itextpdf/text/pdf/PdfStamperImp;

    if-eqz v1, :cond_0

    .line 150
    check-cast p2, Lcom/itextpdf/text/pdf/PdfStamperImp;

    .end local p2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->append:Z

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->fill()V

    .line 153
    return-void

    .line 146
    .restart local p2
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/AcroFields;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    return-void
.end method

.method private getListOption(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9
    .parameter "fieldName"
    .parameter "idx"

    .prologue
    const/4 v6, 0x0

    .line 302
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 303
    .local v3, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_1

    .line 324
    :cond_0
    return-object v6

    .line 305
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 306
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 309
    .local v6, ret:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 310
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 312
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    :try_start_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 313
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v7, v0

    invoke-virtual {v7, p2}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 315
    :cond_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 309
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    const-string/jumbo v7, ""

    aput-object v7, v6, v4

    goto :goto_1
.end method

.method private markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 2246
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->append:Z

    if-nez v0, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    check-cast v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I
    .locals 6
    .parameter "array"
    .parameter "refo"

    .prologue
    .line 1588
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1589
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    .line 1598
    :goto_0
    return v4

    :cond_1
    move-object v3, p2

    .line 1590
    check-cast v3, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1591
    .local v3, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1592
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 1593
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1591
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1595
    .restart local v2       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1596
    add-int/lit8 v1, v0, -0x1

    .end local v0           #j:I
    .local v1, j:I
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move v0, v1

    .end local v1           #j:I
    .restart local v0       #j:I
    goto :goto_2

    .line 1598
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    goto :goto_0
.end method

.method public static splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 17
    .parameter "da"

    .prologue
    .line 507
    :try_start_0
    new-instance v12, Lcom/itextpdf/text/pdf/PRTokeniser;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 508
    .local v12, tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v11, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x3

    new-array v10, v14, [Ljava/lang/Object;

    .line 510
    .local v10, ret:[Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 511
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v14, v15, :cond_0

    .line 513
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v14, v15, :cond_5

    .line 514
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v8

    .line 515
    .local v8, operator:Ljava/lang/String;
    const-string/jumbo v14, "Tf"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 516
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_1

    .line 517
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v10, v14

    .line 518
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v16, v10, v15

    .line 545
    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    .end local v8           #operator:Ljava/lang/String;
    .end local v10           #ret:[Ljava/lang/Object;
    .end local v11           #stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v6

    .line 553
    .local v6, ioe:Ljava/io/IOException;
    new-instance v14, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v14, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 521
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v8       #operator:Ljava/lang/String;
    .restart local v10       #ret:[Ljava/lang/Object;
    .restart local v11       #stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_2
    :try_start_1
    const-string/jumbo v14, "g"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 522
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_1

    .line 523
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 524
    .local v4, gray:F
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-eqz v14, :cond_1

    .line 525
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-direct {v15, v4}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    aput-object v15, v10, v14

    goto :goto_1

    .line 528
    .end local v4           #gray:F
    :cond_3
    const-string/jumbo v14, "rg"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 529
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 530
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 531
    .local v9, red:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 532
    .local v5, green:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 533
    .local v2, blue:F
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v15, v9, v5, v2}, Lcom/itextpdf/text/BaseColor;-><init>(FFF)V

    aput-object v15, v10, v14

    goto/16 :goto_1

    .line 536
    .end local v2           #blue:F
    .end local v5           #green:F
    .end local v9           #red:F
    :cond_4
    const-string/jumbo v14, "k"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 537
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    .line 538
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 539
    .local v3, cyan:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 540
    .local v7, magenta:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 541
    .local v13, yellow:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 542
    .local v1, black:F
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/pdf/CMYKColor;

    invoke-direct {v15, v3, v7, v13, v1}, Lcom/itextpdf/text/pdf/CMYKColor;-><init>(FFFF)V

    aput-object v15, v10, v14

    goto/16 :goto_1

    .line 548
    .end local v1           #black:F
    .end local v3           #cyan:F
    .end local v7           #magenta:F
    .end local v8           #operator:Ljava/lang/String;
    .end local v13           #yellow:F
    :cond_5
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 550
    :cond_6
    return-object v10
.end method

.method private updateByteRange(Lcom/itextpdf/text/pdf/PdfPKCS7;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 10
    .parameter "pkcs7"
    .parameter "v"

    .prologue
    .line 2219
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2220
    .local v0, b:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v6

    .line 2222
    .local v6, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2223
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 2224
    .local v1, buf:[B
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 2225
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 2226
    .local v7, start:I
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 2227
    .local v4, length:I
    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 2228
    :goto_1
    if-lez v4, :cond_0

    .line 2229
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v6, v1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v5

    .line 2230
    .local v5, rd:I
    if-gtz v5, :cond_1

    .line 2224
    .end local v5           #rd:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2232
    .restart local v5       #rd:I
    :cond_1
    sub-int/2addr v4, v5

    .line 2233
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v8, v5}, Lcom/itextpdf/text/pdf/PdfPKCS7;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2237
    .end local v1           #buf:[B
    .end local v3           #k:I
    .end local v4           #length:I
    .end local v5           #rd:I
    .end local v7           #start:I
    :catch_0
    move-exception v2

    .line 2238
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2241
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    throw v8

    .restart local v1       #buf:[B
    .restart local v3       #k:I
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2243
    :goto_3
    return-void

    .line 2241
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v1           #buf:[B
    .end local v3           #k:I
    :catch_2
    move-exception v9

    goto :goto_2
.end method


# virtual methods
.method public addSubstitutionFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2356
    return-void
.end method

.method public decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V
    .locals 34
    .parameter "merged"
    .parameter "tx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 558
    const/16 v18, 0x0

    .line 560
    .local v18, flags:I
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 561
    .local v14, da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_4

    .line 562
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v15

    .line 563
    .local v15, dab:[Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, v15, v2

    if-eqz v2, :cond_0

    .line 564
    const/4 v2, 0x1

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setFontSize(F)V

    .line 565
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v15, v2

    if-eqz v2, :cond_1

    .line 566
    const/4 v2, 0x2

    aget-object v2, v15, v2

    check-cast v2, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setTextColor(Lcom/itextpdf/text/BaseColor;)V

    .line 567
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v15, v2

    if-eqz v2, :cond_4

    .line 568
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 569
    .local v21, font:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v21, :cond_4

    .line 570
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 571
    if-eqz v21, :cond_4

    .line 572
    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 573
    .local v26, po:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_f

    move-object/from16 v27, v26

    .line 574
    check-cast v27, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 575
    .local v27, por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v12, Lcom/itextpdf/text/pdf/DocumentFont;

    move-object/from16 v2, v26

    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-direct {v12, v2}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 576
    .local v12, bp:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 577
    new-instance v29, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 578
    .local v29, porkey:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/BaseFont;

    .line 579
    .local v28, porf:Lcom/itextpdf/text/pdf/BaseFont;
    if-nez v28, :cond_3

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 581
    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 582
    .local v20, fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v17

    .line 583
    .local v17, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v17, :cond_3

    .line 584
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE2:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    check-cast v30, Lcom/itextpdf/text/pdf/PRStream;

    .line 585
    .local v30, prs:Lcom/itextpdf/text/pdf/PRStream;
    if-nez v30, :cond_2

    .line 586
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE3:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    check-cast v30, Lcom/itextpdf/text/pdf/PRStream;

    .line 587
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_2
    if-nez v30, :cond_e

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v17           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_3
    :goto_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/itextpdf/text/pdf/TextField;

    if-eqz v2, :cond_4

    move-object/from16 v2, p2

    .line 602
    check-cast v2, Lcom/itextpdf/text/pdf/TextField;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/TextField;->setExtensionFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 629
    .end local v12           #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v15           #dab:[Ljava/lang/Object;
    .end local v21           #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #po:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v27           #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v28           #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v29           #porkey:Ljava/lang/Integer;
    :cond_4
    :goto_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    .line 630
    .local v24, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v24, :cond_6

    .line 631
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 632
    .local v8, ar:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/AcroFields;->getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    .line 633
    .local v11, border:Lcom/itextpdf/text/BaseColor;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/BaseField;->setBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 634
    if-eqz v11, :cond_5

    .line 635
    const/high16 v2, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 636
    :cond_5
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/AcroFields;->getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 638
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v31

    .line 639
    .local v31, rotation:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v31, :cond_6

    .line 640
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setRotation(I)V

    .line 643
    .end local v8           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #border:Lcom/itextpdf/text/BaseColor;
    .end local v31           #rotation:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 644
    .local v25, nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v18, 0x0

    .line 645
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    .line 646
    if-eqz v25, :cond_7

    .line 647
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    .line 648
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_12

    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_12

    .line 649
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    .line 656
    :cond_7
    :goto_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 657
    const/16 v18, 0x0

    .line 658
    if-eqz v25, :cond_8

    .line 659
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    .line 660
    :cond_8
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BaseField;->setOptions(I)V

    .line 661
    const/high16 v2, 0x100

    and-int v2, v2, v18

    if-eqz v2, :cond_a

    .line 662
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v23

    .line 663
    .local v23, maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v22, 0x0

    .line 664
    .local v22, len:I
    if-eqz v23, :cond_9

    .line 665
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v22

    .line 666
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BaseField;->setMaxCharacterLength(I)V

    .line 669
    .end local v22           #len:I
    .end local v23           #maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_a
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 670
    if-eqz v25, :cond_b

    .line 671
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 672
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setAlignment(I)V

    .line 677
    :cond_b
    :goto_3
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 678
    .local v13, bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v13, :cond_18

    .line 679
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v33

    .line 680
    .local v33, w:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v33, :cond_c

    .line 681
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 682
    :cond_c
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v32

    .line 683
    .local v32, s:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 684
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    .line 701
    .end local v32           #s:Lcom/itextpdf/text/pdf/PdfName;
    .end local v33           #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_d
    :goto_4
    return-void

    .line 592
    .end local v13           #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v24           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v25           #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v12       #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v15       #dab:[Ljava/lang/Object;
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v26       #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v27       #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v28       #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v29       #porkey:Ljava/lang/Integer;
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_e
    :try_start_0
    const-string/jumbo v2, "font.ttf"

    const-string/jumbo v3, "Identity-H"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 596
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 605
    .end local v12           #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v17           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v28           #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v29           #porkey:Ljava/lang/Integer;
    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/BaseFont;

    .line 606
    .local v10, bf:Lcom/itextpdf/text/pdf/BaseFont;
    if-nez v10, :cond_11

    .line 607
    sget-object v2, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 608
    .local v19, fn:[Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 610
    :try_start_1
    const-string/jumbo v16, "winansi"

    .line 611
    .local v16, enc:Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 612
    const/4 v2, 0x1

    aget-object v16, v19, v2

    .line 613
    :cond_10
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v10

    .line 614
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 616
    .end local v16           #enc:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 622
    .end local v19           #fn:[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    goto/16 :goto_1

    .line 650
    .end local v10           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v15           #dab:[Ljava/lang/Object;
    .end local v21           #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v24       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v25       #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_12
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_13

    and-int/lit8 v2, v18, 0x20

    if-eqz v2, :cond_13

    .line 651
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    goto/16 :goto_2

    .line 652
    :cond_13
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_7

    .line 653
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    goto/16 :goto_2

    .line 673
    :cond_14
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 674
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setAlignment(I)V

    goto/16 :goto_3

    .line 685
    .restart local v13       #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v32       #s:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v33       #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_15
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 686
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 687
    :cond_16
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 688
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 689
    :cond_17
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 690
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 693
    .end local v32           #s:Lcom/itextpdf/text/pdf/PdfName;
    .end local v33           #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_18
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    .line 694
    .local v9, bd:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v9, :cond_d

    .line 695
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_19

    .line 696
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 697
    :cond_19
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_d

    .line 698
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 594
    .end local v9           #bd:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v13           #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v24           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v25           #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v12       #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v15       #dab:[Ljava/lang/Object;
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v26       #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v27       #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v28       #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v29       #porkey:Ljava/lang/Integer;
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :catch_1
    move-exception v2

    goto/16 :goto_5
.end method

.method public exportAsFdf(Lcom/itextpdf/text/pdf/FdfWriter;)V
    .locals 8
    .parameter "writer"

    .prologue
    .line 458
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 459
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 460
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, name:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 462
    .local v4, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_0

    .line 464
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, value:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    if-eqz v6, :cond_1

    .line 466
    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setFieldAsString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setFieldAsName(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 470
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #v:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public extractRevision(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2284
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2285
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2286
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 2292
    :goto_0
    return-object v2

    .line 2288
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v0, v2, v4

    .line 2289
    .local v0, length:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v1

    .line 2290
    .local v1, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2291
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(I)V

    .line 2292
    new-instance v2, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;

    invoke-direct {v2, v1, v0, v3}, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;ILcom/itextpdf/text/pdf/AcroFields$1;)V

    goto :goto_0
.end method

.method fill()V
    .locals 20

    .prologue
    .line 156
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v18

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 158
    .local v15, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v15, :cond_1

    .line 253
    :cond_0
    return-void

    .line 160
    :cond_1
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 161
    .local v4, arrfds:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    if-eqz v18, :cond_0

    .line 163
    const/4 v8, 0x1

    .local v8, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v18

    move/from16 v0, v18

    if-gt v8, v0, :cond_e

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 165
    .local v12, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 166
    .local v3, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v3, :cond_3

    .line 163
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 168
    :cond_3
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 169
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 170
    .local v2, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_4

    .line 171
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 168
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    :cond_4
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 175
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 178
    :cond_5
    move-object/from16 v17, v2

    .line 179
    .local v17, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 180
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 181
    const-string/jumbo v11, ""

    .line 182
    .local v11, name:Ljava/lang/String;
    const/16 v16, 0x0

    .line 183
    .local v16, value:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v10, 0x0

    .line 184
    .local v10, lastV:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_3
    if-eqz v2, :cond_9

    .line 185
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 186
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 187
    .local v14, t:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_6

    .line 188
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 189
    :cond_6
    if-nez v10, :cond_7

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 190
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 191
    :cond_7
    if-nez v16, :cond_8

    if-eqz v14, :cond_8

    .line 192
    move-object/from16 v16, v2

    .line 193
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    if-nez v18, :cond_8

    if-eqz v10, :cond_8

    .line 194
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 196
    :cond_8
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 197
    goto :goto_3

    .line 198
    .end local v14           #t:Lcom/itextpdf/text/pdf/PdfString;
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 199
    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 200
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 201
    .local v6, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v6, :cond_b

    .line 202
    new-instance v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .end local v6           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;-><init>()V

    .line 203
    .restart local v6       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_b
    if-nez v16, :cond_d

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 209
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidget(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 210
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidgetRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 211
    if-eqz v15, :cond_c

    .line 212
    invoke-virtual {v5, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 213
    :cond_c
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addMerged(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 214
    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addPage(I)V

    .line 215
    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addTabOrder(I)V

    goto/16 :goto_2

    .line 208
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_4

    .line 220
    .end local v2           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v7           #j:I
    .end local v10           #lastV:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #value:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v17           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v13

    .line 221
    .local v13, sigFlags:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    and-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 223
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_5
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 224
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 225
    .restart local v2       #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_10

    .line 226
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 223
    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 229
    :cond_10
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 230
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_6

    .line 233
    :cond_11
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfArray;

    .line 234
    .local v9, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v9, :cond_f

    .line 236
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 237
    .restart local v5       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 238
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 239
    .restart local v14       #t:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_f

    .line 241
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    .line 242
    .restart local v11       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 244
    new-instance v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;-><init>()V

    .line 245
    .restart local v6       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 247
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidget(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 248
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidgetRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 249
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addMerged(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 250
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addPage(I)V

    .line 251
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addTabOrder(I)V

    goto :goto_6
.end method

.method getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 2
    .parameter "merged"
    .parameter "text"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 789
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 790
    .local v0, valueArr:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 791
    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v1

    return-object v1
.end method

.method getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 24
    .parameter "merged"
    .parameter "values"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 704
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    .line 705
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_5

    const/16 v21, 0x0

    aget-object v18, p2, v21

    .line 707
    .local v18, text:Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 708
    .local v19, tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 709
    :cond_0
    new-instance v19, Lcom/itextpdf/text/pdf/TextField;

    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/TextField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 710
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginLeft:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginTop:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/TextField;->setExtraMargin(FF)V

    .line 711
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setBorderWidth(F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setSubstitutionFonts(Ljava/util/ArrayList;)V

    .line 713
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V

    .line 715
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v17

    .line 716
    .local v17, rect:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 717
    .local v6, box:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getRotation()I

    move-result v21

    const/16 v22, 0x5a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getRotation()I

    move-result v21

    const/16 v22, 0x10e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 718
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 719
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/TextField;->setBox(Lcom/itextpdf/text/Rectangle;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .end local v6           #box:Lcom/itextpdf/text/Rectangle;
    .end local v17           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    :goto_1
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v9

    .line 728
    .local v9, fieldType:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 729
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_4

    const/16 v21, 0x0

    aget-object v21, p2, v21

    if-eqz v21, :cond_4

    .line 730
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 732
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 785
    :goto_2
    return-object v5

    .line 705
    .end local v9           #fieldType:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #text:Ljava/lang/String;
    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 724
    .restart local v18       #text:Ljava/lang/String;
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    check-cast v19, Lcom/itextpdf/text/pdf/TextField;

    .line 725
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    goto :goto_1

    .line 734
    .restart local v9       #fieldType:Lcom/itextpdf/text/pdf/PdfName;
    :cond_7
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 735
    new-instance v21, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v22, "an.appearance.was.requested.without.a.variable.text.field"

    invoke-static/range {v22 .. v22}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 736
    :cond_8
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v16

    .line 737
    .local v16, opt:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v10, 0x0

    .line 738
    .local v10, flags:I
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v14

    .line 739
    .local v14, nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v14, :cond_9

    .line 740
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v10

    .line 741
    :cond_9
    const/high16 v21, 0x2

    and-int v21, v21, v10

    if-eqz v21, :cond_a

    if-nez v16, :cond_a

    .line 742
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    goto :goto_2

    .line 745
    :cond_a
    if-eqz v16, :cond_13

    .line 746
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [Ljava/lang/String;

    .line 747
    .local v7, choices:[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v8, v0, [Ljava/lang/String;

    .line 748
    .local v8, choicesExp:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_c

    .line 749
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 750
    .local v15, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 751
    check-cast v15, Lcom/itextpdf/text/pdf/PdfString;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v13

    aput-object v21, v7, v13

    .line 748
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    move-object v4, v15

    .line 754
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 755
    .local v4, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v13

    .line 756
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v13

    goto :goto_4

    .line 759
    .end local v4           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    const/high16 v21, 0x2

    and-int v21, v21, v10

    if-eqz v21, :cond_f

    .line 760
    const/4 v13, 0x0

    :goto_5
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_d

    .line 761
    aget-object v21, v8, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 762
    aget-object v18, v7, v13

    .line 766
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    goto/16 :goto_2

    .line 760
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 769
    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v11, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    :goto_6
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_12

    .line 771
    const/4 v12, 0x0

    .local v12, j:I
    :goto_7
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_10

    .line 772
    aget-object v20, p2, v12

    .line 773
    .local v20, val:Ljava/lang/String;
    if-eqz v20, :cond_11

    aget-object v21, v8, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 774
    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .end local v20           #val:Ljava/lang/String;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 771
    .restart local v20       #val:Ljava/lang/String;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 779
    .end local v12           #j:I
    .end local v20           #val:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/TextField;->setChoices([Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/TextField;->setChoiceExports([Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/TextField;->setChoiceSelections(Ljava/util/ArrayList;)V

    .line 783
    .end local v7           #choices:[Ljava/lang/String;
    .end local v8           #choicesExp:[Ljava/lang/String;
    .end local v11           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13           #k:I
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getListAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 784
    .local v5, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getTopFirst()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    goto/16 :goto_2
.end method

.method public getAppearanceStates(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "fieldName"

    .prologue
    .line 265
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v12, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 266
    .local v3, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 267
    const/4 v12, 0x0

    .line 298
    :goto_0
    return-object v12

    .line 268
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 269
    .local v7, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    .line 270
    .local v11, vals:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v9

    .line 271
    .local v9, stringOpt:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v9, :cond_3

    .line 272
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_1
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 285
    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 286
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 287
    if-nez v1, :cond_5

    .line 284
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 275
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #k:I
    :cond_3
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 276
    .local v0, arrayOpt:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_1

    .line 277
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 278
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v10

    .line 279
    .local v10, valStr:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v10, :cond_4

    .line 280
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 289
    .end local v0           #arrayOpt:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #valStr:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 293
    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 297
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 298
    .local v8, out:[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getBlankSignatureNames()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2073
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2074
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2075
    .local v4, sigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2076
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2077
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2078
    .local v3, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2080
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2082
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2084
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v3           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-object v4
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "name"

    .prologue
    .line 816
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 817
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 818
    if-nez p1, :cond_1

    .line 819
    const/4 v11, 0x0

    .line 878
    :cond_0
    :goto_0
    return-object v11

    .line 820
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12, p1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 823
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v12, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 824
    .local v4, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v4, :cond_3

    .line 825
    const/4 v11, 0x0

    goto :goto_0

    .line 826
    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    .line 827
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 832
    .local v5, mergedDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 833
    .local v9, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v9, :cond_4

    .line 834
    const-string/jumbo v11, ""

    goto :goto_0

    .line 835
    :cond_4
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v12, :cond_5

    .line 838
    :try_start_0
    check-cast v9, Lcom/itextpdf/text/pdf/PRStream;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v10

    .line 839
    .local v10, valBytes:[B
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    .end local v10           #valBytes:[B
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Ljava/io/IOException;
    new-instance v12, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v12, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 845
    .end local v0           #e:Ljava/io/IOException;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v8

    .line 846
    .local v8, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 847
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    .line 848
    .local v1, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .line 849
    .local v2, flags:I
    if-eqz v1, :cond_6

    .line 850
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 851
    :cond_6
    const/high16 v12, 0x1

    and-int/2addr v12, v2

    if-eqz v12, :cond_7

    .line 852
    const-string/jumbo v11, ""

    goto :goto_0

    .line 853
    :cond_7
    const-string/jumbo v11, ""

    .line 854
    .local v11, value:Ljava/lang/String;
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v12, :cond_9

    .line 855
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 858
    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 859
    .local v6, opts:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_0

    .line 860
    const/4 v3, 0x0

    .line 862
    .local v3, idx:I
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 863
    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v7

    .line 864
    .local v7, ps:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    .line 865
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 867
    .end local v7           #ps:Lcom/itextpdf/text/pdf/PdfString;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 856
    .end local v3           #idx:I
    .end local v6           #opts:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v12, :cond_8

    .line 857
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 872
    .end local v1           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v2           #flags:I
    .end local v11           #value:Ljava/lang/String;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v12, :cond_b

    .line 873
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    .line 874
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 875
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v12, :cond_c

    .line 876
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 878
    :cond_c
    const-string/jumbo v11, ""

    goto/16 :goto_0
.end method

.method public getFieldCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    return-object v0
.end method

.method public getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;
    .locals 1
    .parameter "name"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 1505
    if-nez p1, :cond_0

    .line 1506
    const/4 v0, 0x0

    .line 1508
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/AcroFields$Item;

    goto :goto_0
.end method

.method public getFieldPositions(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v2

    .line 1536
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v2, :cond_1

    .line 1537
    const/4 v9, 0x0

    .line 1584
    :cond_0
    return-object v9

    .line 1538
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v9, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 1541
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    .line 1542
    .local v11, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 1543
    .local v8, rect:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v8, :cond_2

    .line 1539
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1545
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v11       #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 1546
    .local v6, r:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1547
    .local v4, page:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v10

    .line 1548
    .local v10, rotation:I
    new-instance v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;-><init>()V

    .line 1549
    .local v1, fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    iput v4, v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->page:I

    .line 1550
    if-eqz v10, :cond_3

    .line 1551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(I)Lcom/itextpdf/text/Rectangle;

    move-result-object v5

    .line 1552
    .local v5, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v10, :sswitch_data_0

    .line 1575
    :goto_2
    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 1577
    .end local v5           #pageSize:Lcom/itextpdf/text/Rectangle;
    :cond_3
    iput-object v6, v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->position:Lcom/itextpdf/text/Rectangle;

    .line 1578
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1580
    .end local v1           #fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    .end local v4           #page:I
    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #rotation:I
    .end local v11           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 1554
    .restart local v1       #fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    .restart local v4       #page:I
    .restart local v5       #pageSize:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v10       #rotation:I
    .restart local v11       #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :sswitch_0
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v12

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .local v7, r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .line 1559
    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1561
    :sswitch_1
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v12

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    sub-float v15, v15, v16

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v7       #r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .line 1566
    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1568
    :sswitch_2
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v12

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    sub-float v15, v15, v16

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v7       #r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1552
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getFieldType(Ljava/lang/String;)I
    .locals 7
    .parameter "fieldName"

    .prologue
    const/4 v5, 0x0

    .line 417
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v0

    .line 418
    .local v0, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v5

    .line 420
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 421
    .local v3, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    .line 422
    .local v4, type:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v4, :cond_0

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, ff:I
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 426
    .local v2, ffo:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v2, :cond_2

    .line 427
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 429
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 430
    const/high16 v5, 0x1

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 431
    const/4 v5, 0x1

    goto :goto_0

    .line 432
    :cond_3
    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    .line 433
    const/4 v5, 0x3

    goto :goto_0

    .line 435
    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    .line 437
    :cond_5
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 438
    const/4 v5, 0x4

    goto :goto_0

    .line 440
    :cond_6
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 441
    const/high16 v5, 0x2

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    .line 442
    const/4 v5, 0x6

    goto :goto_0

    .line 444
    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    .line 446
    :cond_8
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    const/4 v5, 0x7

    goto :goto_0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getListOptionDisplay(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getListOption(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getListOption(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListSelection(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    .line 890
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 891
    .local v8, s:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 892
    new-array v6, v11, [Ljava/lang/String;

    .line 897
    .local v6, ret:[Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 898
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_1

    move-object v7, v6

    .line 915
    .end local v6           #ret:[Ljava/lang/String;
    .local v7, ret:[Ljava/lang/String;
    :goto_1
    return-object v7

    .line 895
    .end local v3           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v7           #ret:[Ljava/lang/String;
    :cond_0
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    aput-object v8, v6, v11

    .restart local v6       #ret:[Ljava/lang/String;
    goto :goto_0

    .line 904
    .restart local v3       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    :cond_1
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    .line 905
    .local v9, values:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v9, :cond_2

    move-object v7, v6

    .line 906
    .end local v6           #ret:[Ljava/lang/String;
    .restart local v7       #ret:[Ljava/lang/String;
    goto :goto_1

    .line 907
    .end local v7           #ret:[Ljava/lang/String;
    .restart local v6       #ret:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/String;

    .line 908
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, options:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 911
    .local v1, idx:I
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 912
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 913
    .local v4, n:Lcom/itextpdf/text/pdf/PdfNumber;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v10

    aget-object v10, v5, v10

    aput-object v10, v6, v1

    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_2

    .end local v4           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_3
    move-object v7, v6

    .line 915
    .end local v6           #ret:[Ljava/lang/String;
    .restart local v7       #ret:[Ljava/lang/String;
    goto :goto_1
.end method

.method getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 795
    if-nez p1, :cond_0

    .line 805
    :goto_0
    return-object v0

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 799
    :pswitch_1
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    goto :goto_0

    .line 801
    :pswitch_2
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v2

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(FFF)V

    goto :goto_0

    .line 803
    :pswitch_3
    new-instance v0, Lcom/itextpdf/text/pdf/CMYKColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/CMYKColor;-><init>(FFFF)V

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNewPushbuttonFromField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PushbuttonField;
    .locals 1
    .parameter "field"

    .prologue
    .line 2509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getNewPushbuttonFromField(Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PushbuttonField;

    move-result-object v0

    return-object v0
.end method

.method public getNewPushbuttonFromField(Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PushbuttonField;
    .locals 21
    .parameter "field"
    .parameter "order"

    .prologue
    .line 2525
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2526
    const/4 v13, 0x0

    .line 2576
    :cond_0
    :goto_0
    return-object v13

    .line 2527
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v10

    .line 2528
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 2529
    const/4 v13, 0x0

    goto :goto_0

    .line 2530
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldPositions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 2531
    .local v14, pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    move/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->position:Lcom/itextpdf/text/Rectangle;

    .line 2532
    .local v4, box:Lcom/itextpdf/text/Rectangle;
    new-instance v13, Lcom/itextpdf/text/pdf/PushbuttonField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v4, v1}, Lcom/itextpdf/text/pdf/PushbuttonField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 2533
    .local v13, newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 2534
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/itextpdf/text/pdf/AcroFields;->decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V

    .line 2535
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 2536
    .local v12, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v12, :cond_0

    .line 2537
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->CA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v17

    .line 2538
    .local v17, text:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v17, :cond_3

    .line 2539
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setText(Ljava/lang/String;)V

    .line 2540
    :cond_3
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->TP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 2541
    .local v18, tp:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v18, :cond_4

    .line 2542
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setLayout(I)V

    .line 2543
    :cond_4
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->IF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 2544
    .local v9, ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v9, :cond_9

    .line 2545
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SW:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v16

    .line 2546
    .local v16, sw:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v16, :cond_6

    .line 2547
    const/4 v15, 0x1

    .line 2548
    .local v15, scale:I
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2549
    const/4 v15, 0x3

    .line 2554
    :cond_5
    :goto_1
    invoke-virtual {v13, v15}, Lcom/itextpdf/text/pdf/PushbuttonField;->setScaleIcon(I)V

    .line 2556
    .end local v15           #scale:I
    :cond_6
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v16

    .line 2557
    if-eqz v16, :cond_7

    .line 2558
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2559
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setProportionalIcon(Z)V

    .line 2561
    :cond_7
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    .line 2562
    .local v2, aj:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2563
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v11

    .line 2564
    .local v11, left:F
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 2565
    .local v3, bottom:F
    invoke-virtual {v13, v11}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconHorizontalAdjustment(F)V

    .line 2566
    invoke-virtual {v13, v3}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconVerticalAdjustment(F)V

    .line 2568
    .end local v3           #bottom:F
    .end local v11           #left:F
    :cond_8
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->FB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfBoolean;

    move-result-object v7

    .line 2569
    .local v7, fb:Lcom/itextpdf/text/pdf/PdfBoolean;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2570
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconFitToBounds(Z)V

    .line 2572
    .end local v2           #aj:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #fb:Lcom/itextpdf/text/pdf/PdfBoolean;
    .end local v16           #sw:Lcom/itextpdf/text/pdf/PdfName;
    :cond_9
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 2573
    .local v8, i:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2574
    check-cast v8, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v8           #i:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v13, v8}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2578
    .end local v4           #box:Lcom/itextpdf/text/Rectangle;
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v10           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v12           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    .end local v14           #pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    .end local v17           #text:Lcom/itextpdf/text/pdf/PdfString;
    .end local v18           #tp:Lcom/itextpdf/text/pdf/PdfNumber;
    :catch_0
    move-exception v6

    .line 2579
    .local v6, e:Ljava/lang/Exception;
    new-instance v19, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v19

    .line 2550
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #box:Lcom/itextpdf/text/Rectangle;
    .restart local v5       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v9       #ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v10       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .restart local v12       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    .restart local v14       #pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    .restart local v15       #scale:I
    .restart local v16       #sw:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v17       #text:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v18       #tp:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_a
    :try_start_1
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2551
    const/4 v15, 0x4

    goto/16 :goto_1

    .line 2552
    :cond_b
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-eqz v19, :cond_5

    .line 2553
    const/4 v15, 0x2

    goto/16 :goto_1
.end method

.method public getRevision(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 2268
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2269
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2270
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2271
    const/4 v0, 0x0

    .line 2272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 3
    .parameter "name"

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2096
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2097
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2098
    const/4 v2, 0x0

    .line 2101
    :goto_0
    return-object v2

    .line 2099
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2100
    .local v0, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2101
    .local v1, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    goto :goto_0
.end method

.method public getSignatureNames()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    if-eqz v15, :cond_0

    .line 2027
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2064
    :goto_0
    return-object v15

    .line 2028
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    .line 2029
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2030
    .local v13, sorter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2031
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2032
    .local v4, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2033
    .local v7, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2035
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v14

    .line 2036
    .local v14, v:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v14, :cond_1

    .line 2038
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    .line 2039
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v1, :cond_1

    .line 2041
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v12

    .line 2042
    .local v12, ro:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v12, :cond_1

    .line 2044
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v11

    .line 2045
    .local v11, rangeSize:I
    const/4 v15, 0x2

    if-lt v11, v15, :cond_1

    .line 2047
    add-int/lit8 v15, v11, -0x1

    invoke-virtual {v12, v15}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v15

    add-int/lit8 v16, v11, -0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v16

    add-int v6, v15, v16

    .line 2048
    .local v6, length:I
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v6, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2050
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfString;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v4           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v6           #length:I
    .end local v7           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #rangeSize:I
    .end local v12           #ro:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #v:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    new-instance v15, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;-><init>(Lcom/itextpdf/text/pdf/AcroFields$1;)V

    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2051
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 2052
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    check-cast v15, [I

    check-cast v15, [I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getFileLength()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2053
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    .line 2056
    :goto_2
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_4

    .line 2057
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 2058
    .local v9, objs:[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v8, v9, v15

    check-cast v8, Ljava/lang/String;

    .line 2059
    .local v8, name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    check-cast v15, [I

    move-object v10, v15

    check-cast v10, [I

    .line 2060
    .local v10, p:[I
    const/4 v15, 0x1

    add-int/lit8 v16, v5, 0x1

    aput v16, v10, v15

    .line 2061
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v15, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2055
    .end local v5           #k:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #objs:[Ljava/lang/Object;
    .end local v10           #p:[I
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    goto :goto_2

    .line 2064
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public getSubstitutionFonts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalRevisions()I
    .locals 1

    .prologue
    .line 2257
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2258
    iget v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    return v0
.end method

.method public getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1519
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v1, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, namex:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1521
    move-object p1, v0

    .line 1523
    .end local v0           #namex:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getXfa()Lcom/itextpdf/text/pdf/XfaForm;
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    return-object v0
.end method

.method public isGenerateAppearances()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    return v0
.end method

.method isInAP(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 4
    .parameter "dic"
    .parameter "check"

    .prologue
    const/4 v2, 0x0

    .line 1478
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1479
    .local v1, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return v2

    .line 1481
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1482
    .local v0, NDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public mergeXfaData(Lorg/w3c/dom/Node;)V
    .locals 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1216
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    .line 1217
    .local v0, data:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1218
    .local v3, string:Ljava/lang/String;
    move-object v2, v3

    .line 1219
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-static {v5}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 1220
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1222
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #string:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public regenerateField(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v0}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public removeField(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1687
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->removeField(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeField(Ljava/lang/String;I)Z
    .locals 13
    .parameter "name"
    .parameter "page"

    .prologue
    .line 1630
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 1631
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 1632
    const/4 v11, 0x0

    .line 1677
    :goto_0
    return v11

    .line 1633
    :cond_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1635
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1636
    const/4 v11, 0x0

    goto :goto_0

    .line 1637
    :cond_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    .line 1638
    .local v2, arrayf:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v2, :cond_2

    .line 1639
    const/4 v11, 0x0

    goto :goto_0

    .line 1640
    :cond_2
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 1641
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1642
    .local v8, pageV:I
    const/4 v11, -0x1

    if-eq p2, v11, :cond_4

    if-eq p2, v8, :cond_4

    .line 1640
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1644
    :cond_4
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidgetRef(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    .line 1645
    .local v9, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1646
    .local v10, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11, v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 1647
    .local v7, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 1648
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_5

    .line 1649
    invoke-direct {p0, v1, v9}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    move-result v11

    if-nez v11, :cond_8

    .line 1650
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1651
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1656
    :cond_5
    :goto_3
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1657
    move-object v5, v9

    .line 1658
    .local v5, kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :goto_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsIndirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1659
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1660
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 1661
    .local v6, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {p0, v6, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    move-result v11

    if-eqz v11, :cond_9

    .line 1666
    .end local v6           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    if-nez v9, :cond_7

    .line 1667
    invoke-direct {p0, v2, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    .line 1668
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1670
    :cond_7
    const/4 v11, -0x1

    if-eq p2, v11, :cond_3

    .line 1671
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->remove(I)V

    .line 1672
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1654
    .end local v5           #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_8
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 1663
    .restart local v5       #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v6       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_9
    move-object v5, v9

    .line 1664
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    goto :goto_4

    .line 1675
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v6           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #pageV:I
    .end local v9           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v10           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    const/4 v11, -0x1

    if-eq p2, v11, :cond_b

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v11

    if-nez v11, :cond_c

    .line 1676
    :cond_b
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public removeFieldsFromPage(I)Z
    .locals 7
    .parameter "page"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1608
    if-ge p1, v5, :cond_0

    .line 1617
    :goto_0
    return v4

    .line 1610
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1611
    .local v3, names:[Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1612
    const/4 v0, 0x0

    .line 1613
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_3

    .line 1614
    aget-object v6, v3, v2

    invoke-virtual {p0, v6, p1}, Lcom/itextpdf/text/pdf/AcroFields;->removeField(Ljava/lang/String;I)Z

    move-result v1

    .line 1615
    .local v1, fr:Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v5

    .line 1613
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1615
    goto :goto_2

    .end local v1           #fr:Z
    :cond_3
    move v4, v0

    .line 1617
    goto :goto_0
.end method

.method public removeXfa()V
    .locals 5

    .prologue
    .line 2486
    iget-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 2487
    .local v2, root:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 2488
    .local v0, acroform:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2490
    :try_start_0
    new-instance v3, Lcom/itextpdf/text/pdf/XfaForm;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/XfaForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    return-void

    .line 2492
    :catch_0
    move-exception v1

    .line 2493
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "oldName"
    .parameter "newName"

    .prologue
    const/16 v6, 0x2e

    const/4 v4, 0x0

    .line 482
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 483
    .local v0, idx1:I
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 484
    .local v1, idx2:I
    if-eq v0, v1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v4

    .line 486
    :cond_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 491
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-eqz v2, :cond_0

    .line 493
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 494
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v4, "UnicodeBig"

    invoke-direct {v3, p2, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v3, ss:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 497
    const/4 v4, 0x4

    invoke-virtual {v2, p0, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V

    .line 499
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;)Z
    .locals 1
    .parameter "field"
    .parameter "button"

    .prologue
    .line 2594
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;I)Z

    move-result v0

    return v0
.end method

.method public replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;I)Z
    .locals 11
    .parameter "field"
    .parameter "button"
    .parameter "order"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2611
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v9, :cond_1

    .line 2634
    :cond_0
    :goto_0
    return v8

    .line 2613
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v2

    .line 2614
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v10

    if-ge p3, v10, :cond_0

    .line 2616
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 2617
    .local v5, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2618
    .local v6, values:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2619
    .local v7, widgets:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 2620
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2621
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2622
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2619
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2624
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v4, v0

    .line 2625
    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 2626
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2628
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2629
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2632
    :goto_3
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 2631
    :cond_4
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_5
    move v8, v9

    .line 2634
    goto :goto_0
.end method

.method public setExtraMargin(FF)V
    .locals 0
    .parameter "extraMarginLeft"
    .parameter "extraMarginTop"

    .prologue
    .line 2342
    iput p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginLeft:F

    .line 2343
    iput p2, p0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginTop:F

    .line 2344
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 31
    .parameter "name"
    .parameter "value"
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 1308
    new-instance v29, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v30, "this.acrofields.instance.is.read.only"

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1309
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 1311
    if-nez p1, :cond_1

    .line 1312
    const/16 v29, 0x0

    .line 1426
    :goto_0
    return v29

    .line 1313
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1314
    .local v19, shortName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 1315
    .local v28, xn:Lorg/w3c/dom/Node;
    if-nez v28, :cond_2

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/XfaForm;->getDatasetsSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/XfaForm;->getDatasetsNode()Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 1318
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm;->setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 1320
    .end local v19           #shortName:Ljava/lang/String;
    .end local v28           #xn:Lorg/w3c/dom/Node;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 1321
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v10, :cond_4

    .line 1322
    const/16 v29, 0x0

    goto :goto_0

    .line 1323
    :cond_4
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1324
    .local v15, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v20

    .line 1325
    .local v20, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1326
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v14

    .line 1327
    .local v14, maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v12, 0x0

    .line 1328
    .local v12, len:I
    if-eqz v14, :cond_5

    .line 1329
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 1330
    :cond_5
    if-lez v12, :cond_6

    .line 1331
    const/16 v29, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1333
    .end local v12           #len:I
    .end local v14           #maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_6
    if-nez p3, :cond_7

    .line 1334
    move-object/from16 p3, p2

    .line 1335
    :cond_7
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1336
    :cond_8
    new-instance v21, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v29, "UnicodeBig"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    .local v21, v:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_1
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_c

    .line 1338
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    .line 1339
    .local v24, valueDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1340
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1341
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1342
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1343
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1344
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1345
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v27

    .line 1346
    .local v27, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 1347
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v15, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v3

    .line 1348
    .local v3, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1349
    new-instance v16, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1350
    .local v16, n:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1351
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1353
    .end local v16           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_9
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1354
    .local v4, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v4, :cond_a

    .line 1355
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v4           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1356
    .restart local v4       #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1357
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1359
    :cond_a
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->releaseTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 1366
    .end local v3           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v4           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1337
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1363
    :cond_b
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1364
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_2

    .line 1368
    .end local v24           #valueDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_c
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1370
    .end local v8           #idx:I
    .end local v21           #v:Lcom/itextpdf/text/pdf/PdfString;
    :cond_d
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1371
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    .line 1372
    .local v6, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v7, 0x0

    .line 1373
    .local v7, flags:I
    if-eqz v6, :cond_e

    .line 1374
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 1375
    :cond_e
    const/high16 v29, 0x1

    and-int v29, v29, v7

    if-eqz v29, :cond_f

    .line 1379
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/text/pdf/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/Image;->getInstance([B)Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1384
    .local v9, img:Lcom/itextpdf/text/Image;
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getNewPushbuttonFromField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PushbuttonField;

    move-result-object v18

    .line 1385
    .local v18, pb:Lcom/itextpdf/text/pdf/PushbuttonField;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PushbuttonField;->setImage(Lcom/itextpdf/text/Image;)V

    .line 1386
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PushbuttonField;->getField()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;)Z

    .line 1387
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v9           #img:Lcom/itextpdf/text/Image;
    .end local v18           #pb:Lcom/itextpdf/text/pdf/PushbuttonField;
    :catch_0
    move-exception v5

    .line 1382
    .local v5, e:Ljava/lang/Exception;
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1389
    .end local v5           #e:Ljava/lang/Exception;
    :cond_f
    new-instance v21, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v21, v:Lcom/itextpdf/text/pdf/PdfName;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v13, lopt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v17

    .line 1392
    .local v17, opts:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v17, :cond_11

    .line 1393
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_11

    .line 1394
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v23

    .line 1395
    .local v23, valStr:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v23, :cond_10

    .line 1396
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1398
    :cond_10
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1401
    .end local v11           #k:I
    .end local v23           #valStr:Lcom/itextpdf/text/pdf/PdfString;
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    .line 1403
    .local v25, vidx:I
    if-ltz v25, :cond_12

    .line 1404
    new-instance v26, Lcom/itextpdf/text/pdf/PdfName;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v26, vt:Lcom/itextpdf/text/pdf/PdfName;
    :goto_5
    const/4 v8, 0x0

    .restart local v8       #idx:I
    :goto_6
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_14

    .line 1408
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1409
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v27

    .line 1410
    .restart local v27       #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v22

    .line 1411
    .local v22, valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1412
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1413
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1414
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->isInAP(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1416
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1417
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1407
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1406
    .end local v8           #idx:I
    .end local v22           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #vt:Lcom/itextpdf/text/pdf/PdfName;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_12
    move-object/from16 v26, v21

    .restart local v26       #vt:Lcom/itextpdf/text/pdf/PdfName;
    goto :goto_5

    .line 1420
    .restart local v8       #idx:I
    .restart local v22       #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v27       #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_13
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->Off:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1421
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->Off:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_7

    .line 1424
    .end local v22           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v6           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v7           #flags:I
    .end local v8           #idx:I
    .end local v13           #lopt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #opts:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v21           #v:Lcom/itextpdf/text/pdf/PdfName;
    .end local v25           #vidx:I
    .end local v26           #vt:Lcom/itextpdf/text/pdf/PdfName;
    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method public setFieldCache(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2332
    .local p1, fieldCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/TextField;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    .line 2333
    return-void
.end method

.method public setFieldProperty(Ljava/lang/String;Ljava/lang/String;I[I)Z
    .locals 9
    .parameter "field"
    .parameter "name"
    .parameter "value"
    .parameter "inst"

    .prologue
    const/4 v7, 0x0

    .line 1118
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v8, :cond_0

    .line 1119
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "this.acrofields.instance.is.read.only"

    invoke-static {v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1120
    :cond_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 1121
    .local v1, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v1, :cond_2

    .line 1205
    :cond_1
    :goto_0
    return v7

    .line 1123
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;

    invoke-direct {v0, p4}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;-><init>([I)V

    .line 1124
    .local v0, hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    const-string/jumbo v8, "flags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1125
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1126
    .local v3, num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1127
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1128
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1129
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1130
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1126
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1134
    .end local v2           #k:I
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_4
    const-string/jumbo v8, "setflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1135
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1136
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1137
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1138
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1139
    .local v4, val:I
    if-eqz v3, :cond_5

    .line 1140
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1141
    :cond_5
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    or-int v7, v4, p3

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1142
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1143
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1144
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1135
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1148
    .end local v2           #k:I
    :cond_7
    const-string/jumbo v8, "clrflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1149
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1150
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1151
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 1152
    .local v6, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1153
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1154
    .restart local v4       #val:I
    if-eqz v3, :cond_8

    .line 1155
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1156
    :cond_8
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    xor-int/lit8 v7, p3, -0x1

    and-int/2addr v7, v4

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1157
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1158
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1159
    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1149
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v6           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1163
    .end local v2           #k:I
    :cond_a
    const-string/jumbo v8, "fflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1164
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1165
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_4
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1166
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1167
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1168
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1169
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1165
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1173
    .end local v2           #k:I
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_c
    const-string/jumbo v8, "setfflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1174
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_5
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1175
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1176
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 1177
    .local v5, valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1178
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1179
    .restart local v4       #val:I
    if-eqz v3, :cond_d

    .line 1180
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1181
    :cond_d
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    or-int v7, v4, p3

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1182
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1183
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1184
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1174
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v5           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1188
    .end local v2           #k:I
    :cond_f
    const-string/jumbo v8, "clrfflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1189
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_6
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1190
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1191
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 1192
    .restart local v5       #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1193
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1194
    .restart local v4       #val:I
    if-eqz v3, :cond_10

    .line 1195
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1196
    :cond_10
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    xor-int/lit8 v7, p3, -0x1

    and-int/2addr v7, v4

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1197
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1198
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1199
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1189
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v5           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1205
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public setFieldProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[I)Z
    .locals 27
    .parameter "field"
    .parameter "name"
    .parameter "value"
    .parameter "inst"

    .prologue
    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 941
    new-instance v24, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "this.acrofields.instance.is.read.only"

    invoke-static/range {v25 .. v25}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 943
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 944
    .local v17, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v17, :cond_1

    .line 945
    const/16 v24, 0x0

    .line 1083
    :goto_0
    return v24

    .line 946
    :cond_1
    new-instance v16, Lcom/itextpdf/text/pdf/AcroFields$InstHit;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;-><init>([I)V

    .line 949
    .local v16, hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    const-string/jumbo v24, "textfont"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 950
    const/16 v18, 0x0

    .local v18, k:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 951
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 952
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 953
    .local v19, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 954
    .local v6, da:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 955
    .local v9, dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    .line 956
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 957
    .local v7, dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 958
    .local v5, cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_8

    .line 959
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/pdf/BaseFont;

    move-object v3, v0

    .line 960
    .local v3, bf:Lcom/itextpdf/text/pdf/BaseFont;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfName;

    .line 961
    .local v21, psn:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v21, :cond_2

    .line 962
    new-instance v21, Lcom/itextpdf/text/pdf/PdfName;

    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 964
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 965
    .local v12, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v12, :cond_3

    .line 966
    new-instance v12, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v12}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 967
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 969
    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 970
    .local v14, fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v23

    .line 971
    .local v23, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 972
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 973
    if-nez v9, :cond_4

    .line 974
    new-instance v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 975
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 977
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 978
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 979
    .local v13, fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v13, :cond_5

    .line 980
    new-instance v13, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v13}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 981
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 983
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 984
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 985
    .local v15, frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v15, :cond_9

    .line 986
    if-nez v14, :cond_6

    .line 987
    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1002
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1003
    .local v4, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    const/16 v24, 0x1

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string/jumbo v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1004
    const/16 v24, 0x2

    aget-object v24, v7, v24

    if-eqz v24, :cond_7

    .line 1005
    const/16 v24, 0x2

    aget-object v24, v7, v24

    check-cast v24, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1006
    :cond_7
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v22, s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1008
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1009
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 950
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 989
    .restart local v3       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v7       #dao:[Ljava/lang/Object;
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v14       #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v15       #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v23       #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    if-nez v14, :cond_6

    .line 991
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 992
    new-instance v11, Lcom/itextpdf/text/pdf/FontDetails;

    const/16 v25, 0x0

    move-object v0, v3

    check-cast v0, Lcom/itextpdf/text/pdf/DocumentFont;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/DocumentFont;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1, v3}, Lcom/itextpdf/text/pdf/FontDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 999
    .local v11, fd:Lcom/itextpdf/text/pdf/FontDetails;
    :goto_3
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1000
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1085
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #fd:Lcom/itextpdf/text/pdf/FontDetails;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v16           #hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    .end local v17           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v10

    .line 1086
    .local v10, e:Ljava/lang/Exception;
    new-instance v24, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v24

    .line 995
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v7       #dao:[Ljava/lang/Object;
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v14       #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v15       #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v16       #hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    .restart local v17       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .restart local v18       #k:I
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v23       #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    const/16 v24, 0x0

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/BaseFont;->setSubset(Z)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;

    move-result-object v11

    .line 997
    .restart local v11       #fd:Lcom/itextpdf/text/pdf/FontDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1015
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #fd:Lcom/itextpdf/text/pdf/FontDetails;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_b
    const-string/jumbo v24, "textcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1016
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1017
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1018
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1019
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 1020
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v6, :cond_c

    .line 1021
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 1022
    .restart local v7       #dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 1023
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_c

    .line 1024
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1025
    .restart local v4       #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v25, Lcom/itextpdf/text/pdf/PdfName;

    const/16 v24, 0x0

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    const/16 v24, 0x1

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string/jumbo v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1026
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1027
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1028
    .restart local v22       #s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1029
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1030
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1016
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1036
    .end local v18           #k:I
    :cond_d
    const-string/jumbo v24, "textsize"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1037
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1038
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1039
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1040
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 1041
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v6, :cond_f

    .line 1042
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 1043
    .restart local v7       #dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 1044
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_f

    .line 1045
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1046
    .restart local v4       #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v25, Lcom/itextpdf/text/pdf/PdfName;

    const/16 v24, 0x0

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Float;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string/jumbo v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1047
    const/16 v24, 0x2

    aget-object v24, v7, v24

    if-eqz v24, :cond_e

    .line 1048
    const/16 v24, 0x2

    aget-object v24, v7, v24

    check-cast v24, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1049
    :cond_e
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1050
    .restart local v22       #s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1051
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1052
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1037
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1058
    .end local v18           #k:I
    :cond_10
    const-string/jumbo v24, "bgcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_11

    const-string/jumbo v24, "bordercolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1059
    :cond_11
    const-string/jumbo v24, "bgcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    .line 1060
    .local v8, dname:Lcom/itextpdf/text/pdf/PdfName;
    :goto_6
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1061
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1062
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1063
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v20

    .line 1064
    .local v20, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v20, :cond_15

    .line 1065
    if-nez p3, :cond_13

    .line 1066
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 1059
    .end local v8           #dname:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_12
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_6

    .line 1067
    .restart local v8       #dname:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v18       #k:I
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_13
    new-instance v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1068
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1069
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1070
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1074
    :goto_8
    if-nez p3, :cond_16

    .line 1075
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1060
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1072
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_8

    .line 1077
    :cond_16
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfFormField;->getMKColor(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 1082
    .end local v8           #dname:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_17
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1083
    .restart local v18       #k:I
    :cond_18
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public setFields(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 5
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1232
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/FdfReader;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1233
    .local v1, fd:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1234
    .local v0, f:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/FdfReader;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .local v3, v:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1236
    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1238
    .end local v0           #f:Ljava/lang/String;
    .end local v3           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setFields(Lcom/itextpdf/text/pdf/XfdfReader;)V
    .locals 6
    .parameter "xfdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/XfdfReader;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1249
    .local v1, fd:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1250
    .local v0, f:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/XfdfReader;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1251
    .local v4, v:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1252
    invoke-virtual {p0, v0, v4}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1253
    :cond_1
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/XfdfReader;->getListValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1254
    .local v3, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1255
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/AcroFields;->setListSelection(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 1257
    .end local v0           #f:Ljava/lang/String;
    .end local v3           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #v:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setGenerateAppearances(Z)V
    .locals 3
    .parameter "generateAppearances"

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    .line 1709
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1710
    .local v0, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p1, :cond_0

    .line 1711
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1714
    :goto_0
    return-void

    .line 1713
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setListOption(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .parameter "fieldName"
    .parameter "exportValues"
    .parameter "displayValues"

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x0

    .line 374
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v6

    .line 376
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v7, p2

    array-length v8, p3

    if-eq v7, v8, :cond_2

    .line 377
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "the.export.and.the.display.array.must.have.the.same.size"

    invoke-static {v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 378
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v2

    .line 379
    .local v2, ftype:I
    const/4 v7, 0x6

    if-eq v2, v7, :cond_3

    if-ne v2, v9, :cond_0

    .line 381
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 382
    .local v1, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v5, 0x0

    .line 383
    .local v5, sing:[Ljava/lang/String;
    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    .line 384
    move-object v5, p3

    .line 387
    :cond_4
    :goto_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 388
    .local v4, opt:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v5, :cond_6

    .line 389
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 390
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, v5, v3

    const-string/jumbo v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 385
    .end local v3           #k:I
    .end local v4           #opt:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_5
    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    .line 386
    move-object v5, p2

    goto :goto_1

    .line 393
    .restart local v4       #opt:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_3
    array-length v6, p2

    if-ge v3, v6, :cond_7

    .line 394
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 395
    .local v0, a:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, p2, v3

    const-string/jumbo v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 396
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, p3, v3

    const-string/jumbo v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 397
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 400
    .end local v0           #a:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_7
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v4, v9}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 401
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setListSelection(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 19
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v10

    .line 1440
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v10, :cond_0

    .line 1441
    const/16 v17, 0x0

    .line 1474
    :goto_0
    return v17

    .line 1442
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 1443
    .local v13, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v15

    .line 1444
    .local v15, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1445
    const/16 v17, 0x0

    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1448
    .local v14, options:[Ljava/lang/String;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1449
    .local v6, array:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v5, p2

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_4

    aget-object v7, v5, v9

    .line 1450
    .local v7, element:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    .line 1451
    aget-object v17, v14, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1452
    new-instance v17, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1449
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1450
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1457
    .end local v7           #element:Ljava/lang/String;
    .end local v11           #j:I
    :cond_4
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v6, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1459
    new-instance v16, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1460
    .local v16, vals:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 1461
    new-instance v17, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v18, p2, v8

    invoke-direct/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1460
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1463
    :cond_5
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1465
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v4

    .line 1467
    .local v4, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1468
    .local v3, apDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1469
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v3, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->releaseTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 1473
    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V

    .line 1474
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public setSubstitutionFonts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2470
    .local p1, substitutionFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/BaseFont;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    .line 2471
    return-void
.end method

.method public signatureCoversWholeDocument(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 2112
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2113
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2114
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2116
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getFileLength()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public verifySignature(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfPKCS7;
    .locals 1
    .parameter "name"

    .prologue
    .line 2148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfPKCS7;

    move-result-object v0

    return-object v0
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfPKCS7;
    .locals 10
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 2181
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2182
    .local v7, v:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v7, :cond_1

    .line 2183
    const/4 v4, 0x0

    .line 2211
    :cond_0
    :goto_0
    return-object v4

    .line 2185
    :cond_1
    :try_start_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    .line 2186
    .local v6, sub:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    .line 2187
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v4, 0x0

    .line 2188
    .local v4, pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ADBE_X509_RSA_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2189
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v0

    .line 2190
    .local v0, cert:Lcom/itextpdf/text/pdf/PdfString;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPKCS7;

    .end local v4           #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v8, v9, p2}, Lcom/itextpdf/text/pdf/PdfPKCS7;-><init>([B[BLjava/lang/String;)V

    .line 2194
    .end local v0           #cert:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v4       #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    :goto_1
    invoke-direct {p0, v4, v7}, Lcom/itextpdf/text/pdf/AcroFields;->updateByteRange(Lcom/itextpdf/text/pdf/PdfPKCS7;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 2195
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->M:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2196
    .local v5, str:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v5, :cond_2

    .line 2197
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfDate;->decode(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setSignDate(Ljava/util/Calendar;)V

    .line 2198
    :cond_2
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2199
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_3

    .line 2200
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2201
    check-cast v3, Lcom/itextpdf/text/pdf/PdfString;

    .end local v3           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setSignName(Ljava/lang/String;)V

    .line 2205
    :cond_3
    :goto_2
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->REASON:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2206
    if-eqz v5, :cond_4

    .line 2207
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setReason(Ljava/lang/String;)V

    .line 2208
    :cond_4
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->LOCATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2209
    if-eqz v5, :cond_0

    .line 2210
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2213
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfString;
    .end local v4           #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    .end local v5           #str:Lcom/itextpdf/text/pdf/PdfString;
    .end local v6           #sub:Lcom/itextpdf/text/pdf/PdfName;
    :catch_0
    move-exception v2

    .line 2214
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 2193
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #contents:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v4       #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    .restart local v6       #sub:Lcom/itextpdf/text/pdf/PdfName;
    :cond_5
    :try_start_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfPKCS7;

    .end local v4           #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v8

    invoke-direct {v4, v8, p2}, Lcom/itextpdf/text/pdf/PdfPKCS7;-><init>([BLjava/lang/String;)V

    .restart local v4       #pk:Lcom/itextpdf/text/pdf/PdfPKCS7;
    goto :goto_1

    .line 2202
    .restart local v3       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #str:Lcom/itextpdf/text/pdf/PdfString;
    :cond_6
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2203
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfPKCS7;->setSignName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
