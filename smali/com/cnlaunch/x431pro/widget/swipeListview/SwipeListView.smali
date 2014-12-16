.class public Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
.super Landroid/widget/ListView;
.source "SwipeListView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Recycle"
    }
.end annotation


# static fields
.field public static final SWIPE_ACTION_CHOICE:I = 0x2

.field public static final SWIPE_ACTION_DISMISS:I = 0x1

.field public static final SWIPE_ACTION_NONE:I = 0x3

.field public static final SWIPE_ACTION_REVEAL:I = 0x0

.field public static final SWIPE_DEFAULT_BACK_VIEW:Ljava/lang/String; = "swipelist_backview"

.field public static final SWIPE_DEFAULT_FRONT_VIEW:Ljava/lang/String; = "swipelist_frontview"

.field public static final SWIPE_MODE_BOTH:I = 0x1

.field public static final SWIPE_MODE_DEFAULT:I = -0x1

.field public static final SWIPE_MODE_LEFT:I = 0x3

.field public static final SWIPE_MODE_NONE:I = 0x0

.field public static final SWIPE_MODE_RIGHT:I = 0x2

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING_X:I = 0x1

.field private static final TOUCH_STATE_SCROLLING_Y:I = 0x2


# instance fields
.field private lastMotionX:F

.field private lastMotionY:F

.field swipeBackView:I

.field swipeFrontView:I

.field private swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

