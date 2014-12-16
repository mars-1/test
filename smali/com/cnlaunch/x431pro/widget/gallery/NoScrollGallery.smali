.class public Lcom/cnlaunch/x431pro/widget/gallery/NoScrollGallery;
.super Landroid/widget/Gallery;
.source "NoScrollGallery.java"


# instance fields
.field private mListener:Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    .line 39
    :try_start_0
    const-class v5, Lcom/cnlaunch/x431pro/widget/gallery/NoScrollGallery;

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "mDownTouchPosition"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 40
    .local v3, f:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 42
    .local v4, position:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/gallery/NoScrollGallery;->mListener:Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    .line 43
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/gallery/NoScrollGallery;->mListener:Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;

    invoke-interface {v5, v4}, Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;->OnItemClick(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 54
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #position:I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e1:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e1:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, e1:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #e1:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 50
    .local v1, e2:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1           #e2:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 52
    .local v2, e3:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGalleryEventListener(Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/gallery/NoScrollGallery;->mListener:Lcom/cnlaunch/x431pro/widget/gallery/IGalleryEvent;

    .line 34
    return-void
.end method
