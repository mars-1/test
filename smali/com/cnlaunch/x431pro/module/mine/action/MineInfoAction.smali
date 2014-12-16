.class public Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "MineInfoAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCars(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;
    .locals 6
    .parameter "lan_id"
    .parameter "class_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_get_cars:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 154
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "class_id"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    const-class v3, Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;

    .line 162
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/mine/model/CarsResponse;
    :cond_0
    return-object v1
.end method

.method public getClassification(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;
    .locals 6
    .parameter "lan_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_get_car_classification:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 129
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "lan_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    const-class v3, Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;

    .line 136
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/mine/model/ClassificationResponse;
    :cond_0
    return-object v1
.end method

.method public getTechInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
    .locals 7
    .parameter "lan_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_get_tech_info:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 51
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v5, "lan_id"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, response:Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "&lan_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, postUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v4, v1, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, json:Ljava/lang/String;
    const-string/jumbo v4, "Sanda"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "postUrl="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    const-class v4, Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;

    invoke-virtual {p0, v0, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;

    .line 61
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/mine/model/TechInfoResponse;
    :cond_0
    return-object v2
.end method

.method public modifyTechInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;
    .locals 6
    .parameter "user_id"
    .parameter "introduce"
    .parameter "work_unit"
    .parameter "auto_info"
    .parameter "maintenance_leve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_modify_tech_info:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 183
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "introduce"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "work_unit"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "auto_info"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "maintenance_leve"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const-class v3, Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;

    .line 194
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/mine/model/ModifyTechInfoResponse;
    :cond_0
    return-object v1
.end method

.method public setExpertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;
    .locals 6
    .parameter "user_id"
    .parameter "maintenance_leve"
    .parameter "introduce"
    .parameter "work_unit"
    .parameter "auto_info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->public_expert_set_expert_info:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 80
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "maintenance_leve"

    invoke-virtual {v3, v4, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "introduce"

    invoke-virtual {v3, v4, p3}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "work_unit"

    invoke-virtual {v3, v4, p4}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "auto_info"

    invoke-virtual {v3, v4, p5}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, response:Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const-class v3, Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;

    .line 90
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/mine/model/ExpertInfoResponse;
    :cond_0
    return-object v1
.end method

.method public setUserHead(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    .locals 7
    .parameter "pic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v3, "http://file.api.dbscar.com/?action=user_service.setface"

    .line 103
    .local v3, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 104
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v5, "pic"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/4 v2, 0x0

    .line 110
    .local v2, response:Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v3, v5}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, json:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    const-class v4, Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;

    invoke-virtual {p0, v1, v4}, Lcom/cnlaunch/x431pro/module/mine/action/MineInfoAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;

    .line 114
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    :cond_0
    return-object v2

    .line 105
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/mine/model/UserHeadResponse;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
