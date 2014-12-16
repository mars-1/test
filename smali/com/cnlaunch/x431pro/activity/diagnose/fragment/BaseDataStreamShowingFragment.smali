.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "BaseDataStreamShowingFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;


# static fields
.field public static final KEY_MASK:Ljava/lang/String; = "DataStreamMask"

.field public static final KEY_SHOWING_TYPE:Ljava/lang/String; = "DataStreamShow_Type"

.field public static final KEY_STREAM_COUNT:Ljava/lang/String; = "DataStreamCount"

.field public static final KEY_STREAM_CUR_PAGE:Ljava/lang/String; = "DataStreamCurPage"

.field private static mChanngelChanged:Ljava/lang/Boolean;


# instance fields
.field protected mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

.field protected mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mChanngelChanged:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 14
    return-void
.end method

.method public static isChanngelChanged()Z
    .locals 2

    .prologue
    .line 35
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mChanngelChanged:Ljava/lang/Boolean;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mChanngelChanged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setChanngelChangedStatus(Z)V
    .locals 2
    .parameter "isChanged"

    .prologue
    .line 28
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mChanngelChanged:Ljava/lang/Boolean;

    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mChanngelChanged:Ljava/lang/Boolean;

    .line 28
    monitor-exit v1

    .line 31
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->registerObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z

    .line 44
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    .line 45
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    :try_start_0
    check-cast p1, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .end local p1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    .line 60
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->unregisterObserver(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamObserver;)Z

    .line 61
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 62
    return-void
.end method

.method protected sendDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "message"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "100"

    const-string/jumbo v2, "90"

    .line 79
    const/16 v5, 0xc

    move-object v3, p1

    move-object v4, p2

    .line 78
    invoke-interface/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected updateDataStreamPage(I)V
    .locals 1
    .parameter "newPage"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->mDataStreamPageObserver:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;

    invoke-interface {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamPageObserver;->onDataStreamPageChanged(I)V

    .line 68
    :cond_0
    return-void
.end method
