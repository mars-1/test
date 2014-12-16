.class public Lcom/itextpdf/text/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# static fields
.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field public static final CHAR_SPACING:Ljava/lang/String; = "CHAR_SPACING"

.field public static final COLOR:Ljava/lang/String; = "COLOR"

.field public static final ENCODING:Ljava/lang/String; = "ENCODING"

.field public static final GENERICTAG:Ljava/lang/String; = "GENERICTAG"

.field public static final HSCALE:Ljava/lang/String; = "HSCALE"

.field public static final HYPHENATION:Ljava/lang/String; = "HYPHENATION"

.field public static final IMAGE:Ljava/lang/String; = "IMAGE"

.field public static final LOCALDESTINATION:Ljava/lang/String; = "LOCALDESTINATION"

.field public static final LOCALGOTO:Ljava/lang/String; = "LOCALGOTO"

.field public static final NEWLINE:Lcom/itextpdf/text/Chunk; = null

.field public static final NEWPAGE:Ljava/lang/String; = "NEWPAGE"

.field public static final NEXTPAGE:Lcom/itextpdf/text/Chunk; = null

.field public static final OBJECT_REPLACEMENT_CHARACTER:Ljava/lang/String; = "\ufffc"

.field public static final PDFANNOTATION:Ljava/lang/String; = "PDFANNOTATION"

.field public static final REMOTEGOTO:Ljava/lang/String; = "REMOTEGOTO"

.field public static final SEPARATOR:Ljava/lang/String; = "SEPARATOR"

.field public static final SKEW:Ljava/lang/String; = "SKEW"

.field public static final SPLITCHARACTER:Ljava/lang/String; = "SPLITCHARACTER"

.field public static final SUBSUPSCRIPT:Ljava/lang/String; = "SUBSUPSCRIPT"

.field public static final TAB:Ljava/lang/String; = "TAB"

.field public static final TEXTRENDERMODE:Ljava/lang/String; = "TEXTRENDERMODE"

.field public static final UNDERLINE:Ljava/lang/String; = "UNDERLINE"


# instance fields
.field protected attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected content:Ljava/lang/StringBuffer;

.field protected font:Lcom/itextpdf/text/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v1, "\n"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Chunk;->NEWLINE:Lcom/itextpdf/text/Chunk;

    .line 90
    new-instance v0, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/Chunk;->NEXTPAGE:Lcom/itextpdf/text/Chunk;

    .line 92
    sget-object v0, Lcom/itextpdf/text/Chunk;->NEXTPAGE:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v0}, Lcom/itextpdf/text/Chunk;->setNewPage()Lcom/itextpdf/text/Chunk;

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 101
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 104
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 114
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 179
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Chunk;-><init>(CLcom/itextpdf/text/Font;)V

    .line 180
    return-void
.end method

.method public constructor <init>(CLcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "c"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 101
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 104
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iput-object p2, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "ck"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 101
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 104
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 121
    iget-object v0, p1, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p1, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lcom/itextpdf/text/Font;

    iget-object v1, p1, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 130
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Image;FF)V
    .locals 5
    .parameter "image"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/high16 v3, 0x7fc0

    .line 193
    const-string/jumbo v1, "\ufffc"

    new-instance v2, Lcom/itextpdf/text/Font;

    invoke-direct {v2}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 194
    invoke-static {p1}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v0

    .line 195
    .local v0, copyImage:Lcom/itextpdf/text/Image;
    invoke-virtual {v0, v3, v3}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 196
    const-string/jumbo v1, "IMAGE"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p3}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Image;FFZ)V
    .locals 4
    .parameter "image"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "changeLeading"

    .prologue
    .line 275
    const-string/jumbo v0, "\ufffc"

    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-direct {v1}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 276
    const-string/jumbo v0, "IMAGE"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p3}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;)V
    .locals 1
    .parameter "separator"

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;Z)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;F)V
    .locals 1
    .parameter "separator"
    .parameter "tabPosition"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;FZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;FZ)V
    .locals 5
    .parameter "separator"
    .parameter "tabPosition"
    .parameter "newline"

    .prologue
    const/4 v4, 0x0

    .line 254
    const-string/jumbo v0, "\ufffc"

    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-direct {v1}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 255
    cmpg-float v0, p2, v4

    if-gez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "a.tab.position.may.not.be.lower.than.0.yours.is.1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    const-string/jumbo v0, "TAB"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/draw/DrawInterface;Z)V
    .locals 4
    .parameter "separator"
    .parameter "vertical"

    .prologue
    .line 224
    const-string/jumbo v0, "\ufffc"

    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-direct {v1}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 225
    const-string/jumbo v0, "SEPARATOR"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 154
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0}, Lcom/itextpdf/text/Font;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 1
    .parameter "content"
    .parameter "font"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 101
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 104
    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    .line 143
    iput-object p2, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 144
    return-void
