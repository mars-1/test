.class Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;
.super Ljava/lang/Thread;
.source "NoticeMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunLastOneTask"
.end annotation


# instance fields
.field private bqueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private delayTime:J

.field final synthetic this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->this$0:Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->bqueue:Ljava/util/concurrent/BlockingQueue;

    .line 194
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->start()V

    .line 195
    return-void
.end method

.method private addTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->bqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 226
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->bqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p0

    .line 228
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private runTask()V
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->bqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 233
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 231
    :cond_0
    monitor-exit p0

    .line 237
    return-void

    .line 231
    .end local v0           #r:Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 206
    :cond_0
    :goto_0
    :try_start_0
    iget-wide v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->delayTime:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->delayTime:J

    .line 207
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 207
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    iget-wide v1, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->delayTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->runTask()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "runnable"
    .parameter "time"

    .prologue
    .line 198
    const-wide/16 v0, 0xa

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->delayTime:J

    .line 199
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/Listeners/NoticeMessageHandler$RunLastOneTask;->addTask(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method
