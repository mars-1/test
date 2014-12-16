.class Lorg/jivesoftware/smackx/ping/ServerPingTask;
.super Ljava/lang/Object;
.source "ServerPingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private delta:I

.field private volatile lastSuccessfulPing:J

.field private pingInterval:I

.field private tries:I

.field private weakConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;I)V
    .locals 2
    .parameter "connection"
    .parameter "pingIntervall"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->lastSuccessfulPing:J

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->delta:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->tries:I

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->weakConnection:Ljava/lang/ref/WeakReference;

    .line 38
    iput p2, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    .line 39
    return-void
.end method

.method private sleep()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->sleep(I)V

    .line 119
    return-void
.end method

.method private sleep(I)V
    .locals 3
    .parameter "extraSleepTime"

    .prologue
    .line 104
    iget v1, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    add-int v0, v1, p1

    .line 105
    .local v0, totalSleep:I
    if-lez v0, :cond_0

    .line 107
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getIntInterval()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    return v0
.end method

.method protected getLastSucessfulPing()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->lastSuccessfulPing:J

    return-wide v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 58
    const v7, 0xea60

    invoke-direct {p0, v7}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->sleep(I)V

    .line 61
    :goto_0
    iget v7, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    if-gtz v7, :cond_1

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    iget-object v7, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->weakConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection;

    .line 63
    .local v0, connection:Lorg/jivesoftware/smack/Connection;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    invoke-static {v0}, Lorg/jivesoftware/smackx/ping/PingManager;->getInstaceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ping/PingManager;

    move-result-object v5

    .line 70
    .local v5, pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    const/4 v6, 0x0

    .line 72
    .local v6, res:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v7, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->tries:I

    if-lt v2, v7, :cond_3

    .line 89
    :goto_3
    if-nez v6, :cond_2

    .line 90
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->getPingFailedListeners()Ljava/util/Set;

    move-result-object v4

    .line 91
    .local v4, pingFailedListeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smackx/ping/PingFailedListener;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 96
    .end local v2           #i:I
    .end local v4           #pingFailedListeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smackx/ping/PingFailedListener;>;"
    .end local v5           #pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    .end local v6           #res:Z
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->sleep()V

    goto :goto_0

    .line 73
    .restart local v2       #i:I
    .restart local v5       #pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    .restart local v6       #res:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 75
    :try_start_0
    iget v7, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->delta:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_4
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer()Z

    move-result v6

    .line 84
    if-eqz v6, :cond_5

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->lastSuccessfulPing:J

    goto :goto_3

    .line 76
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 72
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    .restart local v4       #pingFailedListeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smackx/ping/PingFailedListener;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 92
    .local v3, l:Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v3}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    goto :goto_4
.end method

.method protected setDone()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    .line 43
    return-void
.end method

.method protected setPingInterval(I)V
    .locals 0
    .parameter "pingIntervall"

    .prologue
    .line 46
    iput p1, p0, Lorg/jivesoftware/smackx/ping/ServerPingTask;->pingInterval:I

    .line 47
    return-void
.end method
