.class Lorg/vudroid/core/DecodeServiceBase$DecodeTask;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vudroid/core/DecodeServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field private final decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

.field private final decodeKey:Ljava/lang/Object;

.field private final pageNumber:I

.field private final pageSliceBounds:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/vudroid/core/DecodeServiceBase;

.field private final zoom:F


# direct methods
.method private constructor <init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;)V
    .locals 0
    .parameter
    .parameter "pageNumber"
    .parameter "decodeCallback"
    .parameter "zoom"
    .parameter "decodeKey"
    .parameter "pageSliceBounds"

    .prologue
    .line 222
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->this$0:Lorg/vudroid/core/DecodeServiceBase;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p2, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I

    .line 224
    iput-object p3, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

    .line 225
    iput p4, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->zoom:F

    .line 226
    iput-object p5, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeKey:Ljava/lang/Object;

    .line 227
    iput-object p6, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct/range {p0 .. p6}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;-><init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I
    .locals 1
    .parameter

    .prologue
    .line 216
    iget v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I

    return v0
.end method

.method static synthetic access$2(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)F
    .locals 1
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->zoom:F

    return v0
.end method

.method static synthetic access$3(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$4(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Lorg/vudroid/core/DecodeService$DecodeCallback;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;

    return-object v0
.end method

.method static synthetic access$5(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeKey:Ljava/lang/Object;

    return-object v0
.end method
