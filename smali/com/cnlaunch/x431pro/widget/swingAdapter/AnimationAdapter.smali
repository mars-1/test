.class public abstract Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;
.super Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;
.source "AnimationAdapter.java"


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field protected static final DEFAULTANIMATIONDELAYMILLIS:J = 0x64L

.field protected static final DEFAULTANIMATIONDURATIONMILLIS:J = 0x12cL

.field private static final INITIALDELAYMILLIS:J = 0x96L


# instance fields
.field private mAnimationDelayMillis:J

.field private mAnimationDurationMillis:J

.field private mAnimationStartMillis:J

.field private final mAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAnimatedPosition:I

.field private mHasParentAnimationAdapter:Z

.field private mInitialDelayMillis:J

.field private mLastAnimatedPosition:I

.field private mShouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 4
    .parameter "baseAdapter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;-><init>(Landroid/widget/BaseAdapter;)V

    .line 48
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    .line 50
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mInitialDelayMillis:J

    .line 51
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDelayMillis:J

    .line 52
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDurationMillis:J

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationStartMillis:J

    .line 59
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    .line 60
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    .line 62
    instance-of v0, p1, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    .end local p1
    invoke-virtual {p1, v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->setHasParentAnimationAdapter(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method private animateView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8
    .parameter "parent"
    .parameter "view"

    .prologue
    .line 163
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationStartMillis:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationStartMillis:J

    .line 167
    :cond_0
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 170
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v4, v4, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v4, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v2

    .line 175
    .local v2, childAnimators:[Lcom/nineoldandroids/animation/Animator;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v1

    .line 176
    .local v1, animators:[Lcom/nineoldandroids/animation/Animator;
    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 178
    .local v0, alphaAnimator:Lcom/nineoldandroids/animation/Animator;
    new-instance v3, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 179
    .local v3, set:Lcom/nineoldandroids/animation/AnimatorSet;
    invoke-direct {p0, v2, v1, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->concatAnimators([Lcom/nineoldandroids/animation/Animator;[Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/animation/Animator;)[Lcom/nineoldandroids/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 180
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->calculateAnimationDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 181
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimationDurationMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 182
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 184
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 173
    .end local v0           #alphaAnimator:Lcom/nineoldandroids/animation/Animator;
    .end local v1           #animators:[Lcom/nineoldandroids/animation/Animator;
    .end local v2           #childAnimators:[Lcom/nineoldandroids/animation/Animator;
    .end local v3           #set:Lcom/nineoldandroids/animation/AnimatorSet;
    :cond_1
    const/4 v4, 0x0

    new-array v2, v4, [Lcom/nineoldandroids/animation/Animator;

    .restart local v2       #childAnimators:[Lcom/nineoldandroids/animation/Animator;
    goto :goto_0

    .line 176
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/GridView;

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 152
    .local v0, isMeasuringGridViewItem:Z
    :goto_0
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    if-le p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 153
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 154
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    .line 157
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->animateView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 158
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    .line 160
    :cond_1
    return-void

    .line 150
    .end local v0           #isMeasuringGridViewItem:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateAnimationDelay()J
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 209
    .local v5, lastVisiblePosition:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    .line 211
    .local v4, firstVisiblePosition:I
    sub-int v7, v5, v4

    .line 212
    .local v7, numberOfItemsOnScreen:I
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    sub-int v6, v8, v9

    .line 214
    .local v6, numberOfAnimatedItems:I
    add-int/lit8 v8, v7, 0x1

    if-ge v8, v6, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v0

    .line 217
    .local v0, delay:J
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/GridView;

    if-eqz v8, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v9

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getNumColumns()I

    move-result v8

    rem-int v8, v11, v8

    int-to-long v11, v8

    mul-long v8, v9, v11

    add-long/2addr v0, v8

    .line 224
    :cond_0
    :goto_0
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    return-wide v8

    .line 221
    .end local v0           #delay:J
    :cond_1
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAnimationDelayMillis()J

    move-result-wide v10

    mul-long v2, v8, v10

    .line 222
    .local v2, delaySinceStart:J
    iget-wide v8, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationStartMillis:J

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getInitialDelayMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    add-long/2addr v8, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v8, v10

    .restart local v0       #delay:J
    goto :goto_0
.end method

.method private cancelExistingAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "convertView"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 142
    .local v1, hashCode:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    .line 143
    .local v0, animator:Lcom/nineoldandroids/animation/Animator;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Animator;->end()V

    .line 145
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private concatAnimators([Lcom/nineoldandroids/animation/Animator;[Lcom/nineoldandroids/animation/Animator;Lcom/nineoldandroids/animation/Animator;)[Lcom/nineoldandroids/animation/Animator;
    .locals 5
    .parameter "childAnimators"
    .parameter "animators"
    .parameter "alphaAnimator"

    .prologue
    .line 188
    array-length v3, p1

    array-length v4, p2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Lcom/nineoldandroids/animation/Animator;

    .line 191
    .local v0, allAnimators:[Lcom/nineoldandroids/animation/Animator;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_0

    .line 195
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 200
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-object p3, v0, v3

    .line 201
    return-object v0

    .line 192
    :cond_0
    aget-object v3, p2, v2

    aput-object v3, v0, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_1
    aget-object v1, p1, v3

    .line 196
    .local v1, childAnimator:Lcom/nineoldandroids/animation/Animator;
    aput-object v1, v0, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getAnimationDelayMillis()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDelayMillis:J

    return-wide v0
.end method

.method protected getAnimationDurationMillis()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDurationMillis:J

    return-wide v0
.end method

.method public abstract getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/nineoldandroids/animation/Animator;
.end method

.method protected getInitialDelayMillis()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mInitialDelayMillis:J

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mHasParentAnimationAdapter:Z

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Call setListView() on this AnimationAdapter before setAdapter()!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_0
    if-eqz p2, :cond_1

    .line 128
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->cancelExistingAnimation(Landroid/view/View;)V

    .line 132
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/BaseAdapterDecorator;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, itemView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mHasParentAnimationAdapter:Z

    if-nez v1, :cond_2

    .line 135
    invoke-direct {p0, p1, v0, p3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->animateViewIfNecessary(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 137
    :cond_2
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 74
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    .line 75
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationStartMillis:J

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    .line 79
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->reset()V

    .line 82
    :cond_0
    return-void
.end method

.method public setAnimationDelayMillis(J)V
    .locals 0
    .parameter "delayMillis"

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDelayMillis:J

    .line 266
    return-void
.end method

.method public setAnimationDurationMillis(J)V
    .locals 0
    .parameter "durationMillis"

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mAnimationDurationMillis:J

    .line 282
    return-void
.end method

.method public setHasParentAnimationAdapter(Z)V
    .locals 0
    .parameter "hasParentAnimationAdapter"

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mHasParentAnimationAdapter:Z

    .line 235
    return-void
.end method

.method public setInitialDelayMillis(J)V
    .locals 0
    .parameter "delayMillis"

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mInitialDelayMillis:J

    .line 250
    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0
    .parameter "shouldAnimate"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    .line 90
    return-void
.end method

.method public setShouldAnimateFromPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    .line 100
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    .line 101
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    .line 102
    return-void
.end method

.method public setShouldAnimateNotVisible()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call setListView() on this AnimationAdapter before setShouldAnimateNotVisible()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mShouldAnimate:Z

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mFirstAnimatedPosition:I

    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/AnimationAdapter;->mLastAnimatedPosition:I

    .line 118
    return-void
.end method