.field private touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "swipeBackView"
    .parameter "swipeFrontView"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 101
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 107
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 108
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 130
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 131
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 107
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 108
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 140
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 107
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 108
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 148
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->init(Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    return-object v0
.end method

.method private checkInMoving(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 645
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionX:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 646
    .local v1, xDiff:I
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionY:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 648
    .local v3, yDiff:I
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchSlop:I

    .line 649
    .local v0, touchSlop:I
    if-le v1, v0, :cond_3

    move v2, v5

    .line 650
    .local v2, xMoved:Z
    :goto_0
    if-le v3, v0, :cond_0

    move v4, v5

    .line 652
    .local v4, yMoved:Z
    :cond_0
    if-eqz v2, :cond_1

    .line 653
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 654
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionX:F

    .line 655
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionY:F

    .line 658
    :cond_1
    if-eqz v4, :cond_2

    .line 659
    const/4 v5, 0x2

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 660
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionX:F

    .line 661
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionY:F

    .line 663
    :cond_2
    return-void

    .end local v2           #xMoved:Z
    .end local v4           #yMoved:Z
    :cond_3
    move v2, v4

    .line 649
    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 22
    .parameter "attrs"

    .prologue
    .line 158
    const/4 v13, 0x1

    .line 159
    .local v13, swipeMode:I
    const/16 v16, 0x1

    .line 160
    .local v16, swipeOpenOnLongPress:Z
    const/4 v10, 0x1

    .line 161
    .local v10, swipeCloseAllItemsWhenMoveList:Z
    const-wide/16 v8, 0x0

    .line 162
    .local v8, swipeAnimationTime:J
    const/4 v14, 0x0

    .line 163
    .local v14, swipeOffsetLeft:F
    const/4 v15, 0x0

    .line 164
    .local v15, swipeOffsetRight:F
    const/4 v11, 0x0

    .line 165
    .local v11, swipeDrawableChecked:I
    const/4 v12, 0x0

    .line 167
    .local v12, swipeDrawableUnchecked:I
    const/4 v6, 0x0

    .line 168
    .local v6, swipeActionLeft:I
    const/4 v7, 0x0

    .line 170
    .local v7, swipeActionRight:I
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    sget-object v18, Lcom/ifoer/expedition/pro/R$styleable;->SwipeListView:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 172
    .local v5, styled:Landroid/content/res/TypedArray;
    const/16 v17, 0x7

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 173
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 174
    const/16 v17, 0x9

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 175
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 176
    const/16 v17, 0x3

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 177
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 178
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 179
    const/16 v17, 0x4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 180
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 181
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 182
    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 183
    const/16 v17, 0x6

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 186
    .end local v5           #styled:Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 187
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string/jumbo v18, "swipelist_frontview"

    const-string/jumbo v19, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string/jumbo v18, "swipelist_backview"

    const-string/jumbo v19, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 191
    :cond_2
    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "You forgot the attributes swipeFrontView or swipeBackView. You can add this attributes or use \'%s\' and \'%s\' identifiers"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "swipelist_frontview"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "swipelist_backview"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 195
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 196
    .local v4, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchSlop:I

    .line 197
    new-instance v17, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeBackView:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    .line 198
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setAnimationTime(J)V

    .line 201
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setRightOffset(F)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setLeftOffset(F)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeMode(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeDrawableChecked(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeDrawableUnchecked(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected changeSwipeMode(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, -0x1

    .line 487
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onChangeSwipeMode(I)I

    move-result v0

    .line 490
    :cond_0
    return v0
.end method

.method public closeAnimate(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeAnimate(I)V

    .line 333
    return-void
.end method

.method public closeOpenedItems()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 670
    return-void
.end method

.method public dismiss(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 282
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismiss(I)I

    move-result v1

    .line 283
    .local v1, height:I
    if-lez v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 287
    .local v0, dismissPositions:[I
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 288
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onDismiss([I)V

    .line 289
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_0
.end method

.method public dismissSelected()V
    .locals 7

    .prologue
    .line 297
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v4

    .line 298
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [I

    .line 299
    .local v1, dismissPositions:[I
    const/4 v2, 0x0

    .line 300
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 308
    if-lez v2, :cond_2

    .line 309
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v6, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->handlerPendingDismisses(I)V

    .line 314
    :goto_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->returnOldActions()V

    .line 315
    return-void

    .line 301
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 302
    .local v5, position:I
    aput v5, v1, v3

    .line 303
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismiss(I)I

    move-result v0

    .line 304
    .local v0, auxHeight:I
    if-lez v0, :cond_1

    .line 305
    move v2, v0

    .line 300
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v0           #auxHeight:I
    .end local v5           #position:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onDismiss([I)V

    .line 312
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetPendingDismisses()V

    goto :goto_1
.end method

.method public getCountSelected()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getCountSelected()I

    move-result v0

    return v0
.end method

.method public getPositionsSelected()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getPositionsSelected()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getSwipeActionLeft()I

    move-result v0

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getSwipeActionRight()I

    move-result v0

    return v0
.end method

.method public isChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method protected onChoiceChanged(IZ)V
    .locals 1
    .parameter "position"
    .parameter "selected"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onChoiceChanged(IZ)V

    .line 427
    :cond_0
    return-void
.end method

.method protected onChoiceEnded()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onChoiceEnded()V

    .line 445
    :cond_0
    return-void
.end method

.method protected onChoiceStarted()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onChoiceStarted()V

    .line 436
    :cond_0
    return-void
.end method

.method protected onClickBackView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onClickBackView(I)V

    .line 391
    :cond_0
    return-void
.end method

.method protected onClickFrontView(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onClickFrontView(I)V

    .line 380
    :cond_0
    return-void
.end method

.method protected onClosed(IZ)V
    .locals 1
    .parameter "position"
    .parameter "fromRight"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onClosed(IZ)V

    .line 415
    :cond_0
    return-void
.end method

.method protected onDismiss([I)V
    .locals 1
    .parameter "reverseSortedPositions"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onDismiss([I)V

    .line 344
    :cond_0
    return-void
.end method

.method protected onFirstListItem()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onFirstListItem()V

    .line 454
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 604
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 605
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 606
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 608
    .local v2, y:F
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 610
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    if-ne v5, v3, :cond_1

    .line 611
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v3, p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 635
    :cond_0
    :goto_0
    return v3

    .line 614
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 635
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 616
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->checkInMoving(FF)V

    .line 617
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 619
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v3, p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 620
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 621
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionX:F

    .line 622
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->lastMotionY:F

    move v3, v4

    .line 623
    goto :goto_0

    .line 625
    :pswitch_2
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    goto :goto_1

    .line 628
    :pswitch_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v5, p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 629
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLastListItem()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onLastListItem()V

    .line 463
    :cond_0
    return-void
.end method

.method protected onListChanged()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onListChanged()V

    .line 472
    :cond_0
    return-void
.end method

.method protected onMove(IF)V
    .locals 1
    .parameter "position"
    .parameter "x"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onMove(IF)V

    .line 484
    :cond_0
    return-void
.end method

.method protected onOpened(IZ)V
    .locals 1
    .parameter "position"
    .parameter "toRight"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onOpened(IZ)V

    .line 403
    :cond_0
    return-void
.end method

.method protected onStartClose(IZ)V
    .locals 1
    .parameter "position"
    .parameter "right"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onStartClose(IZ)V

    .line 369
    :cond_0
    return-void
.end method

.method protected onStartOpen(IIZ)V
    .locals 1
    .parameter "position"
    .parameter "action"
    .parameter "right"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;->onStartOpen(IIZ)V

    .line 357
    :cond_0
    return-void
.end method

.method public openAnimate(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openAnimate(I)V

    .line 324
    return-void
.end method

.method public recycle(Landroid/view/View;I)V
    .locals 2
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeFrontView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 222
    return-void
.end method

.method public resetScrolling()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchState:I

    .line 507
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetItems()V

    .line 266
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView$1;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    return-void
.end method

.method public setAnimationTime(J)V
    .locals 1
    .parameter "animationTime"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setAnimationTime(J)V

    .line 597
    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 1
    .parameter "offsetLeft"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setLeftOffset(F)V

    .line 525
    return-void
.end method

.method public setOffsetRight(F)V
    .locals 1
    .parameter "offsetRight"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setRightOffset(F)V

    .line 516
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 1
    .parameter "swipeActionLeft"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeActionLeft(I)V

    .line 570
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 1
    .parameter "swipeActionRight"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeActionRight(I)V

    .line 588
    return-void
.end method

.method public setSwipeCloseAllItemsWhenMoveList(Z)V
    .locals 1
    .parameter "swipeCloseAllItemsWhenMoveList"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeClosesAllItemsWhenListMoves(Z)V

    .line 534
    return-void
.end method

.method public setSwipeListViewListener(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;)V
    .locals 0
    .parameter "swipeListViewListener"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->swipeListViewListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewListener;

    .line 500
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 1
    .parameter "swipeMode"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeMode(I)V

    .line 552
    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 1
    .parameter "swipeOpenOnLongPress"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setSwipeOpenOnLongPress(Z)V

    .line 543
    return-void
.end method

.method public unselectedChoiceStates()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->touchListener:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->unselectedChoiceStates()V

    .line 257
    return-void
.end method
