.class public Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
.super Landroid/widget/ListView;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;,
        Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;,
        Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;
    }
.end annotation


# static fields
.field private static final sBoundEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nineoldandroids/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private final MOVE_DURATION:I

.field private final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownX:I

.field private mDownY:I

.field private mDynamicTouchChildTouched:Z

.field private mHoverCell:Landroid/graphics/drawable/Drawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsMobileScrolling:Z

.field private mIsParentHorizontalScrollContainer:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventX:I

.field private mLastEventY:I

.field private mLastMovedToIndex:I

.field private mMobileItemId:J

.field private mOnHoverCellListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemMovedListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOriginalTranscriptMode:I

.field private mResIdOfDynamicTouchChild:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSkipCallingOnTouchListener:Z

.field private mSlop:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 628
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$2;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$2;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->sBoundEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 637
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 92
    const/16 v0, 0xf

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 93
    const/16 v0, 0x96

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->MOVE_DURATION:I

    .line 95
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    .line 97
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    .line 98
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    .line 100
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    .line 102
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 103
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 104
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 106
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_ID:I

    .line 107
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    .line 108
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    .line 109
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 115
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_POINTER_ID:I

    .line 116
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 118
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 119
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I

    .line 178
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 695
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 136
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->init(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/16 v0, 0xf

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 93
    const/16 v0, 0x96

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->MOVE_DURATION:I

    .line 95
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    .line 97
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    .line 98
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    .line 100
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    .line 102
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 103
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 104
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 106
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_ID:I

    .line 107
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    .line 108
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    .line 109
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 115
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_POINTER_ID:I

    .line 116
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 118
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 119
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I

    .line 178
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 695
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 146
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->init(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/16 v0, 0xf

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 93
    const/16 v0, 0x96

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->MOVE_DURATION:I

    .line 95
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    .line 97
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    .line 98
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    .line 100
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    .line 102
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 103
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 104
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 106
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_ID:I

    .line 107
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    .line 108
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    .line 109
    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 115
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->INVALID_POINTER_ID:I

    .line 116
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 118
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 119
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I

    .line 178
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 695
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 141
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->init(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    return-void
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    return-void
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    return-void
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    return-void
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemMovedListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->makeCellMobile()V

    return-void
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastMovedToIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)J
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    return-wide v0
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .parameter "v"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 223
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 224
    .local v2, h:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 225
    .local v4, top:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 227
    .local v3, left:I
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 231
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 232
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 234
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 246
    return-object v0
.end method

.method private getChildViewRect(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .parameter "parentView"
    .parameter "childView"

    .prologue
    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    .local v0, childRect:Landroid/graphics/Rect;
    if-ne p1, p2, :cond_1

    .line 333
    :goto_0
    return-object v0

    .line 329
    .local v1, parent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 330
    move-object p2, v1

    .line 328
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .restart local v1       #parent:Landroid/view/ViewGroup;
    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method private getPositionForId(J)I
    .locals 2
    .parameter "itemId"

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, -0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private getViewForId(J)Landroid/view/View;
    .locals 9
    .parameter "itemId"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getFirstVisiblePosition()I

    move-result v1

    .line 271
    .local v1, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 272
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_0

    .line 273
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Adapter doesn\'t have stable ids! Make sure your adapter has stable ids, and override hasStableIds() to return true."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 276
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getChildCount()I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 284
    const/4 v6, 0x0

    :cond_1
    return-object v6

    .line 277
    :cond_2
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 278
    .local v6, v:Landroid/view/View;
    add-int v5, v1, v2

    .line 279
    .local v5, position:I
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 280
    .local v3, id:J
    cmp-long v7, v3, p1

    if-eqz v7, :cond_1

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private handleCellSwitch()V
    .locals 18

    .prologue
    .line 464
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    sub-int v7, v2, v3

    .line 465
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    add-int/2addr v2, v3

    add-int v12, v2, v7

    .line 467
    .local v12, deltaYTotal:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v11

    .line 468
    .local v11, belowView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v15

    .line 469
    .local v15, mobileView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v9

    .line 471
    .local v9, aboveView:Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v12, v2, :cond_2

    const/4 v14, 0x1

    .line 472
    .local v14, isBelow:Z
    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v12, v2, :cond_3

    const/4 v13, 0x1

    .line 474
    .local v13, isAbove:Z
    :goto_1
    if-nez v14, :cond_0

    if-eqz v13, :cond_1

    .line 476
    :cond_0
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 477
    .local v5, switchItemId:J
    :goto_2
    if-eqz v14, :cond_5

    move-object/from16 v17, v11

    .line 478
    .local v17, switchView:Landroid/view/View;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v16

    .line 480
    .local v16, originalItem:I
    if-nez v17, :cond_6

    .line 481
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V

    .line 530
    .end local v5           #switchItemId:J
    .end local v16           #originalItem:I
    .end local v17           #switchView:Landroid/view/View;
    :cond_1
    :goto_4
    return-void

    .line 471
    .end local v13           #isAbove:Z
    .end local v14           #isBelow:Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 472
    .restart local v14       #isBelow:Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 476
    .restart local v13       #isAbove:Z
    :cond_4
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    goto :goto_2

    .restart local v5       #switchItemId:J
    :cond_5
    move-object/from16 v17, v9

    .line 477
    goto :goto_3

    .line 485
    .restart local v16       #originalItem:I
    .restart local v17       #switchView:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->swapElements(II)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_7

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Landroid/widget/BaseAdapter;

    .line 496
    .local v10, adapter:Landroid/widget/BaseAdapter;
    :goto_5
    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    .line 501
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v8

    .line 503
    .local v8, switchViewStartTop:I
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 509
    .local v4, observer:Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v4, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4

    .line 494
    .end local v4           #observer:Landroid/view/ViewTreeObserver;
    .end local v8           #switchViewStartTop:I
    .end local v10           #adapter:Landroid/widget/BaseAdapter;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    check-cast v10, Landroid/widget/BaseAdapter;

    .restart local v10       #adapter:Landroid/widget/BaseAdapter;
    goto :goto_5
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 645
    return-void
.end method

.method private handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9
    .parameter "r"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->computeVerticalScrollOffset()I

    move-result v4

    .line 654
    .local v4, offset:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeight()I

    move-result v1

    .line 655
    .local v1, height:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 656
    .local v0, extent:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->computeVerticalScrollRange()I

    move-result v5

    .line 657
    .local v5, range:I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 658
    .local v3, hoverViewTop:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 660
    .local v2, hoverHeight:I
    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    .line 661
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->smoothScrollBy(II)V

    .line 670
    :goto_0
    return v6

    .line 665
    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    .line 666
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 670
    goto :goto_0
.end method

.method private makeCellMobile()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 190
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->pointToPosition(II)I

    move-result v1

    .line 191
    .local v1, position:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v0, v1, v3

    .line 192
    .local v0, itemNum:I
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, selectedView:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getTranscriptMode()I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOriginalTranscriptMode:I

    .line 198
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setTranscriptMode(I)V

    .line 201
    const/4 v3, 0x0

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    .line 204
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnHoverCellListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;

    if-eqz v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnHoverCellListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v4}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;->onHoverCellCreated(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 211
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 213
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v3, v4}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V

    goto :goto_0
.end method

.method private swapElements(II)V
    .locals 3
    .parameter "indexOne"
    .parameter "indexTwo"

    .prologue
    .line 533
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastMovedToIndex:I

    .line 534
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 536
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 537
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 540
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    instance-of v1, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;

    if-eqz v1, :cond_1

    .line 541
    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$Swappable;->swapItems(II)V

    .line 543
    :cond_1
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 609
    iget-wide v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, mobileView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 611
    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    .line 612
    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    .line 613
    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 614
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->invalidate()V

    .line 618
    :cond_0
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 619
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 620
    const/4 v1, -0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 621
    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 550
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    .line 551
    .local v1, mobileView:Landroid/view/View;
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    if-eqz v2, :cond_2

    .line 552
    :cond_0
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    .line 553
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 554
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 555
    const/4 v2, -0x1

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 558
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOriginalTranscriptMode:I

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setTranscriptMode(I)V

    .line 565
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I

    if-eqz v2, :cond_1

    .line 566
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z

    .line 603
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 572
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "bounds"

    sget-object v4, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->sBoundEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 573
    .local v0, hoverViewAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v2, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$5;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$5;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    new-instance v2, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;

    invoke-direct {v2, p0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;-><init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 599
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 601
    .end local v0           #hoverViewAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private updateNeighborViewsForId(J)V
    .locals 6
    .parameter "itemId"

    .prologue
    const-wide/high16 v4, -0x8000

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getPositionForId(J)I

    move-result v1

    .line 257
    .local v1, position:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 258
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Adapter doesn\'t have stable ids! Make sure your adapter has stable ids, and override hasStableIds() to return true."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_2

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J

    .line 263
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    :cond_1
    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J

    .line 264
    return-void

    :cond_2
    move-wide v2, v4

    .line 262
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 153
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const/high16 v2, 0x4170

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSmoothScrollAmountAtEdge:I

    .line 154
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 155
    .local v1, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSlop:I

    .line 156
    return-void
.end method

.method public isParentHorizontalScrollContainer()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsParentHorizontalScrollContainer:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSkipCallingOnTouchListener:Z

    if-eqz v13, :cond_0

    .line 339
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 451
    :goto_0
    return v13

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    instance-of v13, v13, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwipeOnTouchListener;

    if-eqz v13, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    check-cast v13, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwipeOnTouchListener;

    invoke-interface {v13}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwipeOnTouchListener;->isSwiping()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 344
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSkipCallingOnTouchListener:Z

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v13, v0, v1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 346
    .local v12, retVal:Z
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSkipCallingOnTouchListener:Z

    .line 347
    if-nez v12, :cond_1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x1

    goto :goto_0

    .line 351
    .end local v12           #retVal:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    packed-switch v13, :pswitch_data_0

    .line 441
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    if-eqz v13, :cond_9

    .line 442
    const/4 v13, 0x0

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    .line 355
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    .line 357
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    .line 358
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I

    if-eqz v13, :cond_4

    .line 359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsParentHorizontalScrollContainer:Z

    .line 361
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->pointToPosition(II)I

    move-result v11

    .line 362
    .local v11, position:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v3, v11, v13

    .line 363
    .local v3, childNum:I
    :goto_2
    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 364
    .local v8, itemView:Landroid/view/View;
    :goto_3
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 365
    .local v5, childView:Landroid/view/View;
    :goto_4
    if-eqz v5, :cond_4

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getChildViewRect(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 367
    .local v4, childRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 368
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 374
    .end local v3           #childNum:I
    .end local v4           #childRect:Landroid/graphics/Rect;
    .end local v5           #childView:Landroid/view/View;
    .end local v8           #itemView:Landroid/view/View;
    .end local v11           #position:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsParentHorizontalScrollContainer:Z

    if-eqz v13, :cond_3

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 362
    .restart local v11       #position:I
    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    .line 363
    .restart local v3       #childNum:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 364
    .restart local v8       #itemView:Landroid/view/View;
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 381
    .end local v3           #childNum:I
    .end local v8           #itemView:Landroid/view/View;
    .end local v11           #position:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 387
    .local v10, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    .line 388
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    .line 389
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownY:I

    sub-int v7, v13, v14

    .line 390
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastEventX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDownX:I

    sub-int v6, v13, v14

    .line 392
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    if-eqz v13, :cond_8

    .line 393
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSlop:I

    if-le v13, v14, :cond_8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v13, v14, :cond_8

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->makeCellMobile()V

    .line 397
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 398
    .local v2, cancelEvent:Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/lit8 v13, v13, 0x3

    invoke-virtual {v2, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 399
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 400
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 404
    .end local v2           #cancelEvent:Landroid/view/MotionEvent;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z

    if-eqz v13, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->invalidate()V

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleCellSwitch()V

    .line 411
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleMobileCellScroll()V

    goto/16 :goto_1

    .line 416
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v10           #pointerIndex:I
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V

    goto/16 :goto_1

    .line 420
    :pswitch_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsCancelled()V

    goto/16 :goto_1

    .line 430
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const v14, 0xff00

    and-int/2addr v13, v14

    shr-int/lit8 v10, v13, 0x8

    .line 431
    .restart local v10       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 432
    .local v9, pointerId:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mActivePointerId:I

    if-ne v9, v13, :cond_3

    .line 433
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V

    goto/16 :goto_1

    .line 443
    .end local v9           #pointerId:I
    .end local v10           #pointerIndex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v13, :cond_a

    .line 444
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSkipCallingOnTouchListener:Z

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v13, v0, v1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 446
    .restart local v12       #retVal:Z
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mSkipCallingOnTouchListener:Z

    .line 447
    if-eqz v12, :cond_a

    .line 448
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 451
    .end local v12           #retVal:Z
    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DynamicListView needs a BaseAdapter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    return-void
.end method

.method public setDynamicTouchChild(I)V
    .locals 1
    .parameter "childResId"

    .prologue
    .line 682
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I

    .line 683
    if-eqz p1, :cond_0

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setIsParentHorizontalScrollContainer(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public setIsParentHorizontalScrollContainer(Z)V
    .locals 1
    .parameter "isParentHorizontalScrollContainer"

    .prologue
    .line 674
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsParentHorizontalScrollContainer:Z

    .line 675
    return-void

    .line 674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnHoverCellListener(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;)V
    .locals 0
    .parameter "onHoverCellListener"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnHoverCellListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnHoverCellListener;

    .line 319
    return-void
.end method

.method public setOnItemMovedListener(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;)V
    .locals 0
    .parameter "onItemMovedListener"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemMovedListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;

    .line 776
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 315
    return-void
.end method
