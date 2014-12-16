.class public Lcom/cnlaunch/x431pro/widget/polites/Animator;
.super Ljava/lang/Thread;
.source "Animator.java"


# instance fields
.field private active:Z

.field private animation:Lcom/cnlaunch/x431pro/widget/polites/Animation;

.field private lastTime:J

.field private running:Z

.field private view:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "threadName"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 27
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->running:Z

    .line 28
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->lastTime:J

    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->view:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized activate()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->lastTime:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    .line 95
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->running:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play(Lcom/cnlaunch/x431pro/widget/polites/Animation;)V
    .locals 1
    .parameter "transformer"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->cancel()V

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->animation:Lcom/cnlaunch/x431pro/widget/polites/Animation;

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/polites/Animator;->activate()V

    .line 85
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 39
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->running:Z

    .line 41
    :goto_0
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->running:Z

    if-nez v3, :cond_2

    .line 70
    return-void

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    .local v1, time:J
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->animation:Lcom/cnlaunch/x431pro/widget/polites/Animation;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->view:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->lastTime:J

    sub-long v5, v1, v5

    invoke-interface {v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/polites/Animation;->update(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    .line 46
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->view:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->redraw()V

    .line 47
    iput-wide v1, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->lastTime:J

    .line 49
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    if-nez v3, :cond_5

    .line 43
    .end local v1           #time:J
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->animation:Lcom/cnlaunch/x431pro/widget/polites/Animation;

    if-nez v3, :cond_0

    .line 61
    :cond_3
    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 64
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 51
    .restart local v1       #time:J
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->view:Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;

    const-wide/16 v4, 0x20

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->waitForDraw(J)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ignore:Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/Animator;->active:Z

    goto :goto_1

    .line 66
    .end local v0           #ignore:Ljava/lang/InterruptedException;
    .end local v1           #time:J
    :catch_1
    move-exception v3

    goto :goto_3
.end method
