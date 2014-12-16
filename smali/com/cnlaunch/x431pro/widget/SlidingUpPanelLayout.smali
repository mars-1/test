.class public Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;,
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;,
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SimplePanelSlideListener;,
        Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$SlidingUpPanelLayout$SlideState:[I = null

.field private static final DEFAULT_ATTRS:[I = null

.field private static final DEFAULT_FADE_COLOR:I = -0x67000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorPoint:F

.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsSlidingEnabled:Z

.field private mIsSlidingUp:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingDragViewTouchEvents:Z

.field private mMinFlingVelocity:I

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

.field private final mScrollTouchSlop:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$SlidingUpPanelLayout$SlideState()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$SlidingUpPanelLayout$SlideState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->values()[Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$SlidingUpPanelLayout$SlideState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v11, -0x6700

    const/high16 v10, 0x3f00

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 256
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/16 v5, 0x190

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 74
    iput v11, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 79
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 89
    iput v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 94
    iput v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    .line 116
    iput v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragViewResId:I

    .line 130
    sget-object v5, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    .line 170
    const/4 v5, 0x0

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 181
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 183
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 257
    if-eqz p2, :cond_3

    .line 258
    sget-object v5, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, defAttrs:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 262
    .local v2, gravity:I
    const/16 v5, 0x30

    if-eq v2, v5, :cond_0

    const/16 v5, 0x50

    if-eq v2, v5, :cond_0

    .line 263
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "layout_gravity must be set to either top or bottom"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_0
    const/16 v5, 0x50

    if-ne v2, v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 268
    .end local v2           #gravity:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    sget-object v5, Lcom/ifoer/expedition/pro/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 272
    .local v3, ta:Landroid/content/res/TypedArray;
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 274
    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    .line 276
    const/4 v5, 0x3

    const/16 v8, 0x190

    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 277
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 279
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragViewResId:I

    .line 282
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    .end local v0           #defAttrs:Landroid/content/res/TypedArray;
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 286
    .local v1, density:F
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    if-ne v5, v9, :cond_4

    .line 287
    const/high16 v5, 0x4288

    mul-float/2addr v5, v1

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 289
    :cond_4
    iget v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne v5, v9, :cond_5

    .line 290
    const/high16 v5, 0x4080

    mul-float/2addr v5, v1

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    .line 293
    :cond_5
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 295
    new-instance v5, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;)V

    invoke-static {p0, v10, v5}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 296
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-virtual {v5, v7}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 298
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    .line 299
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 301
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 302
    .local v4, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mScrollTouchSlop:I

    .line 303
    return-void

    .end local v1           #density:F
    .end local v4           #vc:Landroid/view/ViewConfiguration;
    .restart local v0       #defAttrs:Landroid/content/res/TypedArray;
    .restart local v2       #gravity:I
    :cond_6
    move v5, v7

    .line 265
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method private collapsePane(Landroid/view/View;I)Z
    .locals 1
    .parameter "pane"
    .parameter "initialVelocity"

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0, p2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    :cond_0
    const/4 v0, 0x1

    .line 763
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expandPane(Landroid/view/View;IF)Z
    .locals 1
    .parameter "pane"
    .parameter "initialVelocity"
    .parameter "mSlideOffset"

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    const/4 v0, 0x1

    .line 756
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSlidingTop()I
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 771
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 463
    :cond_0
    return v1
.end method

.method private isDragViewUnder(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 740
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 741
    .local v0, dragView:Landroid/view/View;
    :goto_0
    if-nez v0, :cond_2

    .line 749
    :cond_0
    :goto_1
    return v5

    .line 740
    .end local v0           #dragView:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    goto :goto_0

    .line 743
    .restart local v0       #dragView:Landroid/view/View;
    :cond_2
    new-array v4, v8, [I

    .line 744
    .local v4, viewLocation:[I
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 745
    new-array v1, v8, [I

    .line 746
    .local v1, parentLocation:[I
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 747
    aget v7, v1, v5

    add-int v2, v7, p1

    .line 748
    .local v2, screenX:I
    aget v7, v1, v6

    add-int v3, v7, p2

    .line 749
    .local v3, screenY:I
    aget v7, v4, v5

    if-lt v2, v7, :cond_0

    aget v7, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_0

    aget v7, v4, v6

    if-lt v3, v7, :cond_0

    aget v7, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private onPanelDragged(I)V
    .locals 3
    .parameter "newTop"

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    .line 866
    .local v0, topBound:I
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    .line 867
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 868
    return-void

    .line 866
    :cond_0
    sub-int v1, v0, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 988
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 989
    check-cast v7, Landroid/view/ViewGroup;

    .line 990
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 991
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 992
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 995
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-gez v8, :cond_1

    .line 1003
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 996
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 997
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 998
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    const/4 v0, 0x1

    goto :goto_1

    .line 995
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1003
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1018
    instance-of v0, p1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapsePane()Z
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->collapsePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    .line 412
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 413
    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 405
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 406
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 398
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 399
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 392
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 946
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 948
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    .line 956
    .local v2, right:I
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_2

    .line 957
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int v3, v4, v5

    .line 958
    .local v3, top:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 963
    .local v0, bottom:I
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 965
    .local v1, left:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 966
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 967
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 960
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v3           #top:I
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 961
    .restart local v3       #top:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowHeight:I

    add-int v0, v4, v5

    .restart local v0       #bottom:I
    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/high16 v10, 0x3f80

    .line 872
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    .line 874
    .local v4, lp:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 876
    .local v6, save:I
    const/4 v2, 0x0

    .line 878
    .local v2, drawScrim:Z
    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v7, :cond_0

    iget-boolean v7, v4, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 881
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 882
    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v7, :cond_2

    .line 883
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 887
    :goto_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 888
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_0

    .line 889
    const/4 v2, 0x1

    .line 893
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    .line 894
    .local v5, result:Z
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 896
    if-eqz v2, :cond_1

    .line 897
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v8, -0x100

    and-int/2addr v7, v8

    ushr-int/lit8 v0, v7, 0x18

    .line 898
    .local v0, baseAlpha:I
    int-to-float v7, v0

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    sub-float v8, v10, v8

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 899
    .local v3, imag:I
    shl-int/lit8 v7, v3, 0x18

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    or-int v1, v7, v8

    .line 900
    .local v1, color:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 904
    .end local v0           #baseAlpha:I
    .end local v1           #color:I
    .end local v3           #imag:I
    :cond_1
    return v5

    .line 885
    .end local v5           #result:Z
    :cond_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public expandPane()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->expandPane(F)Z

    move-result v0

    return v0
.end method

.method public expandPane(F)Z
    .locals 2
    .parameter "mSlideOffset"

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isPaneVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->showPane()V

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->expandPane(Landroid/view/View;IF)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1008
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1023
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1013
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public hidePane()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->requestLayout()V

    goto :goto_0
.end method

.method public isAnchored()Z
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaneVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 840
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v1

    .line 843
    :cond_1
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, slidingPane:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 470
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 476
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 311
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 314
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 637
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 639
    .local v0, action:I
    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v10, :cond_2

    if-eqz v0, :cond_2

    .line 640
    :cond_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 641
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 693
    :cond_1
    :goto_0
    return v8

    .line 644
    :cond_2
    const/4 v10, 0x3

    if-eq v0, v10, :cond_3

    if-ne v0, v9, :cond_4

    .line 645
    :cond_3
    iget-object v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto :goto_0

    .line 649
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 650
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 651
    .local v7, y:F
    const/4 v5, 0x0

    .line 653
    .local v5, interceptTap:Z
    packed-switch v0, :pswitch_data_0

    .line 691
    :cond_5
    :goto_1
    :pswitch_0
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 693
    .local v4, interceptForDrag:Z
    if-nez v4, :cond_6

    if-eqz v5, :cond_1

    :cond_6
    move v8, v9

    goto :goto_0

    .line 655
    .end local v4           #interceptForDrag:Z
    :pswitch_1
    iput-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 656
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 657
    iput v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 658
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-direct {p0, v10, v11}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-nez v10, :cond_5

    .line 659
    const/4 v5, 0x1

    .line 661
    goto :goto_1

    .line 665
    :pswitch_2
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 666
    .local v1, adx:F
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 667
    .local v2, ady:F
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 670
    .local v3, dragSlop:I
    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    if-eqz v10, :cond_8

    .line 671
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-lez v10, :cond_7

    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_7

    .line 672
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 677
    :cond_7
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mScrollTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-lez v10, :cond_8

    .line 678
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-direct {p0, v10, v11}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v5

    .line 682
    :cond_8
    int-to-float v10, v3

    cmpl-float v10, v2, v10

    if-lez v10, :cond_9

    cmpl-float v10, v1, v2

    if-gtz v10, :cond_a

    :cond_9
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-direct {p0, v10, v11}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 683
    :cond_a
    iget-object v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 684
    iput-boolean v9, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 553
    .local v9, paddingLeft:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v10

    .line 554
    .local v10, paddingTop:I
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v11

    .line 556
    .local v11, slidingTop:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 558
    .local v2, childCount:I
    iget-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_0

    .line 559
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$SlidingUpPanelLayout$SlideState()[I

    move-result-object v12

    iget-object v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    invoke-virtual {v13}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 567
    :pswitch_0
    const/high16 v12, 0x3f80

    iput v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    .line 572
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-lt v7, v2, :cond_4

    .line 599
    iget-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 603
    :cond_1
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 604
    return-void

    .line 561
    .end local v7           #i:I
    :pswitch_1
    iget-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    :goto_2
    iput v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    :cond_2
    const/high16 v12, 0x3f80

    goto :goto_2

    .line 564
    :pswitch_2
    iget-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v12, :cond_3

    iget v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    :goto_3
    iput v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    :cond_3
    const/high16 v12, 0x3f80

    goto :goto_3

    .line 573
    .restart local v7       #i:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_5

    .line 572
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 579
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    .line 580
    .local v8, lp:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 582
    .local v3, childHeight:I
    iget-boolean v12, v8, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_6

    .line 583
    iget v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v12, v3, v12

    iput v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    .line 587
    :cond_6
    iget-boolean v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v12, :cond_8

    .line 588
    iget-boolean v12, v8, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_7

    iget v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v12, v12

    iget v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int v6, v11, v12

    .line 592
    .local v6, childTop:I
    :goto_5
    add-int v1, v6, v3

    .line 593
    .local v1, childBottom:I
    move v4, v9

    .line 594
    .local v4, childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v5, v4, v12

    .line 596
    .local v5, childRight:I
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .end local v1           #childBottom:I
    .end local v4           #childLeft:I
    .end local v5           #childRight:I
    .end local v6           #childTop:I
    :cond_7
    move v6, v10

    .line 588
    goto :goto_5

    .line 590
    :cond_8
    iget-boolean v12, v8, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    if-eqz v12, :cond_9

    iget v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v12, v12

    iget v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int v6, v11, v12

    .restart local v6       #childTop:I
    :goto_6
    goto :goto_5

    .end local v6           #childTop:I
    :cond_9
    iget v12, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    add-int v6, v10, v12

    goto :goto_6

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 480
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 481
    .local v11, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 482
    .local v12, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 483
    .local v5, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 485
    .local v6, heightSize:I
    const/high16 v13, 0x4000

    if-eq v11, v13, :cond_0

    .line 486
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 487
    :cond_0
    const/high16 v13, 0x4000

    if-eq v5, v13, :cond_1

    .line 488
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    sub-int v13, v6, v13

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v14

    sub-int v8, v13, v14

    .line 492
    .local v8, layoutHeight:I
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 494
    .local v10, panelHeight:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .line 496
    .local v1, childCount:I
    const/4 v13, 0x2

    if-le v1, v13, :cond_3

    .line 497
    sget-object v13, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onMeasure: More than two child views are not supported."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2
    :goto_0
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 504
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    .line 507
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-lt v7, v1, :cond_4

    .line 547
    invoke-virtual {p0, v12, v6}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 548
    return-void

    .line 498
    .end local v7           #i:I
    :cond_3
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    .line 499
    const/4 v10, 0x0

    goto :goto_0

    .line 508
    .restart local v7       #i:I
    :cond_4
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    .line 511
    .local v9, lp:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;
    move v4, v8

    .line 512
    .local v4, height:I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 513
    const/4 v13, 0x0

    iput-boolean v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 507
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 517
    :cond_5
    const/4 v13, 0x1

    if-ne v7, v13, :cond_6

    .line 518
    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    .line 519
    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->dimWhenOffset:Z

    .line 520
    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 521
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    .line 527
    :goto_3
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_7

    .line 528
    const/high16 v13, -0x8000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 536
    .local v3, childWidthSpec:I
    :goto_4
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_9

    .line 537
    const/high16 v13, -0x8000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 544
    .local v2, childHeightSpec:I
    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 523
    .end local v2           #childHeightSpec:I
    .end local v3           #childWidthSpec:I
    :cond_6
    sub-int/2addr v4, v10

    goto :goto_3

    .line 529
    :cond_7
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_8

    .line 530
    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 531
    .restart local v3       #childWidthSpec:I
    goto :goto_4

    .line 532
    .end local v3           #childWidthSpec:I
    :cond_8
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3       #childWidthSpec:I
    goto :goto_4

    .line 538
    :cond_9
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_a

    .line 539
    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 540
    .restart local v2       #childHeightSpec:I
    goto :goto_5

    .line 541
    .end local v2           #childHeightSpec:I
    :cond_a
    iget v13, v9, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->height:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2       #childHeightSpec:I
    goto :goto_5
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1038
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;

    .line 1039
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1040
    iget-object v1, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    .line 1041
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1028
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1030
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1031
    .local v0, ss:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    iput-object v2, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    .line 1033
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 610
    if-eq p2, p4, :cond_0

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 613
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 698
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    if-nez v8, :cond_2

    .line 699
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 736
    :cond_1
    :goto_0
    return v5

    .line 702
    :cond_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 705
    .local v0, action:I
    const/4 v5, 0x1

    .line 707
    .local v5, wantTouchEvents:Z
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 710
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 711
    .local v7, y:F
    iput v6, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 712
    iput v7, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_0

    .line 717
    .end local v6           #x:F
    .end local v7           #y:F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 718
    .restart local v6       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 719
    .restart local v7       #y:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v2, v6, v8

    .line 720
    .local v2, dx:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v3, v7, v8

    .line 721
    .local v3, dy:F
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    .line 722
    .local v4, slop:I
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 723
    .local v1, dragView:Landroid/view/View;
    :goto_1
    mul-float v8, v2, v2

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    mul-int v9, v4, v4

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    float-to-int v8, v6

    float-to-int v9, v7

    invoke-direct {p0, v8, v9}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isDragViewUnder(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 724
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 725
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->isAnchored()Z

    move-result v8

    if-nez v8, :cond_4

    .line 726
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->expandPane(F)Z

    goto :goto_0

    .line 722
    .end local v1           #dragView:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    goto :goto_1

    .line 728
    .restart local v1       #dragView:Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->collapsePane()Z

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 450
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 456
    return-void

    .line 451
    :cond_0
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 453
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAnchorPoint(F)V
    .locals 1
    .parameter "anchorPoint"

    .prologue
    .line 376
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 377
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 378
    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 324
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 325
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->invalidate()V

    .line 326
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 0
    .parameter "dragView"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 366
    return-void
.end method

.method public setEnableDragViewTouchEvents(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUsingDragViewTouchEvents:Z

    .line 633
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 342
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I

    .line 343
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->requestLayout()V

    .line 344
    return-void
.end method

.method public setPanelSlideListener(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    .line 355
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingEnabled:Z

    .line 623
    return-void
.end method

.method public showPane()V
    .locals 3

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 854
    :goto_0
    return-void

    .line 851
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, slidingPane:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 853
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->requestLayout()V

    goto :goto_0
.end method

.method smoothSlideTo(FI)Z
    .locals 6
    .parameter "slideOffset"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mCanSlide:Z

    if-nez v3, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v2

    .line 921
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I

    move-result v0

    .line 922
    .local v0, topBound:I
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v3, :cond_2

    int-to-float v3, v0

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 924
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 926
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 927
    const/4 v2, 0x1

    goto :goto_0

    .line 922
    .end local v1           #y:I
    :cond_2
    int-to-float v3, v0

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_1
.end method

.method updateObscuredViewVisibility()V
    .locals 17

    .prologue
    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 447
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 420
    .local v9, leftBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v11, v15, v16

    .line 421
    .local v11, rightBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    .line 422
    .local v13, topBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 427
    .local v2, bottomBound:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v15}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 429
    .local v8, left:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 430
    .local v10, right:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    .line 431
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 435
    .local v1, bottom:I
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 436
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 437
    .local v5, clampedChildLeft:I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 438
    .local v7, clampedChildTop:I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 439
    .local v6, clampedChildRight:I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 441
    .local v4, clampedChildBottom:I
    if-lt v5, v8, :cond_2

    if-lt v7, v12, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v4, v1, :cond_2

    .line 442
    const/4 v14, 0x4

    .line 446
    .local v14, vis:I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 433
    .end local v1           #bottom:I
    .end local v3           #child:Landroid/view/View;
    .end local v4           #clampedChildBottom:I
    .end local v5           #clampedChildLeft:I
    .end local v6           #clampedChildRight:I
    .end local v7           #clampedChildTop:I
    .end local v8           #left:I
    .end local v10           #right:I
    .end local v12           #top:I
    .end local v14           #vis:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #bottom:I
    move v12, v1

    .restart local v12       #top:I
    move v10, v1

    .restart local v10       #right:I
    move v8, v1

    .restart local v8       #left:I
    goto :goto_1

    .line 444
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #clampedChildBottom:I
    .restart local v5       #clampedChildLeft:I
    .restart local v6       #clampedChildRight:I
    .restart local v7       #clampedChildTop:I
    :cond_2
    const/4 v14, 0x0

    .restart local v14       #vis:I
    goto :goto_2
.end method
