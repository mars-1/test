.class public Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private bean:Lcom/cnlaunch/framework/network/async/DownLoad;

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/framework/network/async/DownLoad;Landroid/content/Context;)V
    .locals 1
    .parameter "bean"
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const-class v0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->tag:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    .line 38
    iput-object p1, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    .line 39
    iput-object p2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "params"

    .prologue
    const/16 v4, -0x12c

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/async/DownLoad;->getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v3, "BaseAsyncTask listener is not null."

    invoke-direct {v2, v3}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    instance-of v2, v0, Lcom/cnlaunch/framework/network/http/HttpException;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    const/16 v3, -0xc8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/async/DownLoad;->setState(I)V

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->setResult(Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 64
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    iget-boolean v3, v3, Lcom/cnlaunch/framework/network/async/DownLoad;->isCheckNetwork:Z

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->isNetworkConnected(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/async/DownLoad;->getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/async/DownLoad;->getRequestCode()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/cnlaunch/framework/network/async/OnDataListener;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, result:Ljava/lang/Object;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/async/DownLoad;->setState(I)V

    .line 67
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/framework/network/async/DownLoad;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .end local v1           #result:Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    goto :goto_1

    .line 69
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    const/16 v3, -0x190

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/async/DownLoad;->setState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 76
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/framework/network/async/DownLoad;->setState(I)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->bean:Lcom/cnlaunch/framework/network/async/DownLoad;

    const/16 v3, -0x3e7

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/network/async/DownLoad;->setState(I)V

    goto :goto_0
.end method

.method public isNetworkConnected(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "isCheckNetwork"

    .prologue
    const/4 v2, 0x1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 52
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/framework/network/async/DownLoad;

    .line 92
    .local v0, bean:Lcom/cnlaunch/framework/network/async/DownLoad;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 106
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getRequestCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getState()I

    move-result v3

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/async/OnDataListener;->onFailure(IILjava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 95
    :sswitch_0
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getRequestCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/cnlaunch/framework/network/async/OnDataListener;->onSuccess(ILjava/lang/Object;)V

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getListener()Lcom/cnlaunch/framework/network/async/OnDataListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getRequestCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getState()I

    move-result v3

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/DownLoad;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/cnlaunch/framework/network/async/OnDataListener;->onFailure(IILjava/lang/Object;)V

    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_1
        -0xc8 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
