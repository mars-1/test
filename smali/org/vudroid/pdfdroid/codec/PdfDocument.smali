.class public Lorg/vudroid/pdfdroid/codec/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"

# interfaces
.implements Lorg/vudroid/core/codec/CodecDocument;


# static fields
.field private static final FITZMEMORY:I = 0x40


# instance fields
.field private docHandle:J


# direct methods
.method private constructor <init>(J)V
    .locals 0
    .parameter "docHandle"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J

    .line 13
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native getPageCount(J)I
.end method

.method private static native open(ILjava/lang/String;Ljava/lang/String;)J
.end method

.method static openDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/vudroid/pdfdroid/codec/PdfDocument;
    .locals 3
    .parameter "fname"
    .parameter "pwd"

    .prologue
    .line 24
    new-instance v0, Lorg/vudroid/pdfdroid/codec/PdfDocument;

    const/high16 v1, 0x400

    invoke-static {v1, p0, p1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->open(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/vudroid/pdfdroid/codec/PdfDocument;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->recycle()V

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    return-void
.end method

.method public getPage(I)Lorg/vudroid/core/codec/CodecPage;
    .locals 3
    .parameter "pageNumber"

    .prologue
    .line 16
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lorg/vudroid/pdfdroid/codec/PdfPage;->createPage(JI)Lorg/vudroid/pdfdroid/codec/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->getPageCount(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 41
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->free(J)V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->docHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
