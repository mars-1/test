.class public Lorg/vudroid/pdfdroid/PdfViewerActivity;
.super Lorg/vudroid/core/BaseViewerActivity;
.source "PdfViewerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDecodeService()Lorg/vudroid/core/DecodeService;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lorg/vudroid/core/DecodeServiceBase;

    new-instance v1, Lorg/vudroid/pdfdroid/codec/PdfContext;

    invoke-direct {v1}, Lorg/vudroid/pdfdroid/codec/PdfContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/vudroid/core/DecodeServiceBase;-><init>(Lorg/vudroid/core/codec/CodecContext;)V

    return-object v0
.end method
