.class public Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "ConnectorAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getProductRegisterTime(Ljava/util/List;)Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .local p1, serialNoList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 100
    sget-object v8, Lcom/cnlaunch/framework/common/KeyConstant;->productservice_all:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, serviceUrl:Ljava/lang/String;
    const-string/jumbo v3, "getProductRegisterTime"

    .line 103
    .local v3, methodName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v5, serialBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, serialNoListTemp:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 110
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v9, "serialNoList"

    invoke-virtual {v8, v9, v6}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 112
    const/4 v4, 0x0

    .line 114
    .local v4, response:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 115
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v8

    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 116
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v8, v9, v10}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 117
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v8, :cond_0

    .line 118
    const-class v8, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "productsRegDateDTOs"

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_1
    return-object v4

    .line 104
    .end local v4           #response:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    .end local v6           #serialNoListTemp:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, bean:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v1           #bean:Ljava/lang/String;
    .restart local v4       #response:Lcom/cnlaunch/x431pro/module/mine/model/ProductsRegDateResponse;
    .restart local v6       #serialNoListTemp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRegisteredProductsForPad(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    .locals 9
    .parameter "productType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->productservice_all:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, serviceUrl:Ljava/lang/String;
    const-string/jumbo v2, "getRegisteredProductsForPad"

    .line 50
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 51
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "productType"

    invoke-virtual {v5, v6, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, response:Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 56
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 57
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 58
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v5, :cond_0

    .line 59
    const-class v5, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "productDTOs"

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/x431pro/module/mine/model/RegisteredProductsResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 135
    sget-object v3, Lcom/cnlaunch/framework/common/KeyConstant;->pubaccount_pid_byt:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getRequestParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    .line 138
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    const-string/jumbo v4, "tech_id"

    invoke-virtual {v3, v4, p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, response:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {p0, v2, v4}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSignUrl(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->params:Lcom/cnlaunch/framework/network/http/RequestParams;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const-class v3, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;

    .line 145
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

    .line 146
    return-object v1
.end method

.method public registerProductForPad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 4
    .parameter "serialNo"
    .parameter "venderCode"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 82
    sget-object v2, Lcom/cnlaunch/framework/common/KeyConstant;->productservice_all:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, serviceUrl:Ljava/lang/String;
    const-string/jumbo v0, "registerProductForPad"

    .line 85
    .local v0, methodName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 86
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v3, "serialNo"

    invoke-virtual {v2, v3, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 87
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v3, "venderCode"

    invoke-virtual {v2, v3, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 88
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 89
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/mine/action/ConnectorAction;->callCommonResponse(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;[Lorg/kxml2/kdom/Element;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v2

    return-object v2
.end method
