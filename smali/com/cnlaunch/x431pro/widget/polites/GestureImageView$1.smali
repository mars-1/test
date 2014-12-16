.class Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;
.super Ljava/lang/Object;
.source "GestureImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setupCanvas(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->access$0(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->customOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->access$0(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView$1;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    #getter for: Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->gestureImageViewTouchListener:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->access$1(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
