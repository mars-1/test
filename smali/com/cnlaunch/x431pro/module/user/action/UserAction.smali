.class public Lcom/cnlaunch/x431pro/module/user/action/UserAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "UserAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    .locals 6
    .parameter "lan"
    .parameter "target_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 358
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_base_info_car_logo:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 361
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "target_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 367
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    .line 371
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    :cond_1
    const-string/jumbo v3, "Sanda"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getBaseInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v1
.end method

.method public getCityList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    .locals 6
    .parameter "lan"
    .parameter "pcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 630
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_city:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 633
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pcode"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 639
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    .line 641
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    :cond_0
    return-object v1
.end method

.method public getConf()Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 545
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_common:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;

    .line 553
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    :cond_0
    return-object v1
.end method

.method public getContact()Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 455
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_contact:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;

    .line 463
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    :cond_0
    return-object v1
.end method

.method public getCountryList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .locals 8
    .parameter "lan"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 298
    sget-object v6, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_country_list:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 301
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v7, "lan"

    invoke-virtual {v6, v7, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCacheKey(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, key:Ljava/lang/String;
    const-wide/32 v6, 0x278d00

    invoke-static {v1, v6, v7}, Lcom/cnlaunch/framework/common/CacheManager;->isInvalidCache(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    invoke-static {v1}, Lcom/cnlaunch/framework/common/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 309
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 310
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 311
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move-object v4, v3

    .line 328
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .local v4, response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    :goto_0
    return-object v4

    .line 317
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    :cond_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v6, v5, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 319
    const-class v6, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    invoke-virtual {p0, v0, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 321
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 322
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 323
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 324
    invoke-static {v3, v1}, Lcom/cnlaunch/framework/common/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    :cond_1
    move-object v4, v3

    .line 328
    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    goto :goto_0
.end method

.method public getHobby()Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 573
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_rand_hobby:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 575
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public getPriconf()Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 503
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_priconf:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 509
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;

    .line 511
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    :cond_0
    return-object v1
.end method

.method public getProvinceList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    .locals 6
    .parameter "lan"
    .parameter "ncode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_province:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 608
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "ncode"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    .line 616
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    :cond_0
    return-object v1
.end method

.method public getRandHobby()Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_hobby:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 565
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    .locals 5
    .parameter "login_key"
    .parameter "password"
    .parameter "time"
    .parameter "type"
    .parameter "device_token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->login:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 113
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "login_key"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "device_token"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    .line 124
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    :cond_0
    return-object v1
.end method

.method public logout()Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->logout:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 341
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public modifyPassWord(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "oldPwd"
    .parameter "newPwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->userinfo_set_password:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 283
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pw"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "chpw"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public modifyPhoneNumber(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "phonenumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 655
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->userinfo_update_user:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 657
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    .locals 5
    .parameter "nation_id"
    .parameter "loginKey"
    .parameter "verify_code"
    .parameter "password"
    .parameter "nick_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 147
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 158
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :cond_0
    return-object v1
.end method

.method public regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    .locals 5
    .parameter "nation_id"
    .parameter "loginKey"
    .parameter "verify_code"
    .parameter "password"
    .parameter "app_id"
    .parameter "nick_name"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 183
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, p7}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 196
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :cond_0
    return-object v1
.end method

.method public regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    .locals 6
    .parameter "nation_id"
    .parameter "loginKey"
    .parameter "verify_code"
    .parameter "password"
    .parameter "app_id"
    .parameter "nick_name"
    .parameter "email"
    .parameter "reg_source"
    .parameter "zipcode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 226
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, p7}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "reg_source"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "zipcode"

    invoke-virtual {v3, v4, p9}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 240
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :cond_0
    return-object v1
.end method

.method public sendClientVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    .locals 7
    .parameter "serialNo"
    .parameter "softType"
    .parameter "softName"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->send_Client_Version:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, url:Ljava/lang/String;
    const-string/jumbo v1, "sendClientVersion"

    .line 681
    .local v1, methodName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 683
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 684
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "softType"

    invoke-virtual {v4, v5, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 685
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "softName"

    invoke-virtual {v4, v5, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 686
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "verson"

    invoke-virtual {v4, v5, p4}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 688
    const/4 v2, 0x0

    .line 690
    .local v2, response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 691
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 692
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 693
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v4, :cond_0

    .line 694
    const-class v4, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_0
    return-object v2

    .line 696
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 698
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 699
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "ncode"
    .parameter "pcode"
    .parameter "ccode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 415
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_area:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 418
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "ncode"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pcode"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "ccode"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public setBase(Lcom/cnlaunch/x431pro/module/user/model/UserParam;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 4
    .parameter "userbase"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 385
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 388
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "email"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "mobile"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "vcode"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getVcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sex"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getSex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "uname"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getUname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "identity_tag"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getIdentity_tag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "lang"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public setConf(Lcom/cnlaunch/x431pro/module/user/model/ConfParam;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 4
    .parameter "confinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_conf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 525
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "is_verify"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getIs_verify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "find_by_tel"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getFind_by_tel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "fontsize"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getFontsize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "is_shock"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getIs_shock()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "open_space"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getOpen_space()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "recommend"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getRecommend()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sound"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "visible"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getVisible()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "allow_vmt_find"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getAllow_vmt_find()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public setExt(Lcom/cnlaunch/x431pro/module/user/model/ExtParam;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 4
    .parameter "extinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_ext:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 487
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "qq"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getQq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "weibo"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getWeibo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "facebook"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getFacebook()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "twitter"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getTwitter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "hobby"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getHobby()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public setSex(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "sex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 590
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sex"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public setUserInfo(Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 5
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 715
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 718
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 722
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 728
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "identity_tag"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public unbindEmail()Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 443
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_unbind_email:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 445
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public unbindTel()Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_unbind_tel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 433
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public verifyReqConfirmCode(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "req_info"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_verify_code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 87
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req_info"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "verify_code"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "req_info"
    .parameter "lan"
    .parameter "isres"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_req_send_code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 75
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req_info"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "lan"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "isres"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method

.method public verifyResetPass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "req"
    .parameter "pass"
    .parameter "confirm_pass"
    .parameter "verify_code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_reset_pass:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 261
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pass"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "confirm_pass"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "verify_code"

    invoke-virtual {v1, v2, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method
