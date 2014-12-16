.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;
.super Ljava/lang/Object;
.source "DataStreamManager.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataStreamManager"

.field private static sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;


# instance fields
.field private data_type:Ljava/lang/String;

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
    .line 41
    .local p1, dataStream:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mRequestNewData:Z

    .line 42
    sput-object p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    .line 44
    iput-wide p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 45
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
    .line 113
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->needReset(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 120
    .end local v0           #i:I
    :cond_0
    return-void

    .line 117
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->sInstance:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

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

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, isValid:Z
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mRequestNewData:Z

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mMatchCondition:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mMatchCondition:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string/jumbo v1, "DataStreamManager"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Change DS Page title is the same"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v0, 0x0

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 106
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mRequestNewData:Z

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 172
    :goto_0
    return v1

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 137
    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 142
    const-string/jumbo v1, "DataStreamManager"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "The mDataStream data size is 0 !!!"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_5

    .line 146
    const-string/jumbo v1, "DataStreamManager"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "The data size is not the same!!!"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 147
    goto :goto_0

    .line 149
    :cond_5
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 150
    const-string/jumbo v1, "DataStreamManager"

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "The mDataStream.get(0) size is 0!!!"

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 151
    goto :goto_0

    .line 154
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-le v1, v4, :cond_7

    move v1, v3

    .line 155
    goto :goto_0

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->data_type:Ljava/lang/String;

    const-string/jumbo v4, "DATASTREAM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    .end local v0           #i:I
    :cond_8
    move v1, v3

    .line 172
    goto/16 :goto_0

    .line 159
    .restart local v0       #i:I
    :cond_9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move v1, v2

    .line 162
    goto/16 :goto_0

    .line 158
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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
    .line 76
    .local p1, dsItem:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v3

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->isValidDataStream(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mLatestData:Ljava/util/List;

    .line 82
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->ckeckData(Ljava/util/List;)V

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->notifyDataStreamChanged()V

    .line 92
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 76
    .end local v0           #i:I
    :cond_0
    monitor-exit v3

    .line 95
    return-void

    .line 84
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 85
    .local v1, singleStreamData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getMaxGraphFPSNum()I

    move-result v4

    if-le v2, v4, :cond_2

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
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
    .line 196
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mLatestData:Ljava/util/List;

    .line 196
    monitor-exit v1

    .line 202
    return-void

    .line 196
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
    .line 242
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStreamPage:I

    return v0
.end method

.method protected innerNotifyDataStreamChanged()V
    .locals 7

    .prologue
    .line 65
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->isChanngelChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->setChanngelChangedStatus(Z)V

    .line 65
    :cond_0
    monitor-exit v2

    .line 73
    return-void

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;

    .line 67
    .local v0, observer:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mLatestData:Ljava/util/List;

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;->updateDataStream(JLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 65
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
    .line 238
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStreamPage:I

    .line 239
    return-void
.end method

.method public declared-synchronized registerObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z
    .locals 4
    .parameter "observer"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mLatestData:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;->updateDataStream(JLjava/util/List;Ljava/util/List;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 55
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mRequestNewData:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mRequestNewData:Z

    .line 209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->resetData()V

    .line 210
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
    .line 214
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    monitor-exit v3

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 222
    .local v1, oldItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mMatchCondition:Ljava/lang/String;

    .line 225
    .end local v1           #oldItem:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mDataStream:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 231
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mTimes:J

    .line 232
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mLatestData:Ljava/util/List;

    .line 214
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 225
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 226
    .local v0, item:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setData_type(Ljava/lang/String;)V
    .locals 0
    .parameter "data_type"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->data_type:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public declared-synchronized unregisterObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->mObservers:Ljava/util/List;

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
