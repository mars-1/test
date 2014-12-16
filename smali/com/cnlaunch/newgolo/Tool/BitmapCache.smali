.class public Lcom/cnlaunch/newgolo/Tool/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;
    }
.end annotation


# instance fields
.field private pool:Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 17
    .local v0, am:Landroid/app/ActivityManager;
    const/high16 v2, 0x10

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    mul-int v1, v2, v3

    .line 18
    .local v1, memory:I
    new-instance v2, Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;

    div-int/lit8 v3, v1, 0x8

    invoke-direct {v2, p0, v3}, Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;-><init>(Lcom/cnlaunch/newgolo/Tool/BitmapCache;I)V

    iput-object v2, p0, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->pool:Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->pool:Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;->evictAll()V

    .line 36
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->pool:Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 23
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Tool/BitmapCache;->pool:Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/newgolo/Tool/BitmapCache$BitmapPool;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-void
.end method
