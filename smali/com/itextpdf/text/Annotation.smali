.class public Lcom/itextpdf/text/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# static fields
.field public static final APPLICATION:Ljava/lang/String; = "application"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final DEFAULTDIR:Ljava/lang/String; = "defaultdir"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FILE_DEST:I = 0x3

.field public static final FILE_PAGE:I = 0x4

.field public static final LAUNCH:I = 0x6

.field public static final LLX:Ljava/lang/String; = "llx"

.field public static final LLY:Ljava/lang/String; = "lly"

.field public static final MIMETYPE:Ljava/lang/String; = "mime"

.field public static final NAMED:Ljava/lang/String; = "named"

.field public static final NAMED_DEST:I = 0x5

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PARAMETERS:Ljava/lang/String; = "parameters"

.field public static final SCREEN:I = 0x7

.field public static final TEXT:I = 0x0

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final URL_AS_STRING:I = 0x2

.field public static final URL_NET:I = 0x1

.field public static final URX:Ljava/lang/String; = "urx"

.field public static final URY:Ljava/lang/String; = "ury"


# instance fields
.field protected annotationAttributes:Ljava/util/HashMap;
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

.field protected annotationtype:I

.field protected llx:F

.field protected lly:F

.field protected urx:F

.field protected ury:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/high16 v1, 0x7fc0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    .line 141
    iput v1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 144
    iput v1, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 147
    iput v1, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 150
    iput v1, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 168
    iput p1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 169
    iput p2, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 170
    iput p3, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 171
    iput p4, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 172
    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 3
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "named"

    .prologue
    .line 353
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 354
    const/4 v0, 0x5

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 355
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "named"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "url"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 262
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 263
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;I)V
    .locals 3
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "file"
    .parameter "page"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 333
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 334
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "page"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "file"
    .parameter "dest"

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 285
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 286
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "destination"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "application"
    .parameter "parameters"
    .parameter "operation"
    .parameter "defaultdir"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 382
    const/4 v0, 0x6

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 383
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "application"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "operation"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "defaultdir"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "moviePath"
    .parameter "mimeType"
    .parameter "showOnDisplay"

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 307
    const/4 v0, 0x7

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 308
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "parameters"

    const/4 v2, 0x2

    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    const/4 v3, 0x1

    aput-boolean p7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public constructor <init>(FFFFLjava/net/URL;)V
    .locals 2
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "url"

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 242
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 243
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Annotation;)V
    .locals 2
    .parameter "an"

    .prologue
    const/high16 v1, 0x7fc0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    .line 141
    iput v1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 144
    iput v1, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 147
    iput v1, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 150
    iput v1, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 178
    iget v0, p1, Lcom/itextpdf/text/Annotation;->annotationtype:I

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 179
    iget-object v0, p1, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    .line 180
    iget v0, p1, Lcom/itextpdf/text/Annotation;->llx:F

    iput v0, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 181
    iget v0, p1, Lcom/itextpdf/text/Annotation;->lly:F

    iput v0, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 182
    iget v0, p1, Lcom/itextpdf/text/Annotation;->urx:F

    iput v0, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 183
    iget v0, p1, Lcom/itextpdf/text/Annotation;->ury:F

    iput v0, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "text"

    .prologue
    const/high16 v1, 0x7fc0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    .line 141
    iput v1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 144
    iput v1, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 147
    iput v1, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 150
    iput v1, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 197
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 2
    .parameter "title"
    .parameter "text"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 220
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/itextpdf/text/Annotation;-><init>(FFFF)V

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    .line 222
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method


# virtual methods
.method public annotationType()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/itextpdf/text/Annotation;->annotationtype:I

    return v0
.end method

.method public attributes()Ljava/util/HashMap;
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
    .line 576
    iget-object v0, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public content()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 566
    const-string/jumbo v0, ""

    .line 567
    :cond_0
    return-object v0
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
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x1

    return v0
.end method

.method public llx()F
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/itextpdf/text/Annotation;->llx:F

    return v0
.end method

.method public llx(F)F
    .locals 1
    .parameter "def"

    .prologue
    .line 493
    iget v0, p0, Lcom/itextpdf/text/Annotation;->llx:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    goto :goto_0
.end method

.method public lly()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/itextpdf/text/Annotation;->lly:F

    return v0
.end method

.method public lly(F)F
    .locals 1
    .parameter "def"

    .prologue
    .line 506
    iget v0, p0, Lcom/itextpdf/text/Annotation;->lly:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Annotation;->lly:F

    goto :goto_0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 410
    :try_start_0
    invoke-interface {p1, p0}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDimensions(FFFF)V
    .locals 0
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 441
    iput p1, p0, Lcom/itextpdf/text/Annotation;->llx:F

    .line 442
    iput p2, p0, Lcom/itextpdf/text/Annotation;->lly:F

    .line 443
    iput p3, p0, Lcom/itextpdf/text/Annotation;->urx:F

    .line 444
    iput p4, p0, Lcom/itextpdf/text/Annotation;->ury:F

    .line 445
    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/itextpdf/text/Annotation;->annotationAttributes:Ljava/util/HashMap;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 554
    const-string/jumbo v0, ""

    .line 555
    :cond_0
    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x1d

    return v0
.end method

.method public urx()F
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/itextpdf/text/Annotation;->urx:F

    return v0
.end method

.method public urx(F)F
    .locals 1
    .parameter "def"

    .prologue
    .line 519
    iget v0, p0, Lcom/itextpdf/text/Annotation;->urx:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Annotation;->urx:F

    goto :goto_0
.end method

.method public ury()F
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/itextpdf/text/Annotation;->ury:F

    return v0
.end method

.method public ury(F)F
    .locals 1
    .parameter "def"

    .prologue
    .line 532
    iget v0, p0, Lcom/itextpdf/text/Annotation;->ury:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget p1, p0, Lcom/itextpdf/text/Annotation;->ury:F

    goto :goto_0
.end method
