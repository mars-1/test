.class public Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;
.source "X431ReplayDataStreamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager$NotifyHandler;
    }
.end annotation


# static fields
.field private static final MSG_NOTIFY_DATA_STREAM_CHANGED:I = 0x1


# instance fields
.field private mNotifyHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 1
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
    .line 40
    .local p1, dataStream:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;-><init>(Ljava/util/List;J)V

    .line 41
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager$NotifyHandler;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager$NotifyHandler;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;->mNotifyHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method notifyDataStreamChanged()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;->mNotifyHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;->mNotifyHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 51
    return-void
.end method
