.class public Lcom/cnlaunch/x431pro/widget/swipeListview/BaseSwipeListViewListener;
.super Ljava/lang/Object;
.source "BaseSwipeListViewListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeSwipeMode(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public onChoiceChanged(IZ)V
    .locals 0
    .parameter "position"
    .parameter "selected"

    .prologue
    .line 56
    return-void
.end method

.method public onChoiceEnded()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onChoiceStarted()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onClickBackView(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 43
    return-void
.end method

.method public onClickFrontView(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 39
    return-void
.end method

.method public onClosed(IZ)V
    .locals 0
    .parameter "position"
    .parameter "fromRight"

    .prologue
    .line 19
    return-void
.end method

.method public onDismiss([I)V
    .locals 0
    .parameter "reverseSortedPositions"

    .prologue
    .line 47
    return-void
.end method

.method public onFirstListItem()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onLastListItem()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onMove(IF)V
    .locals 0
    .parameter "position"
    .parameter "x"

    .prologue
    .line 27
    return-void
.end method

.method public onOpened(IZ)V
    .locals 0
    .parameter "position"
    .parameter "toRight"

    .prologue
    .line 15
    return-void
.end method

.method public onStartClose(IZ)V
    .locals 0
    .parameter "position"
    .parameter "right"

    .prologue
    .line 35
    return-void
.end method

.method public onStartOpen(IIZ)V
    .locals 0
    .parameter "position"
    .parameter "action"
    .parameter "right"

    .prologue
    .line 31
    return-void
.end method
