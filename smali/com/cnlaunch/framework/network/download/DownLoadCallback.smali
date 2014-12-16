.class public Lcom/cnlaunch/framework/network/download/DownLoadCallback;
.super Landroid/os/Handler;
.source "DownLoadCallback.java"


# static fields
.field protected static final ADD_MESSAGE:I = 0x1

.field protected static final FAILURE_MESSAGE:I = 0x4

.field protected static final FINISH_MESSAGE:I = 0x5

.field protected static final PROGRESS_MESSAGE:I = 0x2

.field protected static final START_MESSAGE:I = 0x0

.field protected static final STOP_MESSAGE:I = 0x6

.field protected static final SUCCESS_MESSAGE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, response:[Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onStart()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #response:[Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    .line 59
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #response:[Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    .line 64
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onLoading(Ljava/lang/String;II)V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #response:[Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    .line 69
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #response:[Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    .line 74
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #response:[Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    .line 79
    .restart local v0       #response:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_6
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onStop()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "fileName"
    .parameter "isInterrupt"

    .prologue
    .line 27
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .parameter "strMsg"

    .prologue
    .line 39
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 43
    return-void
.end method

.method public onLoading(Ljava/lang/String;II)V
    .locals 0
    .parameter "fileName"
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 31
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 35
    return-void
.end method

.method protected sendAddMessage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "url"
    .parameter "isInterrupt"

    .prologue
    const/4 v2, 0x1

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "strMsg"

    .prologue
    .line 101
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method protected sendFinishMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 113
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method protected sendLoadMessage(Ljava/lang/String;II)V
    .locals 4
    .parameter "url"
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    const/4 v3, 0x2

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method

.method protected sendStopMessage()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method protected sendSuccessMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "path"

    .prologue
    .line 89
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method
