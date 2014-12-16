.class Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;
.super Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "ImageLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/common/ImageLoaderHelper;->getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheFound:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;->cacheFound:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)V

    .line 44
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/core/assist/DiscCacheUtil;->removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Z

    .line 45
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 30
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->findCacheKeysForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, memCache:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;->cacheFound:Z

    .line 32
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;->cacheFound:Z

    if-nez v2, :cond_0

    .line 33
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/nostra13/universalimageloader/core/assist/DiscCacheUtil;->findInCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Ljava/io/File;

    move-result-object v0

    .line 34
    .local v0, discCache:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/common/ImageLoaderHelper$1;->cacheFound:Z

    .line 38
    .end local v0           #discCache:Ljava/io/File;
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
