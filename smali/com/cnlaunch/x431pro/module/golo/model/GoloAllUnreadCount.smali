.class public Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
.super Lcom/cnlaunch/x431pro/common/UnreadCount;
.source "GoloAllUnreadCount.java"

# interfaces
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;,
        Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;,
        Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$RemoteRunnable;,
        Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$TipRunnable;
    }
.end annotation


# static fields
.field private static final REQ_TYPE_ALL_COUNT:I = 0x3

.field private static final REQ_TYPE_DATA_REMOTE_ORDER:I = 0x2

.field private static final REQ_TYPE_DATA_TIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GoloAllUnreadCount"

.field private static remoteRunnable:Ljava/lang/Runnable;

.field private static tipRunnable:Ljava/lang/Runnable;


# instance fields
.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field private mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

.field private mHandler:Landroid/os/Handler;

.field private newMsgCount:I

.field private orderObserver:Ljava/util/Observer;

.field private remoteCount:I

.field private tipCount:I

.field private tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/common/UnreadCount;-><init>()V

    .line 164
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$1;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    .line 196
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$2;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->orderObserver:Ljava/util/Observer;

    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 47
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getSqlUnreadCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    return v0
.end method

.method static synthetic access$5()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    sput-object p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$8()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    sput-object p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getAllTipCount()I
    .locals 9

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 101
    .local v4, result:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "user_id"

    invoke-virtual {v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, cc:Ljava/lang/String;
    const/4 v3, 0x0

    .line 104
    .local v3, historyRes:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :try_start_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v6, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 108
    :goto_0
    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v1

    .line 110
    .local v1, data:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getUnreadsize()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, size:Ljava/lang/String;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 117
    .end local v1           #data:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;
    .end local v5           #size:Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "GoloAllUnreadCount"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tipCount:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v4

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOrderCount()I
    .locals 8

    .prologue
    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, result:I
    const/4 v2, 0x0

    .line 125
    .local v2, orderCountRes:Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "USER_PUBLIC_ID"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, public_id:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getAllRemoteOrderCount(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v3           #public_id:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;->getData()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, data:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 136
    .end local v0           #data:Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "GoloAllUnreadCount"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "remoteCount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v4

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSqlUnreadCount()I
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, result:I
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatManager;->getAllUnreadMsg()Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    const-string/jumbo v2, "GoloAllUnreadCount"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSqlUnreadCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1
.end method


# virtual methods
.method public clearAllCount()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    .line 264
    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    .line 265
    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    .line 266
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    iget v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    iget v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;->onChange(Ljava/lang/Object;)V

    .line 269
    :cond_0
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    iget v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    iget v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;->onChange(Ljava/lang/Object;)V

    .line 232
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getOrderCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getAllTipCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getSqlUnreadCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->newMsgCount:I

    .line 220
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getOrderCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->remoteCount:I

    .line 221
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->getAllTipCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipCount:I

    .line 222
    const-string/jumbo v0, "GoloAllUnreadCount"

    const-string/jumbo v1, "REQ_TYPE_ALL_COUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCount()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 259
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 242
    packed-switch p2, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    const v1, 0x7f0704df

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch -0x190
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 238
    return-void
.end method

.method public register()V
    .locals 5

    .prologue
    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->addListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V

    .line 53
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->orderObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->addObserver(Ljava/util/Observer;)V

    .line 54
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;

    const-string/jumbo v1, "GoloAllUnreadCountMessageChange"

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Ljava/lang/String;)V

    .line 55
    .local v0, mMessageChangeHandler:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;->start()V

    .line 56
    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageContentObserver;-><init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContentObserver:Landroid/database/ContentObserver;

    .line 57
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    return-void
.end method

.method public setChangeCallback(Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    .line 78
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->removeListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V

    .line 67
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->tipListener:Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->orderObserver:Ljava/util/Observer;

    if-eqz v0, :cond_2

    .line 70
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->orderObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 71
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->orderObserver:Ljava/util/Observer;

    .line 73
    :cond_2
    return-void
.end method
