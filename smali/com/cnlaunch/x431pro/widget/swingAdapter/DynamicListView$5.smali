.class Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$5;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$5;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 1
    .parameter "valueAnimator"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$5;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->invalidate()V

    .line 577
    return-void
.end method
