.class Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->rotate(IIIILandroid/view/animation/Interpolator;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

.field private final synthetic val$closedDeg:I

.field private final synthetic val$interp:Landroid/view/animation/Interpolator;

.field private final synthetic val$openedDeg:I

.field private final synthetic val$px:I

.field private final synthetic val$py:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;Landroid/view/animation/Interpolator;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$interp:Landroid/view/animation/Interpolator;

    iput p3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$openedDeg:I

    iput p4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$closedDeg:I

    iput p5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$px:I

    iput p6, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$py:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformCanvas(Landroid/graphics/Canvas;F)V
    .locals 4
    .parameter "canvas"
    .parameter "percentOpen"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->mTrans:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 57
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$interp:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 58
    .local v0, f:F
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$openedDeg:I

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$closedDeg:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$closedDeg:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 59
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$px:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$4;->val$py:I

    int-to-float v3, v3

    .line 58
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 60
    return-void
.end method
