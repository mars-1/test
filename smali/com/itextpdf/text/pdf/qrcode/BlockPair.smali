.class final Lcom/itextpdf/text/pdf/qrcode/BlockPair;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;

.field private final errorCorrectionBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/qrcode/ByteArray;Lcom/itextpdf/text/pdf/qrcode/ByteArray;)V
    .locals 0
    .parameter "data"
    .parameter "errorCorrection"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    .line 28
    iput-object p2, p0, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->errorCorrectionBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    .line 29
    return-void
.end method


# virtual methods
.method public getDataBytes()Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->dataBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    return-object v0
.end method

.method public getErrorCorrectionBytes()Lcom/itextpdf/text/pdf/qrcode/ByteArray;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/BlockPair;->errorCorrectionBytes:Lcom/itextpdf/text/pdf/qrcode/ByteArray;

    return-object v0
.end method
