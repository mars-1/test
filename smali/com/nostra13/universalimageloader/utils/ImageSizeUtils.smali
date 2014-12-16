.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .parameter "srcSize"
    .parameter "targetSize"
    .parameter "viewScaleType"
    .parameter "powerOf2Scale"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    .line 79
    .local v3, srcWidth:I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    .line 80
    .local v2, srcHeight:I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 81
    .local v5, targetWidth:I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 83
    .local v4, targetHeight:I
    const/4 v1, 0x1

    .line 85
    .local v1, scale:I
    div-int v6, v3, v5

    .line 86
    .local v6, widthScale:I
    div-int v0, v2, v4

    .line 88
    .local v0, heightScale:I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ge v1, v7, :cond_1

    .line 114
    const/4 v1, 0x1

    .line 117
    :cond_1
    return v1

    .line 90
    :pswitch_0
    if-eqz p3, :cond_3

    .line 91
    :goto_1
    div-int/lit8 v7, v3, 0x2

    if-ge v7, v5, :cond_2

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 92
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 93
    div-int/lit8 v2, v2, 0x2

    .line 94
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 97
    :cond_3
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    if-eqz p3, :cond_4

    .line 102
    :goto_2
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_0

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 103
    div-int/lit8 v3, v3, 0x2

    .line 104
    div-int/lit8 v2, v2, 0x2

    .line 105
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 108
    :cond_4
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .parameter "srcSize"
    .parameter "targetSize"
    .parameter "viewScaleType"
    .parameter "stretch"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 145
    .local v5, srcWidth:I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 146
    .local v4, srcHeight:I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    .line 147
    .local v7, targetWidth:I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    .line 149
    .local v6, targetHeight:I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 150
    .local v8, widthScale:F
    int-to-float v9, v4

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 154
    .local v2, heightScale:F
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_0

    cmpl-float v9, v8, v2

    if-gez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_5

    cmpg-float v9, v8, v2

    if-gez v9, :cond_5

    .line 155
    :cond_1
    move v1, v7

    .line 156
    .local v1, destWidth:I
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    .line 162
    .local v0, destHeight:I
    :goto_0
    const/high16 v3, 0x3f80

    .line 163
    .local v3, scale:F
    if-nez p3, :cond_2

    if-ge v1, v5, :cond_2

    if-lt v0, v4, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 164
    :cond_3
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    .line 167
    :cond_4
    return v3

    .line 158
    .end local v0           #destHeight:I
    .end local v1           #destWidth:I
    .end local v3           #scale:F
    :cond_5
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 159
    .restart local v1       #destWidth:I
    move v0, v6

    .restart local v0       #destHeight:I
    goto :goto_0
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .parameter "imageAware"
    .parameter "maxImageSize"

    .prologue
    .line 40
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v1

    .line 41
    .local v1, width:I
    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 43
    :cond_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v0

    .line 44
    .local v0, height:I
    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .line 46
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method
