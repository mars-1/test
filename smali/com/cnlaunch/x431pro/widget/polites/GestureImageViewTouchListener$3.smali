.class Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$3;
.super Ljava/lang/Object;
.source "GestureImageViewTouchListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;


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

.field private final synthetic val$image:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$3;->this$0:Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$3;->val$image:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$3;->val$image:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->setPosition(FF)V

    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/GestureImageViewTouchListener$3;->val$image:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->redraw()V

    .line 148
    return-void
.end method
