.class public Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.super Ljava/lang/Object;
.source "PdfContentStreamProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;,
        Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    }
.end annotation


# static fields
.field public static final DEFAULTOPERATOR:Ljava/lang/String; = "DefaultOperator"


# instance fields
.field private gsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/parser/GraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field private markedContentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/parser/ContentOperator;",
            ">;"
        }
    .end annotation
.end field

.field private final renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

.field private resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

.field private textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

.field private final xobjectDoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/RenderListener;)V
    .locals 1
    .parameter "renderListener"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    .line 109
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    .line 111
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->populateOperators()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->populateXObjectDoHandlers()V

    .line 114
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->reset()V

    .line 115
    return-void
.end method

.method static synthetic access$2500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayPdfString(Lcom/itextpdf/text/pdf/PdfString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->applyTextAdjust(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/GraphicsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->beginText()V

    return-void
.end method

.method static synthetic access$3300(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endText()V

    return-void
.end method

.method static synthetic access$3400(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->beginMarkedContent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->endMarkedContent()V

    return-void
.end method

.method static synthetic access$3600(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->displayXObject(Lcom/itextpdf/text/pdf/PdfName;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;)Lcom/itextpdf/text/pdf/parser/RenderListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    return-object v0
.end method

.method private applyTextAdjust(F)V
    .locals 3
    .parameter "tj"

    .prologue
    .line 318
    neg-float v1, p1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->fontSize:F

    mul-float/2addr v1, v2

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/text/pdf/parser/GraphicsState;->horizontalScaling:F

    mul-float v0, v1, v2

    .line 320
    .local v0, adjustBy:F
    new-instance v1, Lcom/itextpdf/text/pdf/parser/Matrix;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FF)V

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 321
    return-void
.end method

.method private beginMarkedContent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 2
    .parameter "tag"
    .parameter "dict"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/text/pdf/parser/MarkedContentInfo;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method private beginText()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->beginTextBlock()V

    .line 264
    return-void
.end method

.method private decode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;
    .locals 4
    .parameter "in"

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 256
    .local v0, bytes:[B
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;->font:Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decode([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private displayPdfString(Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 5
    .parameter "string"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->decode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, unicode:Ljava/lang/String;
    new-instance v0, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/GraphicsState;Lcom/itextpdf/text/pdf/parser/Matrix;Ljava/util/Collection;)V

    .line 283
    .local v0, renderInfo:Lcom/itextpdf/text/pdf/parser/TextRenderInfo;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v2, v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->renderText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)V

    .line 285
    new-instance v2, Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getUnscaledWidth()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/parser/Matrix;-><init>(FF)V

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/Matrix;->multiply(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 286
    return-void
.end method

.method private displayXObject(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 7
    .parameter "xobjectName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 298
    .local v4, xobjects:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .local v2, xobject:Lcom/itextpdf/text/pdf/PdfObject;
    move-object v3, v2

    .line 299
    check-cast v3, Lcom/itextpdf/text/pdf/PdfStream;

    .line 301
    .local v3, xobjectStream:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/PdfStream;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 302
    .local v1, subType:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 304
    .local v0, handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    if-nez v0, :cond_0

    .line 305
    iget-object v5, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 306
    .restart local v0       #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    :cond_0
    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsIndirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-interface {v0, p0, v3, v5}, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;->handleXObject(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 311
    return-void

    .line 308
    .end local v0           #handler:Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "XObject.1.is.not.a.stream"

    invoke-static {v6, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private endMarkedContent()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->markedContentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private endText()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->renderListener:Lcom/itextpdf/text/pdf/parser/RenderListener;

    invoke-interface {v0}, Lcom/itextpdf/text/pdf/parser/RenderListener;->endTextBlock()V

    .line 271
    return-void
.end method

.method private gs()Lcom/itextpdf/text/pdf/parser/GraphicsState;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/GraphicsState;

    return-object v0
.end method

.method private invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "operator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfLiteral;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    .local p2, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 223
    .local v0, op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    const-string/jumbo v2, "DefaultOperator"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 226
    .restart local v0       #op:Lcom/itextpdf/text/pdf/parser/ContentOperator;
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/ContentOperator;->invoke(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 227
    return-void
.end method

.method private populateOperators()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 142
    const-string/jumbo v7, "DefaultOperator"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreOperatorContentOperator;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 144
    const-string/jumbo v7, "q"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PushGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 145
    const-string/jumbo v7, "Q"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$PopGraphicsState;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 146
    const-string/jumbo v7, "cm"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ModifyCurrentTransformationMatrix;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 147
    const-string/jumbo v7, "gs"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ProcessGraphicsStateResource;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 149
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 150
    .local v0, tcOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;
    const-string/jumbo v7, "Tc"

    invoke-virtual {p0, v7, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 151
    new-instance v6, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;

    invoke-direct {v6, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 152
    .local v6, twOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;
    const-string/jumbo v7, "Tw"

    invoke-virtual {p0, v7, v6}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 153
    const-string/jumbo v7, "Tz"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextHorizontalScaling;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 154
    new-instance v4, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;

    invoke-direct {v4, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 155
    .local v4, tlOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;
    const-string/jumbo v7, "TL"

    invoke-virtual {p0, v7, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 156
    const-string/jumbo v7, "Tf"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextFont;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 157
    const-string/jumbo v7, "Tr"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRenderMode;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 158
    const-string/jumbo v7, "Ts"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextRise;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 160
    const-string/jumbo v7, "BT"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 161
    const-string/jumbo v7, "ET"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 162
    const-string/jumbo v7, "BMC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContent;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 163
    const-string/jumbo v7, "BDC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$BeginMarkedContentDictionary;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 164
    const-string/jumbo v7, "EMC"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$EndMarkedContent;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 166
    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;

    invoke-direct {v1, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 167
    .local v1, tdOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;
    const-string/jumbo v7, "Td"

    invoke-virtual {p0, v7, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 168
    const-string/jumbo v7, "TD"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;

    invoke-direct {v8, v1, v4}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLineWithLeading;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextLeading;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 169
    const-string/jumbo v7, "Tm"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextSetTextMatrix;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 170
    new-instance v5, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveStartNextLine;)V

    .line 171
    .local v5, tstarOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;
    const-string/jumbo v7, "T*"

    invoke-virtual {p0, v7, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 173
    new-instance v3, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    invoke-direct {v3, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    .line 174
    .local v3, tjOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;
    const-string/jumbo v7, "Tj"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 175
    new-instance v2, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$TextMoveNextLine;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowText;)V

    .line 176
    .local v2, tickOperator:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;
    const-string/jumbo v7, "\'"

    invoke-virtual {p0, v7, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 177
    const-string/jumbo v7, "\""

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;

    invoke-direct {v8, v6, v0, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowTextWithSpacing;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextWordSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$SetTextCharacterSpacing;Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$MoveNextLineAndShowText;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 178
    const-string/jumbo v7, "TJ"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ShowTextArray;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 180
    const-string/jumbo v7, "Do"

    new-instance v8, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$Do;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;

    .line 181
    return-void
.end method

.method private populateXObjectDoHandlers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DEFAULT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$IgnoreXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 119
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$FormXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 120
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->IMAGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ImageXObjectDoHandler;-><init>(Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    .line 121
    return-void
.end method


# virtual methods
.method public processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 11
    .parameter "contentBytes"
    .parameter "resources"

    .prologue
    .line 330
    iget-object v9, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-virtual {v9, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->push(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 332
    :try_start_0
    new-instance v8, Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-direct {v8, p1}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 333
    .local v8, tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v7, Lcom/itextpdf/text/pdf/PdfContentParser;

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfContentParser;-><init>(Lcom/itextpdf/text/pdf/PRTokeniser;)V

    .line 334
    .local v7, ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v5, operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    invoke-virtual {v7, v5}, Lcom/itextpdf/text/pdf/PdfContentParser;->parse(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 336
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfLiteral;

    .line 344
    .local v6, operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    const-string/jumbo v9, "ID"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 345
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v0, accumulated:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 349
    .local v4, found:I
    :goto_1
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v2

    .local v2, ch:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 350
    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 351
    add-int/lit8 v4, v4, 0x1

    .line 352
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 384
    .end local v0           #accumulated:Ljava/io/ByteArrayOutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .end local v4           #found:I
    .end local v5           #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v6           #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    .end local v7           #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    .end local v8           #tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v3

    .line 385
    .local v3, e:Ljava/lang/Exception;
    new-instance v9, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v9, v3}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 353
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #accumulated:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v4       #found:I
    .restart local v5       #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v6       #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    .restart local v7       #ps:Lcom/itextpdf/text/pdf/PdfContentParser;
    .restart local v8       #tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_0
    const/4 v9, 0x1

    if-ne v4, v9, :cond_1

    const/16 v9, 0x45

    if-ne v2, v9, :cond_1

    .line 354
    add-int/lit8 v4, v4, 0x1

    .line 355
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 356
    :cond_1
    const/4 v9, 0x2

    if-ne v4, v9, :cond_2

    const/16 v9, 0x49

    if-ne v2, v9, :cond_2

    .line 357
    add-int/lit8 v4, v4, 0x1

    .line 358
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 359
    :cond_2
    const/4 v9, 0x3

    if-ne v4, v9, :cond_4

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 360
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .restart local v5       #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    new-instance v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v10, "ID"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {p0, v9, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 366
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .restart local v5       #operands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    new-instance v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    const-string/jumbo v10, "EI"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {p0, v9, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    .line 380
    .end local v0           #accumulated:Ljava/io/ByteArrayOutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .end local v4           #found:I
    :cond_3
    invoke-direct {p0, v6, v5}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->invokeOperator(Lcom/itextpdf/text/pdf/PdfLiteral;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 372
    .restart local v0       #accumulated:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #ch:I
    .restart local v4       #found:I
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 373
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 375
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 387
    .end local v0           #accumulated:Ljava/io/ByteArrayOutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #ch:I
    .end local v4           #found:I
    .end local v6           #operator:Lcom/itextpdf/text/pdf/PdfLiteral;
    :cond_5
    iget-object v9, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->pop()V

    .line 389
    return-void
.end method

.method public registerContentOperator(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/ContentOperator;)Lcom/itextpdf/text/pdf/parser/ContentOperator;
    .locals 1
    .parameter "operatorString"
    .parameter "operator"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->operators:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/ContentOperator;

    return-object v0
.end method

.method public registerXObjectDoHandler(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;)Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;
    .locals 1
    .parameter "xobjectSubType"
    .parameter "handler"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->xobjectDoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/parser/XObjectDoHandler;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 202
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->gsStack:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/text/pdf/parser/GraphicsState;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/parser/GraphicsState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 203
    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 204
    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->textLineMatrix:Lcom/itextpdf/text/pdf/parser/Matrix;

    .line 205
    new-instance v0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->resources:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;

    .line 206
    return-void
.end method
