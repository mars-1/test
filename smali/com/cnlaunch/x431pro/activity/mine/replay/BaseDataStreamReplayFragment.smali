.class public abstract Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "BaseDataStreamReplayFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;


# static fields
.field public static final KEY_MASK:Ljava/lang/String; = "DataStreamMask"

.field public static final KEY_SHOWING_TYPE:Ljava/lang/String; = "DataStreamShow_Type"

.field public static final KEY_STREAM_COUNT:Ljava/lang/String; = "DataStreamCount"

.field public static final KEY_STREAM_CUR_PAGE:Ljava/lang/String; = "DataStreamCurPage"


# instance fields
.field protected mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

.field protected mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->registerObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z

    .line 28
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    .line 29
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    :try_start_0
    check-cast p1, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .end local p1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    .line 44
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->unregisterObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z

    .line 45
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 46
    return-void
.end method

.method protected sendDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "message"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "100"

    const-string/jumbo v2, "90"

    const/16 v5, 0xc

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    :cond_0
    return-void
.end method

.method protected updateDataStreamPage(I)V
    .locals 1
    .parameter "newPage"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;->onDataStreamPageChanged(I)V

    .line 52
    :cond_0
    return-void
.end method
