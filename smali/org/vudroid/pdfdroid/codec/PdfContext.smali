.class public Lorg/vudroid/pdfdroid/codec/PdfContext;
.super Ljava/lang/Object;
.source "PdfContext.java"

# interfaces
.implements Lorg/vudroid/core/codec/CodecContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 11
    invoke-static {}, Lorg/vudroid/core/VuDroidLibraryLoader;->load()V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openDocument(Ljava/lang/String;)Lorg/vudroid/core/codec/CodecDocument;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 15
    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->openDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/vudroid/pdfdroid/codec/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 20
    return-void
.end method
