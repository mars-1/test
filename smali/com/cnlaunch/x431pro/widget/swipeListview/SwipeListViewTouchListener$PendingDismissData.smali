.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "position"
    .parameter "view"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->position:I

    .line 936
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 937
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 942
    iget v0, p1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->compareTo(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
