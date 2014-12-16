.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;
.super Ljava/lang/Object;
.source "SoundPullEventListener.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaPlayer:Landroid/media/MediaPlayer;

.field private final mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method private playSound(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 85
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public addSoundEvent(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;I)V
    .locals 2
    .parameter
    .parameter "resId"

    .prologue
    .line 66
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    .local p1, event:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public clearSounds()V
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 74
    return-void
.end method

.method public getCurrentMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mCurrentMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public final onPullEvent(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<TV;>;",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener<TV;>;"
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<TV;>;"
    .local p2, event:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;"
    .local p3, direction:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 48
    .local v0, soundResIdObj:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/extras/SoundPullEventListener;->playSound(I)V

    .line 51
    :cond_0
    return-void
.end method
