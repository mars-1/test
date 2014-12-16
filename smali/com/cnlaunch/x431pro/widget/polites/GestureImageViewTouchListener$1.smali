.class Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$1;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onMove(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->current:Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->handleDrag(FF)Z

    .line 120
    return-void
.end method
