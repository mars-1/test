.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListView"
.end annotation


# instance fields
.field private mAddedLvFooter:Z

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 284
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    .line 285
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 295
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 309
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 312
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 312
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->access$1(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->access$1(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    .line 324
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter "emptyView"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 330
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .parameter "emptyView"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 335
    return-void
.end method
