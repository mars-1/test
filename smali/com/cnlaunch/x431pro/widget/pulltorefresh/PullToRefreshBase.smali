.class public abstract Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/IPullToRefresh",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I = null

.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation:[I = null

.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$State:[I = null

.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$State()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 78
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 79
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 85
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 86
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 88
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 92
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 78
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 79
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 85
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 86
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 88
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 92
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 3
    .parameter "context"
    .parameter

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 78
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 79
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 85
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 86
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 88
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 92
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 119
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, animStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 78
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 79
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 85
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 86
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 88
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 89
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 92
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 125
    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 126
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1062
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1248
    invoke-direct/range {p0 .. p6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, refreshableView:Landroid/view/View;,"TT;"
    const/4 v2, -0x1

    .line 1054
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1055
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1058
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1059
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1058
    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    return-void
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1063
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1067
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1217
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1223
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    .line 1219
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1217
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x4000

    .line 1229
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1234
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    .line 1231
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0xc

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1076
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1082
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 1086
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 1088
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1089
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 1092
    sget-object v3, Lcom/ifoer/expedition/pro/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1094
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 1098
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1099
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1105
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1106
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1109
    sget-object v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 1110
    sget-object v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 1115
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1116
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1117
    .local v1, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1118
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    .end local v1           #background:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1129
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1132
    :cond_3
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1134
    const/16 v3, 0xd

    .line 1133
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1139
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1143
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 1144
    return-void

    .line 1078
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #config:Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1120
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v2       #config:Landroid/view/ViewConfiguration;
    :cond_5
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    const-string/jumbo v3, "ptrAdapterViewBackground"

    const-string/jumbo v4, "ptrRefreshableViewBackground"

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1123
    .restart local v1       #background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1124
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1076
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 1147
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1155
    :cond_0
    :goto_0
    return v0

    .line 1149
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    .line 1151
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    .line 1153
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 10

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 1170
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1177
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 1178
    .local v0, initialMotionValue:F
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 1179
    .local v2, lastMotionValue:F
    :goto_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v5

    .line 1182
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1189
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1190
    .local v3, newScrollValue:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1194
    .local v1, itemDimension:I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1196
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1197
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 1198
    .local v4, scale:F
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1204
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    .line 1208
    :goto_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 1209
    sget-object v5, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 1214
    .end local v4           #scale:F
    :cond_0
    :goto_3
    return-void

    .line 1172
    .end local v0           #initialMotionValue:F
    .end local v1           #itemDimension:I
    .end local v2           #lastMotionValue:F
    .end local v3           #newScrollValue:I
    :pswitch_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .line 1173
    .restart local v0       #initialMotionValue:F
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 1174
    .restart local v2       #lastMotionValue:F
    goto :goto_0

    .line 1184
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1185
    .restart local v3       #newScrollValue:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .line 1186
    .restart local v1       #itemDimension:I
    goto :goto_1

    .line 1200
    .restart local v4       #scale:F
    :pswitch_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    goto :goto_2

    .line 1210
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1211
    sget-object v5, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v9, [Z

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 1170
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1182
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 1198
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 7
    .parameter "scrollValue"
    .parameter "duration"

    .prologue
    .line 1245
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1246
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .parameter "newScrollValue"
    .parameter "duration"
    .parameter "delayMillis"
    .parameter

    .prologue
    .line 1250
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p6, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1255
    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1261
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1265
    .local v2, oldScrollValue:I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1268
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1270
    :cond_1
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IIJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    .line 1272
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1278
    :cond_2
    :goto_1
    return-void

    .line 1257
    .end local v2           #oldScrollValue:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .line 1258
    .restart local v2       #oldScrollValue:I
    goto :goto_0

    .line 1275
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .parameter "y"

    .prologue
    .line 1281
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$3;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1288
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 133
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-string/jumbo v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, refreshableView:Landroid/view/View;,"TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #refreshableView:Landroid/view/View;,"TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void

    .line 141
    .restart local v0       #refreshableView:Landroid/view/View;,"TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 576
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 577
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 584
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 585
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .parameter "context"
    .parameter
    .parameter "attrs"

    .prologue
    .line 588
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 589
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 588
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v0

    .line 590
    .local v0, layout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 591
    return-object v0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 2
    .parameter "includeStart"
    .parameter "includeEnd"

    .prologue
    .line 599
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;-><init>()V

    .line 601
    .local v0, proxy:Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 604
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 608
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 155
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 628
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 629
    return-void
.end method

.method public final getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 632
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 636
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 640
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 644
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;
    .locals 1
    .parameter "includeStart"
    .parameter "includeEnd"

    .prologue
    .line 175
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 180
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 648
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 652
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 656
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 190
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 195
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 666
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 202
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 207
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 212
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 218
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 223
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 229
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 300
    :goto_0
    return v6

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 235
    .local v1, action:I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 236
    :cond_1
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 240
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 241
    goto :goto_0

    .line 244
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 247
    :pswitch_1
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 248
    goto :goto_0

    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 257
    .local v4, x:F
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    .line 264
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 265
    .local v2, diff:F
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 268
    .local v3, oppositeDiff:F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 270
    .local v0, absDiff:F
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 271
    :cond_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f80

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 272
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 273
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 274
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 275
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 276
    sget-object v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 259
    .end local v0           #absDiff:F
    .end local v2           #diff:F
    .end local v3           #oppositeDiff:F
    :pswitch_2
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 260
    .restart local v2       #diff:F
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 261
    .restart local v3       #oppositeDiff:F
    goto :goto_2

    .line 278
    .restart local v0       #absDiff:F
    :cond_7
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x4080

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 279
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 280
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 281
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 282
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 283
    sget-object v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .line 291
    .end local v0           #absDiff:F
    .end local v2           #diff:F
    .end local v3           #oppositeDiff:F
    .end local v4           #x:F
    .end local v5           #y:F
    :pswitch_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 294
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 257
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 693
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "saveState"

    .prologue
    .line 702
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 709
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 720
    :goto_0
    return-void

    .line 711
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 714
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 306
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 308
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .parameter "doScroll"

    .prologue
    .line 729
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    .line 736
    :cond_1
    if-eqz p1, :cond_3

    .line 737
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_2

    .line 740
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    .line 747
    .local v0, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 754
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 764
    .end local v0           #listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :goto_0
    return-void

    .line 750
    .restart local v0       #listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 758
    .end local v0           #listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 762
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 771
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 782
    :goto_0
    return-void

    .line 773
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 776
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 789
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 793
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 794
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 796
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    .line 797
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 801
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 802
    check-cast v0, Landroid/os/Bundle;

    .line 804
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 805
    const-string/jumbo v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 807
    const-string/jumbo v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 808
    const-string/jumbo v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 811
    const-string/jumbo v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 813
    const-string/jumbo v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 814
    .local v1, viewState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 815
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 819
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 824
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #viewState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    :goto_0
    return-void

    .line 823
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 828
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 832
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 834
    const-string/jumbo v1, "ptr_state"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string/jumbo v1, "ptr_mode"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 836
    const-string/jumbo v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    const-string/jumbo v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 838
    const-string/jumbo v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 839
    const-string/jumbo v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 841
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 847
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-string/jumbo v0, "PullToRefresh"

    const-string/jumbo v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 853
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 856
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 862
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 326
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 341
    goto :goto_0

    .line 328
    :pswitch_1
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 331
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 332
    goto :goto_0

    .line 348
    :pswitch_2
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 349
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 351
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    .line 352
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_5

    .line 353
    :cond_4
    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 354
    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 360
    goto :goto_0

    .line 365
    :cond_6
    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 367
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 10

    .prologue
    .line 875
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 877
    .local v0, maximumPullScroll:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 878
    .local v2, pLeft:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 879
    .local v4, pTop:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 880
    .local v3, pRight:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 882
    .local v1, pBottom:I
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 917
    :goto_0
    const-string/jumbo v5, "PullToRefresh"

    const-string/jumbo v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 920
    return-void

    .line 884
    :pswitch_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 885
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 886
    neg-int v2, v0

    .line 891
    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 892
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 893
    neg-int v3, v0

    .line 894
    goto :goto_0

    .line 888
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 895
    :cond_1
    const/4 v3, 0x0

    .line 897
    goto :goto_0

    .line 900
    :pswitch_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 901
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 902
    neg-int v4, v0

    .line 907
    :goto_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 908
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 909
    neg-int v1, v0

    .line 910
    goto :goto_0

    .line 904
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 911
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 925
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 927
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 929
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 930
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 931
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 935
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 936
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 937
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 1
    .parameter "disableScrollingWhileRefreshing"

    .prologue
    .line 384
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    .line 385
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .parameter "filterEvents"

    .prologue
    .line 389
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 390
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 6
    .parameter "value"

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 951
    const-string/jumbo v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setHeaderScroll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 956
    .local v0, maximumPullScroll:I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 958
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 959
    if-gez p1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 979
    :cond_0
    :goto_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Orientation()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 987
    :goto_1
    return-void

    .line 961
    :cond_1
    if-lez p1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 964
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 965
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 981
    :pswitch_0
    invoke-virtual {p0, v4, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 984
    :pswitch_1
    invoke-virtual {p0, p1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 397
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 405
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "drawable"
    .parameter

    .prologue
    .line 413
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .parameter "longClickable"

    .prologue
    .line 419
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 420
    return-void
.end method

.method public final setMode(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 3
    .parameter

    .prologue
    .line 424
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 426
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Setting mode to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 429
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 431
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    .line 435
    return-void
.end method

.method public final setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 447
    return-void
.end method

.method public final setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 441
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "pullLabel"

    .prologue
    .line 454
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "pullLabel"
    .parameter

    .prologue
    .line 462
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 471
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 472
    return-void

    .line 471
    :cond_0
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 476
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 477
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 481
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    .line 482
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .parameter "doScroll"

    .prologue
    .line 486
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 489
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "refreshingLabel"

    .prologue
    .line 496
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "refreshingLabel"
    .parameter

    .prologue
    .line 504
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "releaseLabel"

    .prologue
    .line 513
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 514
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter "releaseLabel"
    .parameter

    .prologue
    .line 521
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 526
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 527
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .parameter "allowScrollingWhileRefreshing"

    .prologue
    .line 377
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 378
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .parameter "showView"

    .prologue
    .line 531
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 532
    return-void
.end method

.method final varargs setState(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .parameter
    .parameter "params"

    .prologue
    .line 541
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, state:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    .line 543
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "State: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 569
    :cond_0
    return-void

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 554
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 558
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .parameter "scrollValue"

    .prologue
    .line 996
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 997
    return-void
.end method

.method protected final smoothScrollTo(ILcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .parameter "scrollValue"
    .parameter

    .prologue
    .line 1007
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1008
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .parameter "scrollValue"

    .prologue
    .line 1017
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 1018
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 1027
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1030
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1039
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1041
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1042
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1050
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 1051
    return-void

    .line 1050
    :cond_4
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method
