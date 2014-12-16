.class Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$6;
.super Ljava/lang/Object;
.source "CanvasTransformerBuilder.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->concatTransformer(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

.field private final synthetic val$t:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$6;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$6;->val$t:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformCanvas(Landroid/graphics/Canvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "percentOpen"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$6;->this$0:Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;

    #getter for: Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->mTrans:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;->access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder;)Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CanvasTransformerBuilder$6;->val$t:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 90
    return-void
.end method
