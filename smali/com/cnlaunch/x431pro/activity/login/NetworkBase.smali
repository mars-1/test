.class public Lcom/cnlaunch/x431pro/activity/login/NetworkBase;
.super Ljava/lang/Object;
.source "NetworkBase.java"

# interfaces
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# instance fields
.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field protected mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->tag:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 31
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest()V

    .line 44
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 40
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const v1, 0x7f0704de

    .line 58
    sparse-switch p2, :sswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 61
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0704dd

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 65
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 69
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 54
    return-void
.end method

.method public request(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/NetworkBase;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 36
    return-void
.end method