.end method

.method private setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "string"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCharacterSpacing()F
    .locals 3

    .prologue
    .line 894
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v2, "CHAR_SPACING"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v2, "CHAR_SPACING"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 896
    .local v0, f:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 898
    .end local v0           #f:Ljava/lang/Float;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChunks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lcom/itextpdf/text/Font;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    return-object v0
.end method

.method public getHorizontalScaling()F
    .locals 4

    .prologue
    const/high16 v1, 0x3f80

    .line 469
    iget-object v2, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v3, "HSCALE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 472
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getHyphenation()Lcom/itextpdf/text/pdf/HyphenationEvent;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 862
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v1, "HYPHENATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/HyphenationEvent;

    goto :goto_0
.end method

.method public getImage()Lcom/itextpdf/text/Image;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 770
    :goto_0
    return-object v1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v3, "IMAGE"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 767
    .local v0, obj:[Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 768
    goto :goto_0

    .line 770
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/itextpdf/text/Image;

    goto :goto_0
.end method

.method public getTextRise()F
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v2, "SUBSUPSCRIPT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v2, "SUBSUPSCRIPT"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 558
    .local v0, f:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 560
    .end local v0           #f:Ljava/lang/Float;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidthPoint()F
    .locals 3

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/itextpdf/text/Chunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/itextpdf/text/Chunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Font;->getCalculatedBaseFont(Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    invoke-virtual {v2}, Lcom/itextpdf/text/Font;->getCalculatedSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/text/Chunk;->getHorizontalScaling()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->content:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 292
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAction(Lcom/itextpdf/text/pdf/PdfAction;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "action"

    .prologue
    .line 786
    const-string/jumbo v0, "ACTION"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "url"

    .prologue
    .line 810
    const-string/jumbo v0, "ACTION"

    new-instance v1, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setAnchor(Ljava/net/URL;)Lcom/itextpdf/text/Chunk;
    .locals 3
    .parameter "url"

    .prologue
    .line 798
    const-string/jumbo v0, "ACTION"

    new-instance v1, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "annotation"

    .prologue
    .line 837
    const-string/jumbo v0, "PDFANNOTATION"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setAttributes(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 427
    return-void
.end method

.method public setBackground(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Chunk;
    .locals 6
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 593
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/Chunk;->setBackground(Lcom/itextpdf/text/BaseColor;FFFF)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setBackground(Lcom/itextpdf/text/BaseColor;FFFF)Lcom/itextpdf/text/Chunk;
    .locals 6
    .parameter "color"
    .parameter "extraLeft"
    .parameter "extraBottom"
    .parameter "extraRight"
    .parameter "extraTop"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 613
    const-string/jumbo v0, "BACKGROUND"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x4

    new-array v2, v2, [F

    aput p2, v2, v3

    aput p3, v2, v4

    aput p4, v2, v5

    const/4 v3, 0x3

    aput p5, v2, v3

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setCharacterSpacing(F)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "charSpace"

    .prologue
    .line 885
    const-string/jumbo v0, "CHAR_SPACING"

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setFont(Lcom/itextpdf/text/Font;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/itextpdf/text/Chunk;->font:Lcom/itextpdf/text/Font;

    .line 339
    return-void
.end method

.method public setGenericTag(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "text"

    .prologue
    .line 751
    const-string/jumbo v0, "GENERICTAG"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setHorizontalScaling(F)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "scale"

    .prologue
    .line 460
    const-string/jumbo v0, "HSCALE"

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setHyphenation(Lcom/itextpdf/text/pdf/HyphenationEvent;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "hyphenation"

    .prologue
    .line 671
    const-string/jumbo v0, "HYPHENATION"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setLocalDestination(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "name"

    .prologue
    .line 734
    const-string/jumbo v0, "LOCALDESTINATION"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setLocalGoto(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "name"

    .prologue
    .line 720
    const-string/jumbo v0, "LOCALGOTO"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setNewPage()Lcom/itextpdf/text/Chunk;
    .locals 2

    .prologue
    .line 823
    const-string/jumbo v0, "NEWPAGE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteGoto(Ljava/lang/String;I)Lcom/itextpdf/text/Chunk;
    .locals 4
    .parameter "filename"
    .parameter "page"

    .prologue
    .line 702
    const-string/jumbo v0, "REMOTEGOTO"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteGoto(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/Chunk;
    .locals 3
    .parameter "filename"
    .parameter "name"

    .prologue
    .line 688
    const-string/jumbo v0, "REMOTEGOTO"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setSkew(FF)Lcom/itextpdf/text/Chunk;
    .locals 6
    .parameter "alpha"
    .parameter "beta"

    .prologue
    const-wide v4, 0x4066800000000000L

    const-wide v2, 0x400921fb54442d18L

    .line 577
    float-to-double v0, p1

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 578
    float-to-double v0, p2

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 579
    const-string/jumbo v0, "SKEW"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setSplitCharacter(Lcom/itextpdf/text/SplitCharacter;)Lcom/itextpdf/text/Chunk;
    .locals 1
    .parameter "splitCharacter"

    .prologue
    .line 657
    const-string/jumbo v0, "SPLITCHARACTER"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setTextRenderMode(IFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Chunk;
    .locals 4
    .parameter "mode"
    .parameter "strokeWidth"
    .parameter "strokeColor"

    .prologue
    .line 641
    const-string/jumbo v0, "TEXTRENDERMODE"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setTextRise(F)Lcom/itextpdf/text/Chunk;
    .locals 2
    .parameter "rise"

    .prologue
    .line 547
    const-string/jumbo v0, "SUBSUPSCRIPT"

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setUnderline(FF)Lcom/itextpdf/text/Chunk;
    .locals 7
    .parameter "thickness"
    .parameter "yPosition"

    .prologue
    const/4 v3, 0x0

    .line 493
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/Chunk;->setUnderline(Lcom/itextpdf/text/BaseColor;FFFFI)Lcom/itextpdf/text/Chunk;

    move-result-object v0

    return-object v0
.end method

.method public setUnderline(Lcom/itextpdf/text/BaseColor;FFFFI)Lcom/itextpdf/text/Chunk;
    .locals 6
    .parameter "color"
    .parameter "thickness"
    .parameter "thicknessMul"
    .parameter "yPosition"
    .parameter "yPositionMul"
    .parameter "cap"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 522
    iget-object v2, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 523
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    .line 524
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v2, 0x5

    new-array v2, v2, [F

    aput p2, v2, v3

    aput p3, v2, v5

    aput p4, v2, v4

    const/4 v3, 0x3

    aput p5, v2, v3

    const/4 v3, 0x4

    int-to-float v4, p6

    aput v4, v2, v3

    aput-object v2, v0, v5

    .line 527
    .local v0, obj:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/itextpdf/text/Chunk;->attributes:Ljava/util/HashMap;

    const-string/jumbo v3, "UNDERLINE"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    check-cast v2, [[Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/itextpdf/text/Utilities;->addToArray([[Ljava/lang/Object;[Ljava/lang/Object;)[[Ljava/lang/Object;

    move-result-object v1

    .line 529
    .local v1, unders:[[Ljava/lang/Object;
    const-string/jumbo v2, "UNDERLINE"

    invoke-direct {p0, v2, v1}, Lcom/itextpdf/text/Chunk;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/itextpdf/text/Chunk;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0xa

    return v0
.end method
