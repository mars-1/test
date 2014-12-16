.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7$1;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7$1;->this$1:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7$1;->this$1:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 627
    return-void
.end method
