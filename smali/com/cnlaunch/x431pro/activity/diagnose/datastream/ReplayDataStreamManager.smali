.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;
.super Ljava/lang/Object;
.source "ReplayDataStreamManager.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataStreamManager"

.field private static sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;


# instance fields
.field protected mDataStream:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataStreamPage:I

.field protected mLatestData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchCondition:Ljava/lang/String;

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestNewData:Z

.field protected mTimes:J


# direct methods
.method protected constructor <init>(Ljava/util/List;J)V
    .locals 2
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, dataStream:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mRequestNewData:Z

    .line 34
    sput-object p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    .line 36
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 37
    return-void
.end method

.method private ckeckData(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->needReset(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 109
    .end local v0           #i:I
    :cond_0
    return-void

    .line 106
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    return-object v0
.end method

.method private isValidDataStream(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v4, 0x0

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, isValid:Z
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mRequestNewData:Z

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mMatchCondition:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mMatchCondition:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string/jumbo v1, "DataStreamManager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Change DS Page title is the same"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 95
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mRequestNewData:Z

    goto :goto_0
.end method

.method private needReset(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "DataStreamManager"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "The mDataStream data size is 0 !!!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 141
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 127
    const-string/jumbo v0, "DataStreamManager"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "The data size is not the same!!!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    const-string/jumbo v0, "DataStreamManager"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "The mDataStream.get(0) size is 0!!!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    const-string/jumbo v0, "DataStreamManager"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "The data title is not the same of the old data!!!"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const-string/jumbo v3, "DataStreamManager"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "dsItem.get(0).getTitle() = "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", mDataStream.get(0).get(0).getTitle()"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 138
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 141
    goto/16 :goto_0
.end method


# virtual methods
.method public addDataStreamItem(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v3

    .line 66
    :try_start_0
    const-string/jumbo v2, "DataStreamManager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Change DS Page addDataStreamItem <---"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->isValidDataStream(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mLatestData:Ljava/util/List;

    .line 71
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->ckeckData(Ljava/util/List;)V

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->notifyDataStreamChanged()V

    .line 81
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 65
    .end local v0           #i:I
    :cond_0
    monitor-exit v3

    .line 84
    return-void

    .line 73
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .local v1, singleStreamData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0           #i:I
    .end local v1           #singleStreamData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mLatestData:Ljava/util/List;

    .line 165
    monitor-exit v1

    .line 171
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDataStreamPage()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStreamPage:I

    return v0
.end method

.method protected innerNotifyDataStreamChanged()V
    .locals 7

    .prologue
    .line 57
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    monitor-exit v2

    .line 62
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;

    .line 59
    .local v0, observer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mLatestData:Ljava/util/List;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;->updateDataStream(JLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 57
    .end local v0           #observer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract notifyDataStreamChanged()V
.end method

.method public onDataStreamPageChanged(I)V
    .locals 0
    .parameter "newPage"

    .prologue
    .line 199
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStreamPage:I

    .line 200
    return-void
.end method

.method public declared-synchronized registerObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z
    .locals 4
    .parameter "observer"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mLatestData:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;->updateDataStream(JLjava/util/List;Ljava/util/List;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 47
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 174
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mRequestNewData:Z

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mRequestNewData:Z

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->resetData()V

    .line 179
    const-string/jumbo v0, "DataStreamManager"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Change DS Page resetData --->"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public resetData()V
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 186
    .local v1, oldItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 189
    .end local v1           #oldItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mTimes:J

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mLatestData:Ljava/util/List;

    .line 183
    monitor-exit v3

    .line 195
    return-void

    .line 189
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 190
    .local v0, item:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 183
    .end local v0           #item:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized unregisterObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
