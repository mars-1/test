.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setFrontView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$1(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onClickFrontView(I)V

    .line 126
    return-void
.end method
