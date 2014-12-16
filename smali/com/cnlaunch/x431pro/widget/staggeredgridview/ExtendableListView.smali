.class public abstract Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.super Landroid/widget/AbsListView;
.source "ExtendableListView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;,
        Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SYNC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExtendableListView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLLING:I = 0x1

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mBlockLayoutRequests:Z

.field protected mClipToPadding:Z

.field private mDataChanged:Z

.field protected mFirstPosition:I

.field private mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

.field private mFlingVelocity:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInLayout:Z

.field private mIsAttached:Z

.field final mIsScrap:[Z

.field private mItemCount:I

.field private mLastY:I

.field private mLayoutMode:I

.field private mMaximumVelocity:I

.field private mMotionCorrection:I

.field private mMotionPosition:I

.field private mMotionX:I

.field private mMotionY:I

.field mNeedSync:Z

.field private mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

.field private mOldItemCount:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

.field private mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

.field private mScrollState:I

.field protected mSpecificTop:I

.field mSyncHeight:J

.field protected mSyncPosition:I

.field mSyncRowId:J

.field private mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mScrollState:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 132
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    .line 139
    const/4 v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsScrap:[Z

    .line 2671
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncRowId:J

    .line 2681
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 204
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setWillNotDraw(Z)V

    .line 205
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setClipToPadding(Z)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setFocusableInTouchMode(Z)V

    .line 208
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 209
    .local v0, viewConfiguration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchSlop:I

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMaximumVelocity:I

    .line 211
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingVelocity:I

    .line 213
    new-instance v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    .line 214
    new-instance v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 220
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 221
    return-void
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2103
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    return v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1228
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    return-void
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->updateEmptyStatus()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2886
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 4

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1828
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 1831
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHighestChildTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1832
    .local v1, delta:I
    if-gez v1, :cond_0

    .line 1834
    const/4 v1, 0x0

    .line 1837
    :cond_0
    if-eqz v1, :cond_1

    .line 1838
    neg-int v2, v1

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1841
    .end local v1           #delta:I
    :cond_1
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2727
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;>;"
    if-nez p1, :cond_1

    .line 2736
    :cond_0
    return-void

    .line 2728
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    .line 2729
    .local v1, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iget-object v0, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2730
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2732
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    if-eqz v4, :cond_2

    .line 2733
    check-cast v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .end local v2           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    goto :goto_0
.end method

.method private clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2713
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2714
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2716
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeAllViewsInLayout()V

    .line 2717
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 2718
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 2719
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->clear()V

    .line 2720
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 2721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    .line 2722
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 2723
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 2724
    return-void
.end method

.method private correctTooHigh(I)V
    .locals 8
    .parameter "childCount"

    .prologue
    .line 1729
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v6, p1

    add-int/lit8 v4, v6, -0x1

    .line 1730
    .local v4, lastPosition:I
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_2

    if-lez p1, :cond_2

    .line 1733
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLowestChildBottom()I

    move-result v3

    .line 1736
    .local v3, lastBottom:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v7

    sub-int v1, v6, v7

    .line 1740
    .local v1, end:I
    sub-int v0, v1, v3

    .line 1742
    .local v0, bottomOffset:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHighestChildTop()I

    move-result v2

    .line 1746
    .local v2, firstTop:I
    if-lez v0, :cond_2

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-gtz v6, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1747
    :cond_0
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-nez v6, :cond_1

    .line 1749
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1752
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1753
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-lez v6, :cond_2

    .line 1756
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v5, v6, -0x1

    .line 1757
    .local v5, previousPosition:I
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillUp(II)Landroid/view/View;

    .line 1759
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1764
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v5           #previousPosition:I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 9
    .parameter "childCount"

    .prologue
    .line 1776
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-nez v7, :cond_2

    if-lez p1, :cond_2

    .line 1779
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHighestChildTop()I

    move-result v1

    .line 1782
    .local v1, firstTop:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v5

    .line 1785
    .local v5, start:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 1789
    .local v0, end:I
    sub-int v6, v1, v5

    .line 1790
    .local v6, topOffset:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLowestChildBottom()I

    move-result v2

    .line 1792
    .local v2, lastBottom:I
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v3, v7, -0x1

    .line 1796
    .local v3, lastPosition:I
    if-lez v6, :cond_2

    .line 1797
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_0

    if-le v2, v0, :cond_3

    .line 1798
    :cond_0
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_1

    .line 1800
    sub-int v7, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1803
    :cond_1
    neg-int v7, v6

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1804
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 1807
    add-int/lit8 v4, v3, 0x1

    .line 1808
    .local v4, nextPosition:I
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v7

    invoke-direct {p0, v4, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1810
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1818
    .end local v0           #end:I
    .end local v1           #firstTop:I
    .end local v2           #lastBottom:I
    .end local v3           #lastPosition:I
    .end local v4           #nextPosition:I
    .end local v5           #start:I
    .end local v6           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1813
    .restart local v0       #end:I
    .restart local v1       #firstTop:I
    .restart local v2       #lastBottom:I
    .restart local v3       #lastPosition:I
    .restart local v5       #start:I
    .restart local v6       #topOffset:I
    :cond_3
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_2

    .line 1814
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 1413
    const/4 v1, 0x0

    .line 1415
    .local v1, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v0

    .line 1416
    .local v0, end:I
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_0

    .line 1417
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1420
    :cond_0
    :goto_0
    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasSpaceDown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-lt p1, v2, :cond_3

    .line 1427
    :cond_2
    return-object v1

    .line 1422
    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1423
    add-int/lit8 p1, p1, 0x1

    .line 1424
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildDownsTop(I)I

    move-result p2

    goto :goto_0
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 1466
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1467
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1468
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1470
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "top"

    .prologue
    .line 1484
    const/4 v6, 0x0

    .line 1485
    .local v6, tempIsSelected:Z
    const/4 v7, 0x1

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v5

    .line 1487
    .local v5, temp:Landroid/view/View;
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1492
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v3

    .line 1493
    .local v3, nextBottom:I
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v4

    .line 1495
    .local v4, nextTop:I
    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1497
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1498
    add-int/lit8 v7, p1, 0x1

    invoke-direct {p0, v7, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1499
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v2

    .line 1500
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 1501
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->correctTooHigh(I)V

    .line 1504
    :cond_0
    if-eqz v6, :cond_1

    .line 1511
    .end local v5           #temp:Landroid/view/View;
    :goto_0
    return-object v5

    .line 1507
    .restart local v5       #temp:Landroid/view/View;
    :cond_1
    if-eqz v0, :cond_2

    move-object v5, v0

    .line 1508
    goto :goto_0

    :cond_2
    move-object v5, v1

    .line 1511
    goto :goto_0
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v2, 0x0

    .line 1439
    const/4 v1, 0x0

    .line 1441
    .local v1, selectedView:Landroid/view/View;
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v0

    .line 1443
    .local v0, end:I
    :goto_0
    if-gt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasSpaceUp()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-gez p1, :cond_3

    .line 1451
    :cond_1
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1452
    return-object v1

    .end local v0           #end:I
    :cond_2
    move v0, v2

    .line 1441
    goto :goto_0

    .line 1445
    .restart local v0       #end:I
    :cond_3
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1446
    add-int/lit8 p1, p1, -0x1

    .line 1447
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result p2

    goto :goto_0
.end method

.method private findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1209
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 1211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1218
    .end local v1           #i:I
    :cond_0
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 1212
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1213
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_2

    .line 1214
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1967
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1972
    :goto_0
    return-void

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1976
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1978
    :cond_0
    return-void
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "selected"

    .prologue
    .line 1521
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onChildCreated(IZ)V

    .line 1523
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1526
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1530
    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    move-object v7, v1

    .line 1540
    .end local v1           #child:Landroid/view/View;
    .local v7, child:Landroid/view/View;
    :goto_0
    return-object v7

    .line 1536
    .end local v7           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsScrap:[Z

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1538
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v6, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    move-object v7, v1

    .line 1540
    .end local v1           #child:Landroid/view/View;
    .restart local v7       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private moveTheChildren(II)Z
    .locals 30
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v28

    if-nez v28, :cond_0

    const/16 v28, 0x1

    .line 1370
    :goto_0
    return v28

    .line 1233
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHighestChildTop()I

    move-result v13

    .line 1234
    .local v13, firstTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLowestChildBottom()I

    move-result v20

    .line 1239
    .local v20, lastBottom:I
    const/4 v10, 0x0

    .line 1240
    .local v10, effectivePaddingTop:I
    const/4 v9, 0x0

    .line 1241
    .local v9, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v10

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v9

    .line 1246
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v15

    .line 1247
    .local v15, gridHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getFirstChildTop()I

    move-result v28

    sub-int v24, v10, v28

    .line 1248
    .local v24, spaceAbove:I
    sub-int v11, v15, v9

    .line 1249
    .local v11, end:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLastChildBottom()I

    move-result v28

    sub-int v25, v28, v11

    .line 1251
    .local v25, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v28, v15, v28

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v29

    sub-int v17, v28, v29

    .line 1253
    .local v17, height:I
    if-gez p2, :cond_2

    .line 1254
    add-int/lit8 v28, v17, -0x1

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1260
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1262
    .local v12, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v22

    .line 1263
    .local v22, maxTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v21, v15, v28

    .line 1264
    .local v21, maxBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v7

    .line 1266
    .local v7, childCount:I
    if-nez v12, :cond_3

    .line 1267
    move/from16 v0, v22

    if-lt v13, v0, :cond_3

    .line 1266
    if-ltz p2, :cond_3

    const/4 v4, 0x1

    .line 1268
    .local v4, cannotScrollDown:Z
    :goto_2
    add-int v28, v12, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 1269
    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 1268
    if-gtz p2, :cond_4

    const/4 v5, 0x1

    .line 1282
    .local v5, cannotScrollUp:Z
    :goto_3
    if-eqz v4, :cond_6

    .line 1284
    if-eqz p2, :cond_5

    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1257
    .end local v4           #cannotScrollDown:Z
    .end local v5           #cannotScrollUp:Z
    .end local v7           #childCount:I
    .end local v12           #firstPosition:I
    .end local v21           #maxBottom:I
    .end local v22           #maxTop:I
    :cond_2
    add-int/lit8 v28, v17, -0x1

    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 1266
    .restart local v7       #childCount:I
    .restart local v12       #firstPosition:I
    .restart local v21       #maxBottom:I
    .restart local v22       #maxTop:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1268
    .restart local v4       #cannotScrollDown:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 1284
    .restart local v5       #cannotScrollUp:Z
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1287
    :cond_6
    if-eqz v5, :cond_8

    .line 1289
    if-eqz p2, :cond_7

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1292
    :cond_8
    if-gez p2, :cond_10

    const/16 v19, 0x1

    .line 1294
    .local v19, isDown:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeaderViewsCount()I

    move-result v16

    .line 1295
    .local v16, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getFooterViewsCount()I

    move-result v29

    sub-int v14, v28, v29

    .line 1297
    .local v14, footerViewsStart:I
    const/16 v26, 0x0

    .line 1298
    .local v26, start:I
    const/4 v8, 0x0

    .line 1300
    .local v8, count:I
    if-eqz v19, :cond_13

    .line 1301
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v27, v0

    .line 1302
    .local v27, top:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v28

    add-int v27, v27, v28

    .line 1305
    :cond_9
    const/16 v18, 0x0

    .local v18, i:I
    :goto_5
    move/from16 v0, v18

    if-lt v0, v7, :cond_11

    .line 1340
    .end local v27           #top:I
    :cond_a
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1342
    if-lez v8, :cond_b

    .line 1344
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->detachViewsFromParent(II)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 1346
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onChildrenDetached(II)V

    .line 1351
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->awakenScrollBars()Z

    move-result v28

    if-nez v28, :cond_c

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 1355
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1357
    if-eqz v19, :cond_d

    .line 1358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    move/from16 v28, v0

    add-int v28, v28, v8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 1361
    :cond_d
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1362
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v24

    if-lt v0, v2, :cond_e

    move/from16 v0, v25

    if-ge v0, v2, :cond_f

    .line 1363
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillGap(Z)V

    .line 1367
    :cond_f
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invokeOnItemScrollListener()V

    .line 1370
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1292
    .end local v2           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v14           #footerViewsStart:I
    .end local v16           #headerViewsCount:I
    .end local v18           #i:I
    .end local v19           #isDown:Z
    .end local v26           #start:I
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1306
    .restart local v8       #count:I
    .restart local v14       #footerViewsStart:I
    .restart local v16       #headerViewsCount:I
    .restart local v18       #i:I
    .restart local v19       #isDown:Z
    .restart local v26       #start:I
    .restart local v27       #top:I
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1307
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 1311
    add-int/lit8 v8, v8, 0x1

    .line 1312
    add-int v23, v12, v18

    .line 1313
    .local v23, position:I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_12

    move/from16 v0, v23

    if-ge v0, v14, :cond_12

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1305
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1320
    .end local v6           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v23           #position:I
    .end local v27           #top:I
    :cond_13
    sub-int v3, v15, p2

    .line 1321
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v28

    sub-int v3, v3, v28

    .line 1324
    :cond_14
    add-int/lit8 v18, v7, -0x1

    .restart local v18       #i:I
    :goto_6
    if-ltz v18, :cond_a

    .line 1325
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1326
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v3, :cond_a

    .line 1330
    move/from16 v26, v18

    .line 1331
    add-int/lit8 v8, v8, 0x1

    .line 1332
    add-int v23, v12, v18

    .line 1333
    .restart local v23       #position:I
    move/from16 v0, v23

    move/from16 v1, v16

    if-lt v0, v1, :cond_15

    move/from16 v0, v23

    if-ge v0, v14, :cond_15

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1324
    :cond_15
    add-int/lit8 v18, v18, -0x1

    goto :goto_6
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 1693
    aput-boolean v3, p2, v3

    .line 1696
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1699
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1701
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1703
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 1704
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1715
    :goto_0
    return-object v0

    .line 1707
    :cond_0
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    goto :goto_0

    .line 1712
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1101
    const v4, 0xff00

    .line 1100
    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1103
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1104
    .local v1, pointerId:I
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1108
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1109
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionX:I

    .line 1110
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 1111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 1112
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 1114
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 962
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 963
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 964
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 965
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 967
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 968
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 971
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 972
    const/4 v1, -0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 973
    const/4 v1, 0x1

    return v1
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 885
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 886
    .local v2, y:I
    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 888
    .local v0, motionPosition:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 889
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 895
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-eq v5, v6, :cond_1

    .line 896
    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 897
    if-ltz v0, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 900
    const/4 v5, 0x3

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 902
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_0

    .line 903
    new-instance v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 905
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_2

    if-gez v0, :cond_2

    .line 925
    :goto_0
    return v3

    .line 914
    :cond_1
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-ne v5, v6, :cond_2

    .line 915
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 916
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionCorrection:I

    .line 917
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->findMotionRow(I)I

    move-result v0

    .line 920
    :cond_2
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionX:I

    .line 921
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 922
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    .line 923
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    move v3, v4

    .line 925
    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 929
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 930
    .local v0, index:I
    if-gez v0, :cond_0

    .line 931
    const-string/jumbo v2, "ExtendableListView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onTouchMove could not find pointer with id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - did ExtendableListView receive an inconsistent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 933
    const-string/jumbo v4, "event stream?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v2, 0x0

    .line 957
    :goto_0
    return v2

    .line 936
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v1, v2

    .line 939
    .local v1, y:I
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->layoutChildren()V

    .line 943
    :cond_1
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 957
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 949
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->startScrollIfNeeded(I)Z

    goto :goto_1

    .line 953
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->scrollIfNeeded(I)V

    goto :goto_1

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchPointerUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1089
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionX:I

    .line 1090
    .local v1, x:I
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 1091
    .local v2, y:I
    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 1092
    .local v0, motionPosition:I
    if-ltz v0, :cond_0

    .line 1093
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    .line 1095
    :cond_0
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    .line 1096
    const/4 v3, 0x1

    return v3
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 977
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 987
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 988
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 990
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 991
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 992
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 997
    const/4 v1, -0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 998
    const/4 v1, 0x1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 981
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchUpTap(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 984
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchUpScrolling(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchUpScrolling(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1002
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1004
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getFirstChildTop()I

    move-result v2

    .line 1005
    .local v2, top:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLastChildBottom()I

    move-result v1

    .line 1006
    .local v1, bottom:I
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-nez v6, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 1008
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-ge v6, v7, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1006
    if-gt v1, v6, :cond_0

    move v0, v4

    .line 1011
    .local v0, atEdge:Z
    :goto_0
    if-nez v0, :cond_1

    .line 1012
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1013
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 1015
    .local v3, velocity:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1016
    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->startFlingRunnable(F)V

    .line 1017
    const/4 v6, 0x2

    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 1018
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 1019
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 1028
    .end local v0           #atEdge:Z
    .end local v1           #bottom:I
    .end local v2           #top:I
    .end local v3           #velocity:F
    :goto_1
    return v4

    .restart local v1       #bottom:I
    .restart local v2       #top:I
    :cond_0
    move v0, v5

    .line 1006
    goto :goto_0

    .line 1025
    .end local v1           #bottom:I
    .end local v2           #top:I
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->stopFlingRunnable()V

    .line 1026
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 1027
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    goto :goto_1
.end method

.method private onTouchUpTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1032
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    .line 1033
    .local v2, motionPosition:I
    if-ltz v2, :cond_7

    .line 1034
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1036
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-eq v4, v8, :cond_0

    .line 1037
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1040
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPerformClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    if-nez v4, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 1042
    new-instance v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPerformClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    .line 1045
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPerformClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    .line 1046
    .local v3, performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;
    iput v2, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 1047
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->rememberWindowAttachCount()V

    .line 1051
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-ne v4, v9, :cond_6

    .line 1052
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1053
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_3

    .line 1054
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-ne v4, v8, :cond_4

    .line 1055
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1054
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1057
    :cond_3
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 1058
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-nez v4, :cond_5

    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1059
    iput v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 1060
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->layoutChildren()V

    .line 1061
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1062
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 1063
    new-instance v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;)V

    .line 1072
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    .line 1063
    invoke-virtual {p0, v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    .end local v0           #child:Landroid/view/View;
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;
    :goto_1
    return v7

    .line 1055
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #handler:Landroid/os/Handler;
    .restart local v3       #performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;
    :cond_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    goto :goto_0

    .line 1074
    :cond_5
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    goto :goto_1

    .line 1077
    .end local v1           #handler:Landroid/os/Handler;
    :cond_6
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-nez v4, :cond_7

    if-ltz v2, :cond_7

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1078
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->post(Ljava/lang/Runnable;)Z

    .line 1082
    .end local v0           #child:Landroid/view/View;
    .end local v3           #performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;
    :cond_7
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    goto :goto_1
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 2888
    const/4 v6, 0x0

    .line 2890
    .local v6, handled:Z
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 2891
    .local v0, onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;,"Landroid/widget/AdapterView$OnItemLongClickListener;"
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 2892
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2899
    :cond_0
    if-eqz v6, :cond_1

    .line 2900
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->performHapticFeedback(I)Z

    .line 2902
    :cond_1
    return v6
.end method

.method private postOnAnimate(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 2104
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2105
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1985
    :cond_0
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 423
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 430
    :goto_1
    return-void

    .line 424
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    .line 425
    .local v1, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iget-object v3, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 426
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2636
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2637
    .local v1, size:I
    if-lez v1, :cond_2

    .line 2639
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 2646
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 2649
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 2640
    .restart local v0       #i:I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2641
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    iget v3, v3, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->position:I

    if-ne v3, p1, :cond_1

    .line 2642
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2649
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 10
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    .line 1161
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    sub-int v6, p1, v7

    .line 1162
    .local v6, rawDeltaY:I
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionCorrection:I

    sub-int v1, v6, v7

    .line 1163
    .local v1, deltaY:I
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    const/high16 v8, -0x8000

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    sub-int v2, p1, v7

    .line 1165
    .local v2, incrementalDeltaY:I
    :goto_0
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    if-ne v7, v9, :cond_3

    .line 1167
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    if-eq p1, v7, :cond_3

    .line 1169
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchSlop:I

    if-le v7, v8, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1171
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_0

    .line 1172
    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1177
    .end local v5           #parent:Landroid/view/ViewParent;
    :cond_0
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    if-ltz v7, :cond_5

    .line 1178
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    sub-int v3, v7, v8

    .line 1187
    .local v3, motionIndex:I
    :goto_1
    const/4 v0, 0x0

    .line 1188
    .local v0, atEdge:Z
    if-eqz v2, :cond_1

    .line 1189
    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    .line 1193
    :cond_1
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1194
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1198
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 1200
    :cond_2
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    .line 1205
    .end local v0           #atEdge:Z
    .end local v3           #motionIndex:I
    .end local v4           #motionView:Landroid/view/View;
    :cond_3
    return-void

    .end local v2           #incrementalDeltaY:I
    :cond_4
    move v2, v1

    .line 1163
    goto :goto_0

    .line 1183
    .restart local v2       #incrementalDeltaY:I
    :cond_5
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .restart local v3       #motionIndex:I
    goto :goto_1
.end method

.method private setupChild(Landroid/view/View;IIZZZ)V
    .locals 20
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1558
    const/4 v12, 0x0

    .line 1559
    .local v12, isSelected:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v18

    .line 1560
    .local v18, updateChildSelected:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 1561
    .local v15, mode:I
    const/4 v2, 0x3

    if-le v15, v2, :cond_3

    const/4 v2, 0x1

    if-ge v15, v2, :cond_3

    .line 1562
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_3

    .line 1561
    const/4 v11, 0x1

    .line 1563
    .local v11, isPressed:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    xor-int v17, v11, v2

    .line 1564
    .local v17, updateChildPressed:Z
    if-eqz p6, :cond_4

    if-nez v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v16, 0x0

    .line 1566
    .local v16, needToMeasure:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v13

    .line 1569
    .local v13, itemViewType:I
    const/4 v2, -0x2

    if-ne v13, v2, :cond_5

    .line 1570
    invoke-virtual/range {p0 .. p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    move-result-object v14

    .line 1576
    .local v14, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    :goto_2
    iput v13, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    .line 1577
    move/from16 v0, p2

    iput v0, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->position:I

    .line 1579
    if-nez p6, :cond_0

    iget-boolean v2, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v2, :cond_7

    .line 1580
    iget v2, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_7

    .line 1582
    :cond_0
    if-eqz p4, :cond_6

    const/4 v2, -0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    :goto_4
    if-eqz v18, :cond_1

    .line 1593
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1596
    :cond_1
    if-eqz v17, :cond_2

    .line 1597
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1600
    :cond_2
    if-eqz v16, :cond_a

    .line 1602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;)V

    .line 1609
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1610
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1611
    .local v10, h:I
    if-eqz p4, :cond_b

    move/from16 v7, p3

    .line 1617
    .local v7, childTop:I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildLeft(I)I

    move-result v6

    .line 1619
    .local v6, childrenLeft:I
    if-eqz v16, :cond_c

    .line 1620
    add-int v8, v6, v19

    .line 1621
    .local v8, childRight:I
    add-int v9, v7, v10

    .local v9, childBottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 1622
    invoke-virtual/range {v2 .. v9}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 1628
    .end local v8           #childRight:I
    .end local v9           #childBottom:I
    :goto_7
    return-void

    .line 1561
    .end local v6           #childrenLeft:I
    .end local v7           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v13           #itemViewType:I
    .end local v14           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .end local v16           #needToMeasure:Z
    .end local v17           #updateChildPressed:Z
    .end local v19           #w:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 1564
    .restart local v11       #isPressed:Z
    .restart local v17       #updateChildPressed:Z
    :cond_4
    const/16 v16, 0x1

    goto :goto_1

    .line 1573
    .restart local v13       #itemViewType:I
    .restart local v16       #needToMeasure:Z
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->generateChildLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    move-result-object v14

    .restart local v14       #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    goto :goto_2

    .line 1582
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 1586
    :cond_7
    iget v2, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_8

    .line 1587
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1589
    :cond_8
    if-eqz p4, :cond_9

    const/4 v2, -0x1

    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    .line 1606
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_5

    .line 1611
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_b
    sub-int v7, p3, v10

    goto :goto_6

    .restart local v6       #childrenLeft:I
    .restart local v7       #childTop:I
    :cond_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    .line 1625
    invoke-virtual/range {v2 .. v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    goto :goto_7
.end method

.method private startFlingRunnable(F)V
    .locals 2
    .parameter "velocity"

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->start(I)V

    .line 1992
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1125
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 1126
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1129
    .local v1, distance:I
    const/4 v4, 0x0

    .line 1130
    .local v4, overscroll:Z
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchSlop:I

    if-le v1, v6, :cond_4

    .line 1135
    iput v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 1136
    if-lez v0, :cond_3

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchSlop:I

    :goto_0
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionCorrection:I

    .line 1139
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1140
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 1141
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1143
    :cond_0
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 1144
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1145
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1146
    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 1149
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_2

    .line 1150
    invoke-interface {v5, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1153
    :cond_2
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->scrollIfNeeded(I)V

    move v6, v7

    .line 1156
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_1
    return v6

    .line 1136
    :cond_3
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_0

    :cond_4
    move v6, v8

    .line 1156
    goto :goto_1
.end method

.method private stopFlingRunnable()V
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->endFling()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->access$0(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;)V

    .line 1998
    :cond_0
    return-void
.end method

.method private updateEmptyStatus()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2157
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v1

    .line 2158
    .local v6, empty:Z
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    const/4 v6, 0x0

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getEmptyView()Landroid/view/View;

    move-result-object v7

    .line 2163
    .local v7, emptyView:Landroid/view/View;
    if-eqz v6, :cond_4

    .line 2164
    if-eqz v7, :cond_3

    .line 2165
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2166
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setVisibility(I)V

    .line 2176
    :goto_1
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onLayout(ZIIII)V

    .line 2186
    :cond_1
    :goto_2
    return-void

    .line 2157
    .end local v6           #empty:Z
    .end local v7           #emptyView:Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 2170
    .restart local v6       #empty:Z
    .restart local v7       #emptyView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setVisibility(I)V

    goto :goto_1

    .line 2181
    :cond_4
    if-eqz v7, :cond_5

    .line 2182
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    :cond_5
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 475
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 476
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 452
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    .line 453
    .local v0, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iput-object p1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 454
    iput-object p2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 455
    iput-boolean p3, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 456
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 463
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 393
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 364
    const-string/jumbo v2, "Cannot add header view to list -- setAdapter has already been called."

    .line 363
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    .line 368
    .local v0, info:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;
    iput-object p1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 369
    iput-object p2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 370
    iput-boolean p3, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 371
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_1
    return-void
.end method

.method protected adjustViewsAfterFillGap(Z)V
    .locals 1
    .parameter "down"

    .prologue
    .line 1402
    if-eqz p1, :cond_0

    .line 1403
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->correctTooHigh(I)V

    .line 1408
    :goto_0
    return-void

    .line 1406
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method protected fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1386
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 1388
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int v1, v3, v0

    .line 1389
    .local v1, position:I
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildTop(I)I

    move-result v2

    .line 1390
    .local v2, startOffset:I
    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1398
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 1399
    return-void

    .line 1394
    .end local v1           #position:I
    .end local v2           #startOffset:I
    :cond_0
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v1, v3, -0x1

    .line 1395
    .restart local v1       #position:I
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildBottom(I)I

    move-result v2

    .line 1396
    .restart local v2       #startOffset:I
    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .locals 1
    .parameter "child"

    .prologue
    .line 1631
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->generateDefaultLayoutParams()Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .locals 4

    .prologue
    .line 1672
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    .line 1673
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 1672
    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateHeaderFooterLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .locals 4
    .parameter "child"

    .prologue
    .line 1677
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    .line 1678
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 1677
    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateWrapperLayoutParams(Landroid/view/View;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    .locals 3
    .parameter "child"

    .prologue
    .line 1635
    const/4 v1, 0x0

    .line 1637
    .local v1, layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1638
    .local v0, childParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 1639
    instance-of v2, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 1640
    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .line 1646
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->generateDefaultLayoutParams()Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    move-result-object v1

    .line 1650
    :cond_1
    return-object v1

    .line 1643
    :cond_2
    new-instance v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;

    .end local v1           #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    invoke-direct {v1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v1       #layoutParams:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;
    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildBottom(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1902
    .local v0, count:I
    const/4 v1, 0x0

    .line 1903
    .local v1, paddingBottom:I
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_0

    .line 1904
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingBottom()I

    move-result v1

    .line 1906
    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method protected getChildLeft(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingLeft()I

    move-result v0

    return v0
.end method

.method protected getChildTop(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1888
    .local v0, count:I
    const/4 v1, 0x0

    .line 1889
    .local v1, paddingTop:I
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v1

    .line 1892
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .end local v1           #paddingTop:I
    :cond_1
    return v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    return v0
.end method

.method protected getFirstChildTop()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1923
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 3

    .prologue
    .line 1953
    const/4 v0, 0x0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHighestChildTop()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1927
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getLastChildBottom()I
    .locals 1

    .prologue
    .line 1931
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1958
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLowestChildBottom()I
    .locals 1

    .prologue
    .line 1935
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNextChildDownsTop(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1911
    .local v0, count:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNextChildUpsBottom(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1916
    .local v0, count:I
    if-nez v0, :cond_1

    .line 1919
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 662
    invoke-super {p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 664
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    .line 666
    .local v0, count:I
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    if-eqz v1, :cond_0

    .line 667
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 668
    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    .line 670
    const/4 v1, 0x2

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 671
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 676
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 677
    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    goto :goto_0
.end method

.method protected hasChildren()Z
    .locals 1

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasSpaceDown()Z
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSpaceUp()Z
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2149
    :cond_0
    return-void
.end method

.method protected layoutChildren()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 557
    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    if-eqz v7, :cond_0

    .line 657
    :goto_0
    return-void

    .line 558
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    .line 561
    :try_start_0
    invoke-super {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 562
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 564
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_1

    .line 565
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->clearState()V

    .line 566
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 570
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v1

    .line 572
    .local v1, childrenTop:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 573
    .local v0, childCount:I
    const/4 v5, 0x0

    .line 576
    .local v5, oldFirst:Landroid/view/View;
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    if-nez v7, :cond_2

    .line 577
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 580
    :cond_2
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 581
    .local v2, dataChanged:Z
    if-eqz v2, :cond_3

    .line 582
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->handleDataChanged()V

    .line 588
    :cond_3
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-nez v7, :cond_4

    .line 589
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->clearState()V

    .line 590
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 593
    :cond_4
    :try_start_2
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 594
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "The content of the adapter has changed but ExtendableListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ExtendableListView("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 598
    const-string/jumbo v9, ") with Adapter("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 594
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    .end local v0           #childCount:I
    .end local v1           #childrenTop:I
    .end local v2           #dataChanged:Z
    .end local v5           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v7

    .line 655
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    .line 656
    throw v7

    .line 603
    .restart local v0       #childCount:I
    .restart local v1       #childrenTop:I
    .restart local v2       #dataChanged:Z
    .restart local v5       #oldFirst:Landroid/view/View;
    :cond_5
    :try_start_3
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 604
    .local v3, firstPosition:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    .line 606
    .local v6, recycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;
    if-eqz v2, :cond_7

    .line 607
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v0, :cond_6

    .line 616
    .end local v4           #i:I
    :goto_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->detachAllViewsFromParent()V

    .line 617
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 619
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    packed-switch v7, :pswitch_data_0

    .line 634
    if-nez v0, :cond_8

    .line 635
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 649
    .end local v1           #childrenTop:I
    :goto_3
    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->scrapActiveViews()V

    .line 650
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 651
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 652
    const/4 v7, 0x0

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 653
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 608
    .restart local v1       #childrenTop:I
    .restart local v4       #i:I
    :cond_6
    :try_start_4
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v3, v4

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 607
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 612
    .end local v4           #i:I
    :cond_7
    invoke-virtual {v6, v0, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->fillActiveViews(II)V

    goto :goto_2

    .line 621
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 622
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->resetToTop()V

    .line 623
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    .line 624
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 625
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_3

    .line 629
    :pswitch_1
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSpecificTop:I

    invoke-direct {p0, v7, v8}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_3

    .line 637
    :cond_8
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-ge v7, v8, :cond_a

    .line 638
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 639
    if-nez v5, :cond_9

    .line 638
    .end local v1           #childrenTop:I
    :goto_4
    invoke-direct {p0, v7, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_3

    .line 639
    .restart local v1       #childrenTop:I
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_4

    .line 642
    :cond_a
    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->fillSpecific(II)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyTouchMode()V
    .locals 1

    .prologue
    .line 2116
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2127
    :goto_0
    return-void

    .line 2118
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2121
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2124
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 1944
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1945
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1949
    return-void

    .line 1946
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1947
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1945
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-super {p0}, Landroid/widget/AbsListView;->onAttachedToWindow()V

    .line 232
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 234
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 235
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOldItemCount:I

    .line 236
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    .line 238
    :cond_0
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsAttached:Z

    .line 239
    return-void
.end method

.method protected onChildCreated(IZ)V
    .locals 0
    .parameter "position"
    .parameter "flowDown"

    .prologue
    .line 1852
    return-void
.end method

.method protected onChildrenDetached(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1375
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 246
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->clear()V

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFlingRunnable:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsAttached:Z

    .line 253
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 258
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 764
    .local v0, action:I
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mIsAttached:Z

    if-nez v8, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v6

    .line 773
    :cond_1
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 775
    :pswitch_1
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 783
    .local v3, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 784
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 785
    .local v5, y:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 787
    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->findMotionRow(I)I

    move-result v1

    .line 788
    .local v1, motionPosition:I
    if-eq v3, v10, :cond_2

    if-ltz v1, :cond_2

    .line 791
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionX:I

    .line 792
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionY:I

    .line 793
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I

    .line 794
    const/4 v8, 0x3

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 796
    :cond_2
    const/high16 v8, -0x8000

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLastY:I

    .line 797
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->initOrResetVelocityTracker()V

    .line 798
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 799
    if-ne v3, v10, :cond_0

    move v6, v7

    .line 800
    goto :goto_0

    .line 806
    .end local v1           #motionPosition:I
    .end local v3           #touchMode:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_2
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 808
    :pswitch_3
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 809
    .local v2, pointerIndex:I
    if-ne v2, v9, :cond_3

    .line 810
    const/4 v2, 0x0

    .line 811
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 813
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v5, v8

    .line 814
    .restart local v5       #y:I
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 815
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 816
    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->startScrollIfNeeded(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    .line 817
    goto :goto_0

    .line 826
    .end local v2           #pointerIndex:I
    .end local v5           #y:I
    :pswitch_4
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I

    .line 827
    iput v9, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mActivePointerId:I

    .line 828
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 829
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 834
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 806
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 534
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    .line 550
    :goto_0
    return-void

    .line 538
    :cond_0
    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    .line 540
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 543
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->markChildrenDirty()V

    .line 547
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mInLayout:Z

    .line 548
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->layoutChildren()V

    .line 549
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mInLayout:Z

    goto :goto_0

    .line 541
    .restart local v0       #childCount:I
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .locals 0
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"
    .parameter "childRight"
    .parameter "childBottom"

    .prologue
    .line 1860
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 1861
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 695
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 696
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 697
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 698
    .local v0, heightSize:I
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setMeasuredDimension(II)V

    .line 699
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mWidthMeasureSpec:I

    .line 700
    return-void
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;)V
    .locals 7
    .parameter "child"
    .parameter "layoutParams"

    .prologue
    const/4 v6, 0x0

    .line 1658
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mWidthMeasureSpec:I

    .line 1659
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->width:I

    .line 1658
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1660
    .local v1, childWidthSpec:I
    iget v2, p2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$LayoutParams;->height:I

    .line 1662
    .local v2, lpHeight:I
    if-lez v2, :cond_0

    .line 1663
    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1668
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1669
    return-void

    .line 1666
    .end local v0           #childHeightSpec:I
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .locals 1
    .parameter "child"
    .parameter "position"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "childTop"

    .prologue
    .line 1868
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1869
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1870
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 2849
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    .line 2850
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2851
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 2853
    iget v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncHeight:J

    .line 2855
    iget-wide v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 2856
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 2857
    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    .line 2858
    iget-wide v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncRowId:J

    .line 2859
    iget v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    .line 2860
    iget v1, v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSpecificTop:I

    .line 2862
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->requestLayout()V

    .line 2863
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2801
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 2802
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2804
    .local v2, ss:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    if-eqz v6, :cond_0

    .line 2806
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    iget-wide v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    .line 2807
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    iget-wide v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    .line 2808
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    .line 2809
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    .line 2810
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncState:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;

    iget v5, v5, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    .line 2844
    :goto_0
    return-object v2

    .line 2814
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-lez v6, :cond_2

    const/4 v1, 0x1

    .line 2815
    .local v1, haveChildren:Z
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getSelectedItemId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->selectedId:J

    .line 2816
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v6

    iput v6, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->height:I

    .line 2819
    if-eqz v1, :cond_3

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-lez v6, :cond_3

    .line 2829
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2830
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    .line 2831
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 2832
    .local v0, firstPos:I
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    if-lt v0, v5, :cond_1

    .line 2833
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    add-int/lit8 v0, v5, -0x1

    .line 2835
    :cond_1
    iput v0, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    .line 2836
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    goto :goto_0

    .end local v0           #firstPos:I
    .end local v1           #haveChildren:Z
    .end local v4           #v:Landroid/view/View;
    :cond_2
    move v1, v5

    .line 2814
    goto :goto_1

    .line 2839
    .restart local v1       #haveChildren:Z
    :cond_3
    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->viewTop:I

    .line 2840
    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->firstId:J

    .line 2841
    iput v5, v2, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$ListSavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->stopFlingRunnable()V

    .line 273
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->clear()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 275
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->rememberSyncState()V

    .line 277
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onSizeChanged(II)V

    .line 268
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 715
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v1

    .line 718
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 721
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 722
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 724
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 728
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 750
    :pswitch_0
    const/4 v1, 0x0

    .line 754
    .local v1, handled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->notifyTouchMode()V

    goto :goto_0

    .line 730
    .end local v1           #handled:Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 731
    .restart local v1       #handled:Z
    goto :goto_1

    .line 734
    .end local v1           #handled:Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 735
    .restart local v1       #handled:Z
    goto :goto_1

    .line 738
    .end local v1           #handled:Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchCancel(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 739
    .restart local v1       #handled:Z
    goto :goto_1

    .line 742
    .end local v1           #handled:Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchPointerUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 743
    .restart local v1       #handled:Z
    goto :goto_1

    .line 746
    .end local v1           #handled:Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 747
    .restart local v1       #handled:Z
    goto :goto_1

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 263
    return-void
.end method

.method rememberSyncState()V
    .locals 4

    .prologue
    .line 2692
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2693
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    .line 2694
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncHeight:J

    .line 2696
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2697
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2698
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2699
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncRowId:J

    .line 2704
    :goto_0
    if-eqz v1, :cond_0

    .line 2705
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSpecificTop:I

    .line 2707
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    .line 2709
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 2702
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #v:Landroid/view/View;
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncRowId:J

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, result:Z
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 495
    :cond_0
    const/4 v0, 0x1

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 500
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, result:Z
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 413
    :cond_0
    const/4 v0, 0x1

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 418
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 2137
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 2138
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mScrollState:I

    .line 2139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2143
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 844
    if-eqz p1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->recycleVelocityTracker()V

    .line 847
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 848
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 523
    invoke-super {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 525
    :cond_0
    return-void
.end method

.method public resetToTop()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 296
    :cond_1
    new-instance v0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 302
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z

    .line 303
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mObserver:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 307
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mRecycleBin:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$RecycleBin;->setViewTypeCount(I)V

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->requestLayout()V

    .line 311
    return-void

    .line 299
    :cond_3
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 303
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .parameter "clipToPadding"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setClipToPadding(Z)V

    .line 510
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mClipToPadding:Z

    .line 511
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "scrollListener"

    .prologue
    .line 2132
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2133
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2134
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 330
    if-ltz p1, :cond_1

    .line 331
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I

    .line 332
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getListPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSpecificTop:I

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    .line 335
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mNeedSync:Z

    if-eqz v0, :cond_0

    .line 336
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncPosition:I

    .line 337
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mSyncRowId:J

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->requestLayout()V

    .line 341
    :cond_1
    return-void
.end method
