.class Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;-><init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    const/4 v1, 0x0

    #setter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->inZoom:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->access$3(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;Z)V

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->handleUp()V

    .line 139
    return-void
.end method

.method public onZoom(FFF)V
    .locals 1
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->maxScale:F
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->access$1(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->minScale:F
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->access$2(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$2;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->handleScale(FFF)V

    .line 133
    :cond_0
    return-void
.end method
