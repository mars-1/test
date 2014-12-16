.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->handlerPendingDismisses(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

.field private final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;->val$originalHeight:I

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;->val$originalHeight:I

    #calls: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->removePendingDismisses(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$10(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V

    .line 992
    return-void
.end method
