.class public Lcom/itextpdf/text/FontFactoryImp;
.super Ljava/lang/Object;
.source "FontFactoryImp.java"

# interfaces
.implements Lcom/itextpdf/text/FontProvider;


# static fields
.field private static TTFamilyOrder:[Ljava/lang/String;


# instance fields
.field public defaultEmbedding:Z

.field public defaultEncoding:Ljava/lang/String;

.field private fontFamilies:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private trueTypeFonts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1033"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "1033"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    .line 78
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    .line 81
    const-string/jumbo v1, "Cp1252"

    iput-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    .line 88
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Courier"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Courier"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Courier-Bold"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Courier-Bold"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Courier-Oblique"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Courier-Oblique"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Courier-BoldOblique"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Courier-BoldOblique"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Helvetica"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Helvetica"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Helvetica-Bold"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Helvetica-Bold"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Helvetica-Oblique"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Helvetica-Oblique"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Helvetica-BoldOblique"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Helvetica-BoldOblique"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Symbol"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Symbol"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times-Roman"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Times-Roman"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times-Bold"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Times-Bold"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times-Italic"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Times-Italic"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times-BoldItalic"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Times-BoldItalic"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    const-string/jumbo v2, "ZapfDingbats"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ZapfDingbats"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "Courier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v1, "Courier-Bold"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string/jumbo v1, "Courier-Oblique"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v1, "Courier-BoldOblique"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "Courier"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .restart local v0       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "Helvetica"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string/jumbo v1, "Helvetica-Bold"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v1, "Helvetica-Oblique"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string/jumbo v1, "Helvetica-BoldOblique"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "Helvetica"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .restart local v0       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "Symbol"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "Symbol"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v0       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "Times-Roman"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string/jumbo v1, "Times-Bold"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string/jumbo v1, "Times-Italic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v1, "Times-BoldItalic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "Times-Roman"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .restart local v0       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "ZapfDingbats"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    const-string/jumbo v2, "ZapfDingbats"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method


# virtual methods
.method public getFont(Ljava/lang/String;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"

    .prologue
    .line 465
    iget-object v2, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/high16 v4, -0x4080

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;F)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "size"

    .prologue
    .line 454
    iget-object v2, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;FI)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 442
    iget-object v2, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 429
    iget-object v2, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;FLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "size"
    .parameter "color"

    .prologue
    .line 403
    iget-object v2, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"

    .prologue
    .line 415
    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/high16 v4, -0x4080

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"

    .prologue
    .line 388
    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;FI)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 375
    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 361
    iget-boolean v3, p0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"

    .prologue
    .line 346
    const/high16 v4, -0x4080

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;ZF)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"

    .prologue
    .line 333
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;ZFI)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 319
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;
    .locals 8
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    .line 143
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;Z)Lcom/itextpdf/text/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;Z)Lcom/itextpdf/text/Font;
    .locals 23
    .parameter "fontname"
    .parameter "encoding"
    .parameter "embedded"
    .parameter "size"
    .parameter "style"
    .parameter "color"
    .parameter "cached"

    .prologue
    .line 162
    if-nez p1, :cond_0

    new-instance v3, Lcom/itextpdf/text/Font;

    sget-object v4, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 215
    :goto_0
    return-object v3

    .line 163
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, lowercasefontname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 165
    .local v22, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v22, :cond_6

    .line 167
    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_7

    const/16 v20, 0x0

    .line 168
    .local v20, s:I
    :goto_1
    const/4 v14, 0x0

    .line 169
    .local v14, fs:I
    const/4 v13, 0x0

    .line 170
    .local v13, found:Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 171
    .local v21, string:Ljava/lang/String;
    move-object/from16 v12, v21

    .line 172
    .local v12, f:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 173
    .local v17, lcf:Ljava/lang/String;
    const/4 v14, 0x0

    .line 174
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "bold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    or-int/lit8 v14, v14, 0x1

    .line 175
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "italic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "oblique"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    :cond_3
    or-int/lit8 v14, v14, 0x2

    .line 176
    :cond_4
    and-int/lit8 v3, v20, 0x3

    if-ne v3, v14, :cond_1

    .line 177
    move-object/from16 p1, v12

    .line 178
    const/4 v13, 0x1

    .line 182
    .end local v12           #f:Ljava/lang/String;
    .end local v17           #lcf:Ljava/lang/String;
    .end local v21           #string:Ljava/lang/String;
    :cond_5
    const/4 v3, -0x1

    move/from16 v0, p5

    if-eq v0, v3, :cond_6

    if-eqz v13, :cond_6

    .line 183
    xor-int/lit8 v3, v14, -0x1

    and-int p5, p5, v3

    .line 186
    .end local v13           #found:Z
    .end local v14           #fs:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #s:I
    :cond_6
    const/4 v10, 0x0

    .line 190
    .local v10, basefont:Lcom/itextpdf/text/pdf/BaseFont;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p7

    :try_start_0
    invoke-static/range {v3 .. v9}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[BZ)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 194
    :goto_2
    if-nez v10, :cond_9

    .line 196
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 p1, v0

    .line 198
    if-nez p1, :cond_8

    new-instance v3, Lcom/itextpdf/text/Font;

    sget-object v4, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v11

    .line 205
    .local v11, de:Lcom/itextpdf/text/DocumentException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .end local v10           #basefont:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v11           #de:Lcom/itextpdf/text/DocumentException;
    :cond_7
    move/from16 v20, p5

    .line 167
    goto/16 :goto_1

    .line 200
    .restart local v10       #basefont:Lcom/itextpdf/text/pdf/BaseFont;
    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p7

    :try_start_2
    invoke-static/range {v3 .. v8}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_2
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 215
    :cond_9
    new-instance v3, Lcom/itextpdf/text/Font;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v3, v10, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v16

    .line 209
    .local v16, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/Font;

    sget-object v4, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 211
    .end local v16           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v19

    .line 213
    .local v19, npe:Ljava/lang/NullPointerException;
    new-instance v3, Lcom/itextpdf/text/Font;

    sget-object v4, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 192
    .end local v19           #npe:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public getFont(Ljava/util/Properties;)Lcom/itextpdf/text/Font;
    .locals 19
    .parameter "attributes"

    .prologue
    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, fontname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/FontFactoryImp;->defaultEncoding:Ljava/lang/String;

    .line 229
    .local v4, encoding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/FontFactoryImp;->defaultEmbedding:Z

    .line 230
    .local v5, embedded:Z
    const/high16 v6, -0x4080

    .line 231
    .local v6, size:F
    const/4 v7, 0x0

    .line 232
    .local v7, style:I
    const/4 v8, 0x0

    .line 233
    .local v8, color:Lcom/itextpdf/text/BaseColor;
    const-string/jumbo v2, "style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 235
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/html/Markup;->parseAttributes(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v15

    .line 236
    .local v15, styleAttributes:Ljava/util/Properties;
    invoke-virtual {v15}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 237
    const-string/jumbo v2, "style"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .end local v15           #styleAttributes:Ljava/util/Properties;
    :cond_0
    :goto_0
    const-string/jumbo v2, "encoding"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 269
    move-object/from16 v4, v17

    .line 271
    :cond_1
    const-string/jumbo v2, "true"

    const-string/jumbo v18, "embedded"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    const/4 v5, 0x1

    .line 274
    :cond_2
    const-string/jumbo v2, "font"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 275
    move-object/from16 v3, v17

    .line 277
    :cond_3
    const-string/jumbo v2, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 278
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;)F

    move-result v6

    .line 280
    :cond_4
    const-string/jumbo v2, "style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 281
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v7, v2

    .line 283
    :cond_5
    const-string/jumbo v2, "fontstyle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 284
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v7, v2

    .line 286
    :cond_6
    const-string/jumbo v2, "red"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, r:Ljava/lang/String;
    const-string/jumbo v2, "green"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, g:Ljava/lang/String;
    const-string/jumbo v2, "blue"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, b:Ljava/lang/String;
    if-nez v13, :cond_7

    if-nez v11, :cond_7

    if-eqz v9, :cond_13

    .line 290
    :cond_7
    const/4 v14, 0x0

    .line 291
    .local v14, red:I
    const/4 v12, 0x0

    .line 292
    .local v12, green:I
    const/4 v10, 0x0

    .line 293
    .local v10, blue:I
    if-eqz v13, :cond_8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 294
    :cond_8
    if-eqz v11, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 295
    :cond_9
    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 296
    :cond_a
    new-instance v8, Lcom/itextpdf/text/BaseColor;

    .end local v8           #color:Lcom/itextpdf/text/BaseColor;
    invoke-direct {v8, v14, v12, v10}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    .line 301
    .end local v10           #blue:I
    .end local v12           #green:I
    .end local v14           #red:I
    .restart local v8       #color:Lcom/itextpdf/text/BaseColor;
    :cond_b
    :goto_1
    if-nez v3, :cond_14

    .line 302
    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    .end local v3           #fontname:Ljava/lang/String;
    move-result-object v2

    .line 304
    :goto_2
    return-object v2

    .line 240
    .end local v9           #b:Ljava/lang/String;
    .end local v11           #g:Ljava/lang/String;
    .end local v13           #r:Ljava/lang/String;
    .restart local v3       #fontname:Ljava/lang/String;
    .restart local v15       #styleAttributes:Ljava/util/Properties;
    :cond_c
    const-string/jumbo v2, "font-family"

    invoke-virtual {v15, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    if-eqz v3, :cond_e

    .line 243
    :goto_3
    const/16 v2, 0x2c

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_e

    .line 244
    const/4 v2, 0x0

    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 245
    .local v16, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/FontFactoryImp;->isRegistered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 246
    move-object/from16 v3, v16

    goto :goto_3

    .line 249
    :cond_d
    const/16 v2, 0x2c

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 253
    .end local v16           #tmp:Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "font-size"

    invoke-virtual {v15, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 254
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;)F

    move-result v6

    .line 256
    :cond_f
    const-string/jumbo v2, "font-weight"

    invoke-virtual {v15, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 257
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v7, v2

    .line 259
    :cond_10
    const-string/jumbo v2, "font-style"

    invoke-virtual {v15, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 260
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v7, v2

    .line 262
    :cond_11
    const-string/jumbo v2, "color"

    invoke-virtual {v15, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 263
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v8

    .line 265
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 298
    .end local v15           #styleAttributes:Ljava/util/Properties;
    .restart local v9       #b:Ljava/lang/String;
    .restart local v11       #g:Ljava/lang/String;
    .restart local v13       #r:Ljava/lang/String;
    :cond_13
    const-string/jumbo v2, "color"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    .line 299
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/html/Markup;->decodeColor(Ljava/lang/String;)Lcom/itextpdf/text/BaseColor;

    move-result-object v8

    goto/16 :goto_1

    :cond_14
    move-object/from16 v2, p0

    .line 304
    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/text/FontFactoryImp;->getFont(Ljava/lang/String;Ljava/lang/String;ZFILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object v2

    goto/16 :goto_2
.end method

.method public getRegisteredFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered(Ljava/lang/String;)Z
    .locals 2
    .parameter "fontname"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/FontFactoryImp;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "path"
    .parameter "alias"

    .prologue
    .line 517
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".ttf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".otf"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".ttc,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_9

    .line 518
    :cond_0
    const-string/jumbo v18, "Cp1252"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v3

    .line 519
    .local v3, allNames:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    aget-object v18, v3, v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    if-eqz p2, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_1
    const/16 v18, 0x2

    aget-object v18, v3, v18

    check-cast v18, [[Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 525
    .local v16, names:[[Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v14, :cond_2

    aget-object v15, v4, v10

    .line 526
    .local v15, name:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-object v19, v15, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 528
    .end local v15           #name:[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 529
    .local v8, fullName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 530
    .local v7, familyName:Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v3, v18

    check-cast v18, [[Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 531
    const/4 v12, 0x0

    .local v12, k:I
    :goto_1
    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 532
    move-object/from16 v4, v16

    array-length v14, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_3

    aget-object v15, v4, v10

    .line 533
    .restart local v15       #name:[Ljava/lang/String;
    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    aget-object v18, v18, v12

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    add-int/lit8 v19, v12, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    add-int/lit8 v19, v12, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 534
    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 535
    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v12, v0

    .line 531
    .end local v15           #name:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v12, v12, 0x3

    goto :goto_1

    .line 532
    .restart local v15       #name:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 540
    .end local v15           #name:[Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_d

    .line 541
    const-string/jumbo v13, ""

    .line 542
    .local v13, lastName:Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v3, v18

    check-cast v18, [[Ljava/lang/String;

    move-object/from16 v0, v18

    check-cast v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 543
    move-object/from16 v4, v16

    array-length v14, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v14, :cond_d

    aget-object v15, v4, v10

    .line 544
    .restart local v15       #name:[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_4
    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_8

    .line 545
    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    aget-object v18, v18, v12

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    add-int/lit8 v19, v12, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    sget-object v18, Lcom/itextpdf/text/FontFactoryImp;->TTFamilyOrder:[Ljava/lang/String;

    add-int/lit8 v19, v12, 0x2

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget-object v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 546
    const/16 v18, 0x3

    aget-object v8, v15, v18

    .line 547
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 544
    :cond_6
    add-int/lit8 v12, v12, 0x3

    goto :goto_4

    .line 549
    :cond_7
    move-object v13, v8

    .line 550
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 557
    .end local v3           #allNames:[Ljava/lang/Object;
    .end local v4           #arr$:[[Ljava/lang/String;
    .end local v7           #familyName:Ljava/lang/String;
    .end local v8           #fullName:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #k:I
    .end local v13           #lastName:Ljava/lang/String;
    .end local v14           #len$:I
    .end local v15           #name:[Ljava/lang/String;
    .end local v16           #names:[[Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".ttc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 558
    if-eqz p2, :cond_a

    .line 559
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v19, "class FontFactory: You can\'t define an alias for a true type collection."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/BaseFont;->enumerateTTCNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 561
    .local v16, names:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_d

    .line 562
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/FontFactoryImp;->register(Ljava/lang/String;)V

    .line 561
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 565
    .end local v9           #i:I
    .end local v16           #names:[Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".afm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".pfm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 566
    :cond_c
    const-string/jumbo v18, "Cp1252"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v5

    .line 567
    .local v5, bf:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/BaseFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x3

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 568
    .restart local v8       #fullName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/BaseFont;->getFamilyFontName()[[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x3

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 569
    .restart local v7       #familyName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 570
    .local v17, psName:Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v8, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 582
    .end local v5           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v7           #familyName:Ljava/lang/String;
    .end local v8           #fullName:Ljava/lang/String;
    .end local v17           #psName:Ljava/lang/String;
    :cond_d
    return-void

    .line 575
    :catch_0
    move-exception v6

    .line 577
    .local v6, de:Lcom/itextpdf/text/DocumentException;
    new-instance v18, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 579
    .end local v6           #de:Lcom/itextpdf/text/DocumentException;
    :catch_1
    move-exception v11

    .line 580
    .local v11, ioe:Ljava/io/IOException;
    new-instance v18, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v18
.end method

.method public registerDirectories()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, count:I
    const-string/jumbo v1, "c:/windows/fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    const-string/jumbo v1, "c:/winnt/fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    const-string/jumbo v1, "d:/windows/fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    const-string/jumbo v1, "d:/winnt/fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    const-string/jumbo v1, "/usr/share/X11/fonts"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    const-string/jumbo v1, "/usr/X/lib/X11/fonts"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 654
    const-string/jumbo v1, "/usr/openwin/lib/X11/fonts"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    const-string/jumbo v1, "/usr/share/fonts"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    const-string/jumbo v1, "/usr/X11R6/lib/X11/fonts"

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    const-string/jumbo v1, "/Library/Fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 658
    const-string/jumbo v1, "/System/Library/Fonts"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    return v0
.end method

.method public registerDirectory(Ljava/lang/String;)I
    .locals 1
    .parameter "dir"

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public registerDirectory(Ljava/lang/String;Z)I
    .locals 12
    .parameter "dir"
    .parameter "scanSubdirectories"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, count:I
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 639
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v8

    .line 605
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, files:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 608
    const/4 v4, 0x0

    .local v4, k:I
    move-object v2, v1

    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :goto_1
    array-length v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v8, :cond_8

    .line 610
    :try_start_1
    new-instance v1, Ljava/io/File;

    aget-object v8, v3, v4

    invoke-direct {v1, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 611
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 612
    if-eqz p2, :cond_2

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v10}, Lcom/itextpdf/text/FontFactoryImp;->registerDirectory(Ljava/lang/String;Z)I

    move-result v8

    add-int/2addr v0, v8

    .line 608
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 616
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x4

    if-ge v8, v10, :cond_5

    move-object v7, v9

    .line 618
    .local v7, suffix:Ljava/lang/String;
    :goto_3
    const-string/jumbo v8, ".afm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, ".pfm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 620
    :cond_4
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ".pfb"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v6, pfb:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 622
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/itextpdf/text/FontFactoryImp;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 617
    .end local v6           #pfb:Ljava/io/File;
    .end local v7           #suffix:Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 625
    .restart local v7       #suffix:Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, ".ttf"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, ".otf"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, ".ttc"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 626
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, Lcom/itextpdf/text/FontFactoryImp;->register(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 636
    .end local v1           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #k:I
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #suffix:Ljava/lang/String;
    :catch_0
    move-exception v8

    :cond_8
    move v8, v0

    .line 639
    goto/16 :goto_0

    .line 631
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/lang/String;
    .restart local v4       #k:I
    :catch_1
    move-exception v8

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto/16 :goto_2

    :catch_2
    move-exception v8

    goto/16 :goto_2
.end method

.method public registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "familyName"
    .parameter "fullName"
    .parameter "path"

    .prologue
    .line 475
    if-eqz p3, :cond_0

    .line 476
    iget-object v4, p0, Lcom/itextpdf/text/FontFactoryImp;->trueTypeFonts:Ljava/util/Hashtable;

    invoke-virtual {v4, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 478
    .local v3, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 479
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .restart local v3       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v4, p0, Lcom/itextpdf/text/FontFactoryImp;->fontFamilies:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 485
    .local v0, fullNameLength:I
    const/4 v1, 0x0

    .line 486
    .local v1, inserted:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 487
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v0, :cond_4

    .line 488
    invoke-virtual {v3, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 489
    const/4 v1, 0x1

    .line 493
    :cond_3
    if-nez v1, :cond_1

    .line 494
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
