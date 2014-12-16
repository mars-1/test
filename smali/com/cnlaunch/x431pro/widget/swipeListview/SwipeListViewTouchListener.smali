.class public Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;
    }
.end annotation


# static fields
.field private static final DISPLACE_CHOICE:I = 0x50


# instance fields
.field private animationTime:J

.field private backView:Landroid/view/View;

.field private checked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private configShortAnimationTime:J

.field private dismissAnimationRefCount:I

.field private downPosition:I

.field private downX:F

.field private frontView:Landroid/view/View;

.field private leftOffset:F

.field private listViewMoving:Z

.field private maxFlingVelocity:I

.field private minFlingVelocity:I

.field private oldSwipeActionLeft:I

.field private oldSwipeActionRight:I

.field private opened:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private openedRight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private parentView:Landroid/view/View;

.field private paused:Z

.field private pendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field private rightOffset:F

.field private slop:I

.field private swipeActionLeft:I

.field private swipeActionRight:I

.field private swipeBackView:I

.field private swipeClosesAllItemsWhenListMoves:Z

.field private swipeCurrentAction:I

.field private swipeDrawableChecked:I

.field private swipeDrawableUnchecked:I

.field private swipeFrontView:I

.field private swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

.field private swipeMode:I

.field private swipeOpenOnLongPress:Z

.field private swiping:Z

