.class public Lcom/cnlaunch/x431pro/common/ImageLoaderHelper;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;-><init>()V

    .line 50
    .local v0, listener:Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
    return-object v0
.end method
