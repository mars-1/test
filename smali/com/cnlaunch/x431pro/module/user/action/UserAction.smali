.class public Lcom/cnlaunch/x431pro/module/user/action/UserAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "UserAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 58
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
    .line 412
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_base_info_car_logo:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 415
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p2, :cond_0

    .line 417
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "target_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    const/4 v1, 0x0

    .line 421
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 423
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    .line 425
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

    .line 426
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
    .line 684
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_city:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 687
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "pcode"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/CityListResponse;

    .line 695
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
    .line 599
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_common:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ConfResponse;

    .line 607
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
    .line 509
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_contact:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 512
    const/4 v1, 0x0

    .line 513
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ContactResponse;

    .line 517
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
    .line 352
    sget-object v6, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_country_list:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 355
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v7, "lan"

    invoke-virtual {v6, v7, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getCacheKey(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, key:Ljava/lang/String;
    const-wide/32 v6, 0x278d00

    invoke-static {v1, v6, v7}, Lcom/cnlaunch/framework/common/CacheManager;->isInvalidCache(Ljava/lang/String;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    invoke-static {v1}, Lcom/cnlaunch/framework/common/CacheManager;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 363
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 365
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move-object v4, v3

    .line 382
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .local v4, response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    :goto_0
    return-object v4

    .line 371
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    :cond_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v6, v5, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 373
    const-class v6, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    invoke-virtual {p0, v0, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    check-cast v3, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;

    .line 375
    .restart local v3       #response:Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getCode()I

    move-result v6

    if-nez v6, :cond_1

    .line 376
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/CountryListResponse;->getData()Ljava/util/List;

    move-result-object v2

    .line 377
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 378
    invoke-static {v3, v1}, Lcom/cnlaunch/framework/common/CacheManager;->writeObject(Ljava/lang/Object;Ljava/lang/String;)Z

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/user/model/Country;>;"
    :cond_1
    move-object v4, v3

    .line 382
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
    .line 627
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_rand_hobby:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 629
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
    .line 557
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_priconf:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 560
    const/4 v1, 0x0

    .line 561
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/PriconfResponse;

    .line 565
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
    .line 659
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->area_get_province:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 662
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "ncode"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 668
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/ProvinceListResponse;

    .line 670
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
    .line 617
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_get_hobby:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 619
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
    .line 111
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->login:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 114
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "login_key"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "time"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "device_token"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/LoginResponse;

    .line 125
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
    .line 392
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->logout:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 395
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
    .line 334
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->userinfo_set_password:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 337
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pw"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "chpw"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
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
    .line 709
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->userinfo_update_user:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 711
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "mobile"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
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
    .line 145
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 148
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 159
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
    .line 181
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 184
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, p7}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 197
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
    .line 224
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 227
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, p7}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "reg_source"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "zipcode"

    invoke-virtual {v3, v4, p9}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 241
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    :cond_0
    return-object v1
.end method

.method public regist_japan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;)Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    .locals 7
    .parameter "nation_id"
    .parameter "verify_code"
    .parameter "password"
    .parameter "app_id"
    .parameter "nick_name"
    .parameter "reg_source"
    .parameter "userinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 269
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->register:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 272
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nation_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "loginKey"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "verify_code"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "app_id"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "nick_name"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "email"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "reg_source"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "zipcode"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getZipCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "family_phone"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getFamilyPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "office_phone"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getOfficePhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "fax"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getFax()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "company_name"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "address"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "birthdays"

    invoke-virtual {p7}, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->getBirthdays()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    const-class v3, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/user/model/RegistResponse;

    .line 294
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
    .line 731
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->send_Client_Version:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, url:Ljava/lang/String;
    const-string/jumbo v1, "sendClientVersion"

    .line 735
    .local v1, methodName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 737
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 738
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "softType"

    invoke-virtual {v4, v5, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 739
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "softName"

    invoke-virtual {v4, v5, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 740
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "verson"

    invoke-virtual {v4, v5, p4}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 742
    const/4 v2, 0x0

    .line 744
    .local v2, response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 745
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 746
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 747
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v4, :cond_0

    .line 748
    const-class v4, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 755
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :cond_0
    return-object v2

    .line 750
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/user/model/SendClientVersionResponse;
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 752
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 753
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
    .line 469
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_area:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 472
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "ncode"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pcode"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "ccode"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
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
    .line 439
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 442
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "email"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "mobile"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "vcode"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getVcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sex"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getSex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "uname"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getUname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "identity_tag"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getIdentity_tag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "lang"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
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
    .line 576
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_conf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 579
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "is_verify"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getIs_verify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "find_by_tel"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getFind_by_tel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "fontsize"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getFontsize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "is_shock"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getIs_shock()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "open_space"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getOpen_space()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "recommend"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getRecommend()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sound"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "visible"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getVisible()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "allow_vmt_find"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ConfParam;->getAllow_vmt_find()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
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
    .line 538
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_ext:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 541
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "qq"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getQq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "weibo"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getWeibo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "facebook"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getFacebook()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "twitter"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getTwitter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "hobby"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/ExtParam;->getHobby()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
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
    .line 641
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 644
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "sex"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
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
    .line 769
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_set_base:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 772
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "name"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 776
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

    .line 778
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 782
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "identity_tag"

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/user/model/UserSettingInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
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
    .line 497
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_unbind_email:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 499
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
    .line 485
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->user_unbind_tel:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 487
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
    .line 85
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_verify_code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req_info"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "verify_code"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
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
    .line 73
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_req_send_code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req_info"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "lan"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "isres"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
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
    .line 312
    sget-object v1, Lcom/cnlaunch/framework/common/KeyConstant;->verify_reset_pass:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 315
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "req"

    invoke-virtual {v1, v2, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "pass"

    invoke-virtual {v1, v2, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "confirm_pass"

    invoke-virtual {v1, v2, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v2, "verify_code"

    invoke-virtual {v1, v2, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    return-object v1
.end method
