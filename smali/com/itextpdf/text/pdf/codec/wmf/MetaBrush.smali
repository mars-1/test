.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
.super Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;
.source "MetaBrush.java"


# static fields
.field public static final BS_DIBPATTERN:I = 0x5

.field public static final BS_HATCHED:I = 0x2

.field public static final BS_NULL:I = 0x1

.field public static final BS_PATTERN:I = 0x3

.field public static final BS_SOLID:I = 0x0

.field public static final HS_BDIAGONAL:I = 0x3

.field public static final HS_CROSS:I = 0x4

.field public static final HS_DIAGCROSS:I = 0x5

.field public static final HS_FDIAGONAL:I = 0x2

.field public static final HS_HORIZONTAL:I = 0x0

.field public static final HS_VERTICAL:I = 0x1


# instance fields
.field color:Lcom/itextpdf/text/BaseColor;

.field hatch:I

.field style:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->style:I

    .line 64
    sget-object v0, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->color:Lcom/itextpdf/text/BaseColor;

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->type:I

    .line 68
    return-void
.end method


# virtual methods
.method public getColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->color:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getHatch()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->hatch:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->style:I

    return v0
.end method

.method public init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->style:I

    .line 72
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->color:Lcom/itextpdf/text/BaseColor;

    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->hatch:I

    .line 74
    return-void
.end method
