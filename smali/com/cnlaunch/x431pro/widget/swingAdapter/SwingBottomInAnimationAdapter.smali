.class public Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;
.super Lcom/cnlaunch/x431pro/widget/swingAdapter/SingleAnimationAdapter;
.source "SwingBottomInAnimationAdapter.java"


# static fields
.field private static final TRANSLATION_Y:Ljava/lang/String; = "translationY"


# instance fields
.field private final mAnimationDelayMillis:J

.field private final mAnimationDurationMillis:J


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 6
    .parameter "baseAdapter"

    .prologue
    .line 36
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;J)V
    .locals 6
    .parameter "baseAdapter"
    .parameter "animationDelayMillis"

    .prologue
    .line 40
    const-wide/16 v4, 0x12c

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;JJ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;JJ)V
    .locals 0
    .parameter "baseAdapter"
    .parameter "animationDelayMillis"
    .parameter "animationDurationMillis"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/SingleAnimationAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    .line 45
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->mAnimationDelayMillis:J

    .line 46
    iput-wide p4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->mAnimationDurationMillis:J

    .line 47
    return-void
.end method


# virtual methods
.method protected getAnimationDelayMillis()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->mAnimationDelayMillis:J

    return-wide v0
.end method

.method protected getAnimationDurationMillis()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/SwingBottomInAnimationAdapter;->mAnimationDurationMillis:J

    return-wide v0
.end method

.method protected getAnimator(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/nineoldandroids/animation/Animator;
    .locals 2
    .parameter "parent"
    .parameter "view"

    .prologue
    .line 62
    const-string/jumbo v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p2, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfat 0x43t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
