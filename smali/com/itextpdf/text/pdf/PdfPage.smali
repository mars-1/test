.class public Lcom/itextpdf/text/pdf/PdfPage;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfPage.java"


# static fields
.field public static final INVERTEDPORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final LANDSCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final PORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

.field public static final SEASCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

.field private static final boxNames:[Lcom/itextpdf/text/pdf/PdfName;

.field private static final boxStrings:[Ljava/lang/String;


# instance fields
.field mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "crop"

    aput-object v1, v0, v2

    const-string/jumbo v1, "trim"

    aput-object v1, v0, v3

    const-string/jumbo v1, "art"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bleed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    .line 60
    new-array v0, v6, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->boxNames:[Lcom/itextpdf/text/pdf/PdfName;

    .line 64
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->PORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 67
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->LANDSCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 70
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->INVERTEDPORTRAIT:Lcom/itextpdf/text/pdf/PdfNumber;

    .line 73
    new-instance v0, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v1, 0x10e

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfPage;->SEASCAPE:Lcom/itextpdf/text/pdf/PdfNumber;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "mediaBox"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, boxSize:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfRectangle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfPage;-><init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 143
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V
    .locals 4
    .parameter "mediaBox"
    .parameter
    .parameter "resources"
    .parameter "rotate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, boxSize:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfRectangle;>;"
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 110
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 111
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 112
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, p3}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 113
    if-eqz p4, :cond_0

    .line 114
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    :cond_0
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 117
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 118
    .local v1, rect:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_1

    .line 119
    sget-object v2, Lcom/itextpdf/text/pdf/PdfPage;->boxNames:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1           #rect:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    return-void
.end method


# virtual methods
.method add(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "contents"

    .prologue
    .line 166
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    return-void
.end method

.method getMediaBox()Lcom/itextpdf/text/pdf/PdfRectangle;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    return-object v0
.end method

.method public isParent()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method rotateMediaBox()Lcom/itextpdf/text/pdf/PdfRectangle;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfRectangle;->rotate()Lcom/itextpdf/text/pdf/PdfRectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 177
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 178
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfPage;->mediaBox:Lcom/itextpdf/text/pdf/PdfRectangle;

    return-object v0
.end method
