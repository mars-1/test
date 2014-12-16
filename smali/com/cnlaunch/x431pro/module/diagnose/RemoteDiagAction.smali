.class public Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "RemoteDiagAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getRemoteServiceAddress(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    .locals 8
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 25
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->remote_service_address:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 29
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "target_user_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, response:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, json:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 35
    const-class v3, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;

    .line 37
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    :cond_0
    const-string/jumbo v3, "Sanda"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "json="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-object v1
.end method