.field private swipingRight:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewWidth:I


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;II)V
    .locals 5
    .parameter "swipeListView"
    .parameter "swipeFrontView"
    .parameter "swipeBackView"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    .line 37
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeOpenOnLongPress:Z

    .line 38
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    .line 40
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    .line 41
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeBackView:I

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    .line 52
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    .line 53
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    .line 55
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    .line 56
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    .line 60
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    .line 63
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 75
    const/4 v1, 0x3

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 77
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 78
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    .line 95
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    .line 96
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeBackView:I

    .line 97
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 98
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->slop:I

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->minFlingVelocity:I

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->maxFlingVelocity:I

    .line 101
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->configShortAnimationTime:J

    .line 102
    iget-wide v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->configShortAnimationTime:J

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    .line 103
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->removePendingDismisses(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetCell()V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->listViewMoving:Z

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    return-void
.end method

.method private closeAnimate(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 450
    :cond_0
    return-void
.end method

.method private generateAnimate(Landroid/view/View;ZZI)V
    .locals 3
    .parameter "view"
    .parameter "swap"
    .parameter "swapRight"
    .parameter "position"

    .prologue
    .line 461
    const-string/jumbo v0, "SwipeListView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "swap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - swapRight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 465
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateDismissAnimate(Landroid/view/View;ZZI)V

    .line 468
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 469
    invoke-direct {p0, p1, p4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateChoiceAnimate(Landroid/view/View;I)V

    .line 471
    :cond_2
    return-void
.end method

.method private generateChoiceAnimate(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 480
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    .line 482
    iget-wide v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v0

    .line 483
    new-instance v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$4;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 490
    return-void
.end method

.method private generateDismissAnimate(Landroid/view/View;ZZI)V
    .locals 5
    .parameter "view"
    .parameter "swap"
    .parameter "swapRight"
    .parameter "position"

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, moveTo:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    if-nez p2, :cond_0

    .line 504
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 512
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 513
    .local v0, alpha:I
    if-eqz p2, :cond_1

    .line 514
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 515
    const/4 v0, 0x0

    .line 518
    :cond_1
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    .line 519
    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    .line 520
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    .line 521
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v2

    .line 522
    new-instance v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;

    invoke-direct {v3, p0, p2, p1, p4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ZLandroid/view/View;I)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 533
    return-void

    .line 504
    .end local v0           #alpha:I
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0

    .line 507
    :cond_3
    if-eqz p2, :cond_0

    .line 508
    if-eqz p3, :cond_4

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1
.end method

.method private generateRevealAnimate(Landroid/view/View;ZZI)V
    .locals 4
    .parameter "view"
    .parameter "swap"
    .parameter "swapRight"
    .parameter "position"

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, moveTo:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    if-nez p2, :cond_0

    .line 547
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 555
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    .line 556
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    .line 557
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v1

    .line 558
    new-instance v2, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;

    invoke-direct {v2, p0, p2, p4, p3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ZIZ)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 575
    return-void

    .line 547
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 550
    :cond_2
    if-eqz p2, :cond_0

    .line 551
    if-eqz p3, :cond_3

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1
.end method

.method private openAnimate(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V

    .line 438
    :cond_0
    return-void
.end method

.method private removePendingDismisses(I)V
    .locals 7
    .parameter "originalHeight"

    .prologue
    .line 999
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1001
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 1002
    .local v0, dismissPositions:[I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 1005
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v4, v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onDismiss([I)V

    .line 1008
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1019
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetPendingDismisses()V

    .line 1021
    return-void

    .line 1003
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;

    iget v4, v4, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->position:I

    aput v4, v0, v1

    .line 1002
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1008
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;

    .line 1010
    .local v3, pendingDismiss:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;
    iget-object v5, v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1011
    iget-object v5, v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 1012
    iget-object v5, v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 1013
    iget-object v5, v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1014
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1015
    iget-object v5, v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private resetCell()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 578
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    if-eq v0, v3, :cond_1

    .line 579
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 583
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 584
    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    .line 585
    iput-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    .line 586
    iput v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    .line 588
    :cond_1
    return-void
.end method

.method private setActionsTo(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 869
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->oldSwipeActionRight:I

    .line 870
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->oldSwipeActionLeft:I

    .line 871
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 872
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 873
    return-void
.end method

.method private setBackView(Landroid/view/View;)V
    .locals 1
    .parameter "backView"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    .line 146
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$3;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private setFrontView(Landroid/view/View;)V
    .locals 1
    .parameter "frontView"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    .line 122
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$1;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeOpenOnLongPress:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$2;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method private setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "parentView"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    .line 113
    return-void
.end method

.method private swapChoiceState(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->getCountSelected()I

    move-result v2

    .line 321
    .local v2, lastCount:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 322
    .local v1, lastChecked:Z
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    if-eqz v1, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v6, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    if-eqz v1, :cond_4

    add-int/lit8 v0, v2, -0x1

    .line 324
    .local v0, count:I
    :goto_1
    if-nez v2, :cond_0

    if-ne v0, v5, :cond_0

    .line 325
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onChoiceStarted()V

    .line 326
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 327
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setActionsTo(I)V

    .line 329
    :cond_0
    if-ne v2, v5, :cond_1

    if-nez v0, :cond_1

    .line 330
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onChoiceEnded()V

    .line 331
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->returnOldActions()V

    .line 333
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_2

    .line 334
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, p1, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->setItemChecked(IZ)V

    .line 336
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {v3, p1, v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onChoiceChanged(IZ)V

    .line 337
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-virtual {p0, v3, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 338
    return-void

    .end local v0           #count:I
    :cond_3
    move v3, v5

    .line 322
    goto :goto_0

    .line 323
    :cond_4
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .restart local v0       #count:I
    :cond_5
    move v3, v5

    .line 334
    goto :goto_2

    :cond_6
    move v4, v5

    .line 336
    goto :goto_3
.end method


# virtual methods
.method protected closeAnimate(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeAnimate(Landroid/view/View;I)V

    .line 312
    return-void
.end method

.method closeOpenedItems()V
    .locals 5

    .prologue
    .line 666
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 668
    .local v2, start:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 669
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-le v1, v0, :cond_1

    .line 676
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v2           #start:I
    :cond_0
    return-void

    .line 670
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v2       #start:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeAnimate(Landroid/view/View;I)V

    .line 669
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected dismiss(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getFirstVisiblePosition()I

    move-result v1

    .line 361
    .local v1, start:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 362
    .local v0, end:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    sub-int v5, p1, v1

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, view:Landroid/view/View;
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->dismissAnimationRefCount:I

    .line 364
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 365
    invoke-virtual {p0, v2, p1, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    .line 366
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 369
    :goto_0
    return v3

    .line 368
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    new-instance v5, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getCountSelected()I
    .locals 5

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 409
    const-string/jumbo v2, "SwipeListView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "selected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v0

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 404
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getPositionsSelected()Ljava/util/List;
    .locals 3
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
    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 425
    return-object v1

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    return v0
.end method

.method protected handlerPendingDismisses(I)V
    .locals 6
    .parameter "originalHeight"

    .prologue
    .line 987
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 988
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$10;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V

    .line 993
    iget-wide v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    .line 988
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 994
    return-void
.end method

.method protected isChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewMoving()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->listViewMoving:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 605
    new-instance v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    return-object v0
.end method

.method public move(F)V
    .locals 8
    .parameter "deltaX"

    .prologue
    const/high16 v7, -0x3d60

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 886
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onMove(IF)V

    .line 887
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v0

    .line 888
    .local v0, posX:F
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    add-float/2addr v1, v4

    :goto_0
    add-float/2addr v0, v1

    .line 891
    :cond_0
    cmpl-float v1, v0, v6

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_1

    .line 892
    const-string/jumbo v1, "SwipeListView"

    const-string/jumbo v4, "change to right"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    .line 894
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 895
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_6

    .line 896
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :cond_1
    :goto_2
    cmpg-float v1, v0, v6

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_2

    .line 902
    const-string/jumbo v1, "SwipeListView"

    const-string/jumbo v4, "change to left"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    .line 904
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 905
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_8

    .line 906
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 911
    :cond_2
    :goto_4
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v3, :cond_9

    .line 912
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 913
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->parentView:Landroid/view/View;

    const/high16 v2, 0x3f80

    .line 914
    const/high16 v3, 0x3f80

    const/high16 v4, 0x4000

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 913
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 925
    :cond_3
    :goto_5
    return-void

    .line 889
    :cond_4
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    int-to-float v1, v1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_5
    move v1, v3

    .line 893
    goto :goto_1

    .line 898
    :cond_6
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v1, v3

    .line 903
    goto :goto_3

    .line 908
    :cond_8
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 915
    :cond_9
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    if-ne v1, v5, :cond_e

    .line 916
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_a

    cmpl-float v1, p1, v6

    if-lez v1, :cond_a

    const/high16 v1, 0x42a0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_d

    .line 917
    :cond_a
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_b

    cmpg-float v1, p1, v6

    if-gez v1, :cond_b

    cmpl-float v1, v0, v7

    if-gtz v1, :cond_d

    .line 918
    :cond_b
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x42a0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_d

    .line 919
    :cond_c
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    if-nez v1, :cond_3

    cmpl-float v1, p1, v7

    if-lez v1, :cond_3

    .line 920
    :cond_d
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5

    .line 923
    :cond_e
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    invoke-static {v1, p1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->isSwipeEnabled()Z

    move-result v20

    if-nez v20, :cond_0

    .line 684
    const/16 v20, 0x0

    .line 865
    :goto_0
    return v20

    .line 687
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    .line 691
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 865
    :cond_2
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 693
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->paused:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 694
    const/16 v20, 0x0

    goto :goto_0

    .line 696
    :cond_3
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildCount()I

    move-result v7

    .line 699
    .local v7, childCount:I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    .line 700
    .local v12, listViewCoords:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getLocationOnScreen([I)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    aget v21, v12, v21

    sub-int v18, v20, v21

    .line 702
    .local v18, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v12, v21

    sub-int v19, v20, v21

    .line 704
    .local v19, y:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-lt v11, v7, :cond_5

    .line 731
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 732
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 705
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 706
    .local v6, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 711
    .local v8, childPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    if-ltz v20, :cond_6

    const/4 v3, 0x1

    .line 713
    .local v3, allowSwipe:Z
    :goto_4
    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 714
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setParentView(Landroid/view/View;)V

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setFrontView(Landroid/view/View;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downX:F

    .line 718
    move-object/from16 v0, p0

    iput v8, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x0

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 723
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeBackView:I

    move/from16 v20, v0

    if-lez v20, :cond_4

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeBackView:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setBackView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 711
    .end local v3           #allowSwipe:Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 720
    .restart local v3       #allowSwipe:Z
    :cond_7
    const/16 v20, 0x1

    goto :goto_5

    .line 721
    :cond_8
    const/16 v20, 0x1

    goto :goto_6

    .line 704
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 736
    .end local v3           #allowSwipe:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #childCount:I
    .end local v8           #childPosition:I
    .end local v11           #i:I
    .end local v12           #listViewCoords:[I
    .end local v18           #x:I
    .end local v19           #y:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swiping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downX:F

    move/from16 v21, v0

    sub-float v10, v20, v21

    .line 741
    .local v10, deltaX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 744
    .local v16, velocityX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_b

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    .line 746
    const/16 v16, 0x0

    .line 748
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_b

    .line 749
    const/16 v16, 0x0

    .line 752
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 753
    .local v17, velocityY:F
    const/4 v13, 0x0

    .line 754
    .local v13, swap:Z
    const/4 v14, 0x0

    .line 755
    .local v14, swapRight:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->minFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v20, v16

    if-gtz v20, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->maxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_12

    const/high16 v20, 0x4000

    mul-float v20, v20, v17

    cmpg-float v20, v20, v16

    if-gez v20, :cond_12

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_e

    const/4 v14, 0x1

    .line 757
    :goto_7
    const-string/jumbo v20, "SwipeListView"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "swapRight: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " - swipingRight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v14, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 759
    const/4 v13, 0x0

    .line 771
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->frontView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateAnimate(Landroid/view/View;ZZI)V

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swapChoiceState(I)V

    .line 776
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 777
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 778
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downX:F

    .line 784
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swiping:Z

    goto/16 :goto_1

    .line 756
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 760
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_10

    if-eqz v14, :cond_10

    .line 761
    const/4 v13, 0x0

    .line 762
    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_11

    if-nez v14, :cond_11

    .line 763
    const/4 v13, 0x0

    .line 764
    goto/16 :goto_8

    .line 765
    :cond_11
    const/4 v13, 0x1

    .line 767
    goto/16 :goto_8

    :cond_12
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_c

    .line 768
    const/4 v13, 0x1

    .line 769
    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_13

    const/4 v14, 0x1

    :goto_9
    goto/16 :goto_8

    :cond_13
    const/4 v14, 0x0

    goto :goto_9

    .line 789
    .end local v10           #deltaX:F
    .end local v13           #swap:Z
    .end local v14           #swapRight:Z
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->paused:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 796
    .restart local v16       #velocityX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 798
    .restart local v17       #velocityY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downX:F

    move/from16 v21, v0

    sub-float v10, v20, v21

    .line 799
    .restart local v10       #deltaX:F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 801
    .local v9, deltaMode:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    .line 802
    .local v15, swipeMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->changeSwipeMode(I)I

    move-result v5

    .line 803
    .local v5, changeSwipeMode:I
    if-ltz v5, :cond_14

    .line 804
    move v15, v5

    .line 807
    :cond_14
    if-nez v15, :cond_18

    .line 808
    const/4 v9, 0x0

    .line 824
    :cond_15
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->slop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v9, v20

    if-lez v20, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    cmpg-float v20, v17, v16

    if-gez v20, :cond_16

    .line 825
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swiping:Z

    .line 826
    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_1c

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    .line 827
    const-string/jumbo v20, "SwipeListView"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "deltaX: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " - swipingRight: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onStartClose(IZ)V

    .line 830
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 845
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 846
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 848
    .local v4, cancelEvent:Landroid/view/MotionEvent;
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    or-int/lit8 v20, v20, 0x3

    .line 847
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->backView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 855
    .end local v4           #cancelEvent:Landroid/view/MotionEvent;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swiping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    :goto_d
    add-float v10, v10, v20

    .line 859
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->move(F)V

    .line 860
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 809
    :cond_18
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_15

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 811
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v15, v0, :cond_19

    const/16 v20, 0x0

    cmpg-float v20, v10, v20

    if-gez v20, :cond_19

    .line 812
    const/4 v9, 0x0

    .line 813
    goto/16 :goto_a

    :cond_19
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_15

    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_15

    .line 814
    const/4 v9, 0x0

    .line 816
    goto/16 :goto_a

    .line 817
    :cond_1a
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v15, v0, :cond_1b

    const/16 v20, 0x0

    cmpl-float v20, v10, v20

    if-lez v20, :cond_1b

    .line 818
    const/4 v9, 0x0

    .line 819
    goto/16 :goto_a

    :cond_1b
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_15

    const/16 v20, 0x0

    cmpg-float v20, v10, v20

    if-gez v20, :cond_15

    .line 820
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 826
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 832
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 833
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    .line 843
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onStartOpen(IIZ)V

    goto/16 :goto_c

    .line 834
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-nez v20, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 835
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_e

    .line 836
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 837
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_e

    .line 838
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipingRight:Z

    move/from16 v20, v0

    if-nez v20, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 839
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto :goto_e

    .line 841
    :cond_21
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeCurrentAction:I

    goto/16 :goto_e

    .line 857
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->viewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    move/from16 v21, v0

    add-float v20, v20, v21

    goto/16 :goto_d

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected openAnimate(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openAnimate(Landroid/view/View;I)V

    .line 303
    return-void
.end method

.method protected performDismiss(Landroid/view/View;IZ)V
    .locals 6
    .parameter "dismissView"
    .parameter "dismissPosition"
    .parameter "doPendingDismiss"

    .prologue
    const/4 v5, 0x1

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 954
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 956
    .local v2, originalHeight:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 958
    .local v0, animator:Lcom/nineoldandroids/animation/ValueAnimator;
    if-eqz p3, :cond_0

    .line 959
    new-instance v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$8;

    invoke-direct {v3, p0, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$8;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 970
    :cond_0
    new-instance v3, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$9;

    invoke-direct {v3, p0, v1, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$9;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 978
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    new-instance v4, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$PendingDismissData;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    .line 980
    return-void
.end method

.method protected reloadChoiceStateInView(Landroid/view/View;I)V
    .locals 1
    .parameter "frontView"
    .parameter "position"

    .prologue
    .line 380
    invoke-virtual {p0, p2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->isChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 288
    .local v0, count:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-le v1, v0, :cond_1

    .line 294
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 289
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected resetPendingDismisses()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->pendingDismisses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 984
    return-void
.end method

.method protected returnOldActions()V
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->oldSwipeActionRight:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 877
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->oldSwipeActionLeft:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 878
    return-void
.end method

.method public setAnimationTime(J)V
    .locals 2
    .parameter "animationTime"

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 168
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->configShortAnimationTime:J

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->animationTime:J

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 596
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->paused:Z

    .line 597
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLeftOffset(F)V
    .locals 0
    .parameter "leftOffset"

    .prologue
    .line 189
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->leftOffset:F

    .line 190
    return-void
.end method

.method public setRightOffset(F)V
    .locals 0
    .parameter "rightOffset"

    .prologue
    .line 180
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->rightOffset:F

    .line 181
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0
    .parameter "swipeActionLeft"

    .prologue
    .line 243
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionLeft:I

    .line 244
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0
    .parameter "swipeActionRight"

    .prologue
    .line 261
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeActionRight:I

    .line 262
    return-void
.end method

.method public setSwipeClosesAllItemsWhenListMoves(Z)V
    .locals 0
    .parameter "swipeClosesAllItemsWhenListMoves"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z

    .line 199
    return-void
.end method

.method protected setSwipeDrawableChecked(I)V
    .locals 0
    .parameter "swipeDrawableChecked"

    .prologue
    .line 270
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableChecked:I

    .line 271
    return-void
.end method

.method protected setSwipeDrawableUnchecked(I)V
    .locals 0
    .parameter "swipeDrawableUnchecked"

    .prologue
    .line 279
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeDrawableUnchecked:I

    .line 280
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0
    .parameter "swipeMode"

    .prologue
    .line 216
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeMode:I

    .line 217
    return-void
.end method

.method public setSwipeOpenOnLongPress(Z)V
    .locals 0
    .parameter "swipeOpenOnLongPress"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeOpenOnLongPress:Z

    .line 208
    return-void
.end method

.method protected unselectedChoiceStates()V
    .locals 5

    .prologue
    .line 344
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 345
    .local v2, start:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getLastVisiblePosition()I

    move-result v0

    .line 346
    .local v0, end:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onChoiceEnded()V

    .line 353
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->returnOldActions()V

    .line 354
    return-void

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lt v1, v2, :cond_1

    if-gt v1, v0, :cond_1

    .line 348
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeFrontView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->reloadChoiceStateInView(Landroid/view/View;I)V

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->checked:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
