.class public Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;
.super Landroid/widget/ImageView;
.source "GestureImageView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I = null

.field public static final GLOBAL_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final LOCAL_NS:Ljava/lang/String; = "http://schemas.polites.com/android"


# instance fields
.field private alpha:I

.field private animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

.field private centerX:F

.field private centerY:F

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private customOnTouchListener:Landroid/view/View$OnTouchListener;

.field private deviceOrientation:I

.field private displayHeight:I

.field private displayWidth:I

.field private final drawLock:Ljava/util/concurrent/Semaphore;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private fitScaleHorizontal:F

.field private fitScaleVertical:F

.field private gestureImageViewListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewListener;

.field private gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

.field private hHeight:I

.field private hWidth:I

.field private imageOrientation:I

.field private layout:Z

.field private maxScale:F

.field private minScale:F

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private recycle:Z

.field private resId:I

.field private rotation:F

.field private scale:F

.field private scaleAdjust:F

.field private startX:Ljava/lang/Float;

.field private startY:Ljava/lang/Float;

.field private startingScale:F

.field private strict:Z

.field private x:F

.field private y:F


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    .line 51
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 53
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    .line 55
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    .line 56
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    .line 58
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scale:F

    .line 59
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->maxScale:F

    .line 60
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    .line 61
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    .line 62
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    .line 63
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->rotation:F

    .line 73
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->resId:I

    .line 74
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    .line 75
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    .line 80
    const/16 v0, 0xff

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->alpha:I

    .line 83
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->initImage()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    .line 51
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    iput v6, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 53
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    .line 55
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    .line 56
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    .line 58
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scale:F

    .line 59
    const/high16 v3, 0x40a0

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->maxScale:F

    .line 60
    const/high16 v3, 0x3f40

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    .line 61
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    .line 62
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    .line 63
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->rotation:F

    .line 73
    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->resId:I

    .line 74
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    .line 75
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    .line 80
    const/16 v3, 0xff

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->alpha:I

    .line 83
    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    .line 99
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "scaleType"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, scaleType:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    :cond_1
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "start-x"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, strStartX:Ljava/lang/String;
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "start-y"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, strStartY:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 109
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startX:Ljava/lang/Float;

    .line 112
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 113
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startY:Ljava/lang/Float;

    .line 116
    :cond_3
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "start-scale"

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setStartingScale(F)V

    .line 117
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "min-scale"

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setMinScale(F)V

    .line 118
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "max-scale"

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->maxScale:F

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setMaxScale(F)V

    .line 119
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "strict"

    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setStrict(Z)V

    .line 120
    const-string/jumbo v3, "http://schemas.polites.com/android"

    const-string/jumbo v4, "recycle"

    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    invoke-interface {p2, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setRecycle(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->initImage()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    return-object v0
.end method


# virtual methods
.method public animationStart(Lcom/cnlaunch/x431pro/widget/polites/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->play(Lcom/cnlaunch/x431pro/widget/polites/Animation;)V

    .line 360
    :cond_0
    return-void
.end method

.method public animationStop()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->cancel()V

    .line 366
    :cond_0
    return-void
.end method

.method protected computeCropScale(IIII)V
    .locals 2
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 251
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    .line 252
    int-to-float v0, p4

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    .line 253
    return-void
.end method

.method protected computeStartingScale(IIII)V
    .locals 5
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 257
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 260
    :pswitch_0
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    goto :goto_0

    .line 266
    :pswitch_1
    int-to-float v2, p4

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    goto :goto_0

    .line 273
    :pswitch_2
    int-to-float v2, p1

    int-to-float v3, p3

    div-float v1, v2, v3

    .line 274
    .local v1, wRatio:F
    int-to-float v2, p2

    int-to-float v3, p4

    div-float v0, v2, v3

    .line 276
    .local v0, hRatio:F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 277
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    goto :goto_0

    .line 280
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerY:F

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getGestureImageViewListener()Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewListener;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewListener;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageX()F
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    return v0
.end method

.method public getImageY()F
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    return v0
.end method

.method public getScaledHeight()I
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getScaledWidth()I
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected initImage()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 383
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 384
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    if-nez v0, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->requestLayout()V

    .line 391
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->redraw()V

    .line 393
    :cond_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "dr"

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    return-void
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrientationAligned()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 714
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->isLandscape()Z

    move-result v0

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    if-ne v1, v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->isPortrait()Z

    move-result v0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycle()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    return v0
.end method

.method protected isRecycled()Z
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    .line 294
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    return v0
.end method

.method public moveBy(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 439
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    .line 440
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 441
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/cnlaunch/x431pro/widget/polites/Animator;

    const-string/jumbo v1, "GestureImageViewAnimator"

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/widget/polites/Animator;-><init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    .line 347
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->start()V

    .line 349
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->resId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 350
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->resId:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setImageResource(I)V

    .line 353
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 354
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->animator:Lcom/cnlaunch/x431pro/widget/polites/Animator;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->finish()V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 377
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 378
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scale:F

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    mul-float v0, v1, v2

    .line 314
    .local v0, adjustedScale:F
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->rotation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 317
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->rotation:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 320
    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    .end local v0           #adjustedScale:F
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-gtz v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 333
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 168
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 169
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    if-nez v0, :cond_1

    .line 170
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setupCanvas(III)V

    .line 172
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x2

    .line 134
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 136
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 137
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    .line 139
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 141
    .local v1, ratio:F
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    .line 163
    .end local v0           #orientation:I
    .end local v1           #ratio:F
    :goto_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setMeasuredDimension(II)V

    .line 164
    return-void

    .line 144
    .restart local v0       #orientation:I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 151
    .restart local v1       #ratio:F
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    goto :goto_0

    .line 154
    .end local v1           #ratio:F
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    goto :goto_0

    .line 159
    .end local v0           #orientation:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayHeight:I

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->displayWidth:I

    goto :goto_0
.end method

.method protected recycle()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public redraw()V
    .locals 0

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->postInvalidate()V

    .line 450
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerX:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    .line 500
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerY:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 501
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    .line 502
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->reset()V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->redraw()V

    .line 506
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .parameter "adjustViewBounds"

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 638
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 527
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->alpha:I

    .line 528
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 531
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->colorFilter:Landroid/graphics/ColorFilter;

    .line 536
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 539
    :cond_0
    return-void
.end method

.method public setGestureImageViewListener(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewListener;)V
    .locals 0
    .parameter "pinchImageViewListener"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewListener;

    .line 514
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 396
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 397
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->initImage()V

    .line 398
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 403
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->initImage()V

    .line 404
    return-void
.end method

.method public setImageLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 646
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle()V

    .line 410
    :cond_0
    if-ltz p1, :cond_1

    .line 411
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->resId:I

    .line 412
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 2
    .parameter "state"
    .parameter "merge"

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 14
    .parameter "mUri"

    .prologue
    .line 543
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 545
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "orientation"

    aput-object v1, v2, v0

    .line 547
    .local v2, orientationColumn:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 549
    .local v10, cur:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->imageOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    const/4 v12, 0x0

    .line 556
    .local v12, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v12

    .line 557
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 559
    .local v3, bmp:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->imageOrientation:I

    if-eqz v0, :cond_4

    .line 560
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 561
    .local v8, m:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->imageOrientation:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 562
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 563
    .local v13, rotated:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 564
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    .end local v8           #m:Landroid/graphics/Matrix;
    .end local v13           #rotated:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v12, :cond_1

    .line 572
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 575
    :cond_1
    if-eqz v10, :cond_2

    .line 576
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    .end local v2           #orientationColumn:[Ljava/lang/String;
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v12           #in:Ljava/io/InputStream;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 589
    const-string/jumbo v0, "GestureImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resolveUri failed on bad bitmap uri: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 p1, 0x0

    .line 593
    :cond_3
    return-void

    .line 567
    .restart local v2       #orientationColumn:[Ljava/lang/String;
    .restart local v3       #bmp:Landroid/graphics/Bitmap;
    .restart local v10       #cur:Landroid/database/Cursor;
    .restart local v12       #in:Ljava/io/InputStream;
    :cond_4
    :try_start_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 570
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 571
    if-eqz v12, :cond_5

    .line 572
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 575
    :cond_5
    if-eqz v10, :cond_6

    .line 576
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 580
    .end local v2           #orientationColumn:[Ljava/lang/String;
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v12           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v11

    .line 581
    .local v11, e:Ljava/lang/Exception;
    const-string/jumbo v0, "GestureImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to open content: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 585
    .end local v11           #e:Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setMaxScale(F)V
    .locals 2
    .parameter "max"

    .prologue
    .line 460
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->maxScale:F

    .line 461
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setMaxScale(F)V

    .line 464
    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 2
    .parameter "min"

    .prologue
    .line 453
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    .line 454
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setMinScale(F)V

    .line 457
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 704
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 672
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 673
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 444
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    .line 445
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 446
    return-void
.end method

.method public setRecycle(Z)V
    .locals 0
    .parameter "recycle"

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->recycle:Z

    .line 496
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 509
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->rotation:F

    .line 510
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 467
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    .line 468
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .parameter "scaleType"

    .prologue
    .line 605
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 606
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 607
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_2

    .line 609
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 614
    :cond_1
    return-void

    .line 611
    :cond_2
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_1

    .line 612
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 668
    return-void
.end method

.method public setStartingPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 696
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startX:Ljava/lang/Float;

    .line 697
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startY:Ljava/lang/Float;

    .line 698
    return-void
.end method

.method public setStartingScale(F)V
    .locals 0
    .parameter "startingScale"

    .prologue
    .line 692
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    .line 693
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .parameter "strict"

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->strict:Z

    .line 488
    return-void
.end method

.method protected setupCanvas(III)V
    .locals 7
    .parameter "measuredWidth"
    .parameter "measuredHeight"
    .parameter "orientation"

    .prologue
    const/high16 v4, 0x4000

    .line 176
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    if-eq v2, p3, :cond_0

    .line 177
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    .line 178
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->deviceOrientation:I

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    if-nez v2, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageWidth()I

    move-result v1

    .line 183
    .local v1, imageWidth:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageHeight()I

    move-result v0

    .line 185
    .local v0, imageHeight:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hWidth:I

    .line 186
    int-to-float v2, v0

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hHeight:I

    .line 188
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    .line 189
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p2, v2

    .line 191
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->computeCropScale(IIII)V

    .line 193
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 194
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->computeStartingScale(IIII)V

    .line 197
    :cond_1
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->scaleAdjust:F

    .line 199
    int-to-float v2, p1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerX:F

    .line 200
    int-to-float v2, p2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerY:F

    .line 202
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startX:Ljava/lang/Float;

    if-nez v2, :cond_3

    .line 203
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerX:F

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startY:Ljava/lang/Float;

    if-nez v2, :cond_4

    .line 210
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->centerY:F

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    .line 216
    :goto_1
    new-instance v2, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;-><init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;II)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    .line 218
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setMinScale(F)V

    .line 226
    :goto_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->maxScale:F

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startingScale:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setMaxScale(F)V

    .line 228
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleHorizontal:F

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setFitScaleHorizontal(F)V

    .line 229
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setFitScaleVertical(F)V

    .line 230
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setCanvasWidth(I)V

    .line 231
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setCanvasHeight(I)V

    .line 232
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hWidth:I

    neg-int v3, v3

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hHeight:I

    neg-int v4, v4

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hWidth:I

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->hHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    new-instance v2, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;-><init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)V

    invoke-super {p0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->layout:Z

    .line 248
    .end local v0           #imageHeight:I
    .end local v1           #imageWidth:I
    :cond_2
    return-void

    .line 206
    .restart local v0       #imageHeight:I
    .restart local v1       #imageWidth:I
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->x:F

    goto :goto_0

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->startY:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->y:F

    goto :goto_1

    .line 222
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->minScale:F

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->fitScaleVertical:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->setMinScale(F)V

    goto :goto_2
.end method

.method public waitForDraw(J)Z
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->drawLock:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
