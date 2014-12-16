.class public Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "GoloAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoloAction"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getAllRemoteOrderCount(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    .locals 6
    .parameter "pub_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 198
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->MY_REMOTE_USERS_REQUSET_TOTAL_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 200
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "pub_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;

    .line 208
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteOrderAllCountResponse;
    :cond_0
    return-object v2
.end method

.method public getAttentionedUserInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .locals 13
    .parameter "pub_id"
    .parameter "isReLoad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 368
    sget-object v7, Lcom/cnlaunch/framework/common/KeyConstant;->product_pub_get_attentioned_users:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    .line 371
    .local v3, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v7, "pub_id"

    invoke-virtual {v3, v7, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cnlaunch/framework/common/KeyConstant;->product_pub_get_attentioned_users:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, key:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 377
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u4f7f\u7528\u7f13\u5b58"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    const-wide/16 v7, 0xe10

    invoke-static {v1, v7, v8}, Lcom/cnlaunch/framework/common/CacheManager;->isInvalidCache(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 379
    invoke-static {v1}, Lcom/cnlaunch/framework/common/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;

    .line 380
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "--->\u7f13\u5b58\u6709\u6548 \u4f7f\u7528\u7f13\u5b58\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->getCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 382
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 383
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 384
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u5408\u6cd5 \u8fd4\u56de\u7ed3\u679c"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .line 418
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .local v5, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :goto_0
    return-object v5

    .line 387
    .end local v5           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :cond_0
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u975e\u6cd5 \u91cd\u65b0\u8bf7\u6c42"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v6, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 399
    const-class v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;

    invoke-virtual {p0, v0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;

    .line 401
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u670d\u52a1\u5668\u8bf7\u6c42\u7ed3\u679c\u4e0d\u4e3a\u7a7a"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->getCode()I

    move-result v7

    if-nez v7, :cond_5

    .line 403
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u6709\u6548\u8bf7\u6c42\u7ed3\u679c"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 405
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 406
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u8bf7\u6c42\u7ed3\u679c\u5408\u6cd5  \u5199\u5165\u7f13\u5b58"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-static {v4, v1}, Lcom/cnlaunch/framework/common/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 408
    const-string/jumbo v7, "Sanda"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u5199\u5165\u7f13\u5b58 key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    :goto_2
    move-object v5, v4

    .line 418
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .restart local v5       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    goto :goto_0

    .line 390
    .end local v0           #json:Ljava/lang/String;
    .end local v5           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :cond_2
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u975e\u6cd5 \u91cd\u65b0\u8bf7\u6c42"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 393
    :cond_3
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u5931\u6548  \u91cd\u65b0\u8bf7\u6c42"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 410
    .restart local v0       #json:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    :cond_4
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u8bf7\u6c42\u7ed3\u679c\u975e\u6cd5"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 413
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    :cond_5
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u8bf7\u6c42\u7ed3\u679c\u65e0\u6548"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 416
    :cond_6
    const-string/jumbo v7, "getAttentionedUserInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u8bf7\u6c42\u7ed3\u679c\u5931\u8d25"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getCountList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    .locals 6
    .parameter "client_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->client_get_count_list:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 131
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "client_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;

    .line 138
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    :cond_0
    return-object v2
.end method

.method public getGoloBindInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .locals 13
    .parameter "pub_id"
    .parameter "isReLoad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 224
    sget-object v7, Lcom/cnlaunch/framework/common/KeyConstant;->product_pub_golo_list_base_info:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    .line 227
    .local v3, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v7, "pub_id"

    invoke-virtual {v3, v7, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cnlaunch/framework/common/KeyConstant;->product_pub_golo_list_base_info:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, key:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 234
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u4f7f\u7528\u7f13\u5b58"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const-wide/16 v7, 0xe10

    invoke-static {v1, v7, v8}, Lcom/cnlaunch/framework/common/CacheManager;->isInvalidCache(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    invoke-static {v1}, Lcom/cnlaunch/framework/common/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    .line 237
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "--->\u7f13\u5b58\u6709\u6548 \u53d6\u51fa\u7f13\u5b58"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getCode()I

    move-result v7

    if-nez v7, :cond_0

    .line 239
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 241
    const-string/jumbo v7, "getGoloBindInfo"

    const-string/jumbo v8, "--->\u7f13\u5b58\u5408\u6cd5 \u8fd4\u56de\u7ed3\u679c"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 267
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .local v5, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :goto_0
    return-object v5

    .line 245
    .end local v5           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :cond_0
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u4e3a\u7a7a"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :goto_1
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u91cd\u65b0\u53bb\u670d\u52a1\u5668\u8bf7\u6c42\u6570\u636e"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v6, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    const-class v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    invoke-virtual {p0, v0, v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    .line 258
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u91cd\u65b0\u53bb\u670d\u52a1\u5668\u8bf7\u6c42\u7ed3\u679c\u4e0d\u4e3a\u7a7a"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getCode()I

    move-result v7

    if-nez v7, :cond_1

    .line 260
    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 261
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 262
    invoke-static {v4, v1}, Lcom/cnlaunch/framework/common/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 263
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u6570\u636e\u5408\u6cd5 \u5199\u5165\u7f13\u5b58"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    :cond_1
    move-object v5, v4

    .line 267
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .restart local v5       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    goto :goto_0

    .line 247
    .end local v0           #json:Ljava/lang/String;
    .end local v5           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :cond_2
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u7f13\u5b58\u5931\u6548"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    :cond_3
    const-string/jumbo v7, "getGoloBindInfo"

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "--->\u4e0d\u4f7f\u7528\u7f13\u5b58\u6570\u636e"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getHistory(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    .locals 1
    .parameter "client_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    .locals 1
    .parameter "client_id"
    .parameter "serial_no"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    .locals 6
    .parameter "client_id"
    .parameter "serial_no"
    .parameter "page"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->client_get_history:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 100
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "client_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const-string/jumbo v4, "serial_no"

    invoke-virtual {v1, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-static {p3}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    const-string/jumbo v4, "page"

    invoke-virtual {v1, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-static {p4}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    const-string/jumbo v4, "size"

    invoke-virtual {v1, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    const/4 v2, 0x0

    .line 112
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 114
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    .line 116
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :cond_3
    return-object v2
.end method

.method public getRemoteCarInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    .locals 6
    .parameter "serialNum"
    .parameter "mycarid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->mine_car_query_mine_car_info:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 344
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "serial_no"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, json:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 350
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;

    .line 352
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    :cond_0
    return-object v1
.end method

.method public getRemoteOrderList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    .locals 6
    .parameter "pub_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 430
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->public_diag_list:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 433
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "pub_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 438
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    .line 441
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    :cond_0
    return-object v2
.end method

.method public getRemoteOrderSingleList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    .locals 6
    .parameter "diag_uid"
    .parameter "diag_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 453
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->public_diag_getdiag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 456
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "diag_uid"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string/jumbo v4, "diag_id"

    invoke-virtual {v1, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v2, 0x0

    .line 460
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    .line 465
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    :cond_0
    return-object v2
.end method

.method public getRepairList(Ljava/lang/String;IIII)Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    .locals 10
    .parameter "pub_id"
    .parameter "acc_type"
    .parameter "length"
    .parameter "page"
    .parameter "is_all"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 487
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->public_diag_reserve_list:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, url:Ljava/lang/String;
    const-string/jumbo v4, "GoloAction"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "GoloRepairscheduledResponse url= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 491
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "pub_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v4, "acc_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-nez p5, :cond_0

    .line 494
    const-string/jumbo v4, "length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v4, "p"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    const-string/jumbo v4, "is_all"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;

    .line 504
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    :cond_1
    const-string/jumbo v5, "GoloAction"

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GoloRepairscheduledResponse tostring = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string/jumbo v4, "null"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    return-object v2

    .line 504
    :cond_2
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getSingleGoloBindInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .locals 10
    .parameter "diag_uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 283
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->product_single_pub_golo_list_base_info:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v2

    .line 286
    .local v2, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v5, "diag_uid"

    invoke-virtual {v2, v5, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v4, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 291
    const-class v5, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    invoke-virtual {p0, v0, v5}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;

    .line 293
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    const-string/jumbo v5, "getGoloBindInfo"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "--->\u91cd\u65b0\u53bb\u670d\u52a1\u5668\u8bf7\u6c42\u7ed3\u679c\u4e0d\u4e3a\u7a7a"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getCode()I

    move-result v5

    if-nez v5, :cond_0

    .line 295
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 298
    const-string/jumbo v5, "getGoloBindInfo"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "--->\u6570\u636e\u5408\u6cd5 \u5199\u5165\u7f13\u5b58"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    :cond_0
    return-object v3
.end method

.method public getTargetDetail(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
    .locals 8
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->friend_detail_car_logo:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 611
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "target_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v1, 0x0

    .line 615
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, json:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 617
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;

    .line 619
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/TargetDetailResponse;
    :cond_0
    const-string/jumbo v3, "Sanda"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getTargetDetail="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    return-object v1
.end method

.method public goloDetailInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    .locals 6
    .parameter "pub_id"
    .parameter "serial_no"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->product_pub_golo_detail_info:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    .line 318
    .local v1, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v4, "pub_id"

    invoke-virtual {v1, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v4, "serial_no"

    invoke-virtual {v1, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {p0, v3, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    const-class v4, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;

    .line 326
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfoResponse;
    :cond_0
    return-object v2
.end method

.method public pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    .locals 8
    .parameter "tech_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->pubaccount_pid_byt:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 179
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "tech_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    .line 186
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :cond_0
    const-string/jumbo v3, "Sanda"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u83b7\u53d6\u6280\u5e08\u7684pub_id:Json="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-object v1
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    .locals 6
    .parameter "id"
    .parameter "client_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 153
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->client_read:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 156
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "client_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;

    .line 164
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/ReadResponse;
    :cond_0
    return-object v1
.end method

.method public sendRemoteCancel(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    .locals 6
    .parameter "pub_id"
    .parameter "request_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 540
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->MY_REMOTE_USERS_CANCEL:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 542
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pub_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diag_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 547
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    .line 549
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :cond_0
    return-object v1
.end method

.method public sendRemoteHandle(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    .locals 6
    .parameter "pub_id"
    .parameter "request_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 518
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->MY_REMOTE_USERS_HANDLE:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 520
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pub_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diag_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 525
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    .line 527
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :cond_0
    return-object v1
.end method

.method public sendRemoteProcessing(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    .locals 6
    .parameter "pub_id"
    .parameter "request_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 562
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->MY_REMOTE_USERS_PROCESSING:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 564
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pub_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diag_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    .line 571
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :cond_0
    return-object v1
.end method

.method public sendRemoteReset(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    .locals 6
    .parameter "pub_id"
    .parameter "request_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 584
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->MY_REMOTE_USERS_RESET:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 586
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pub_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "diag_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 590
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 591
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;

    .line 593
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :cond_0
    return-object v1
.end method
