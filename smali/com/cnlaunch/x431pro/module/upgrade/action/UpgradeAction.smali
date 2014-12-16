.class public Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "UpgradeAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public queryHistoryDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    .locals 8
    .parameter "serialNo"
    .parameter "softId"
    .parameter "lanId"
    .parameter "defaultLanId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 122
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->x431paddiagsoftservice_all:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, serviceUrl:Ljava/lang/String;
    const-string/jumbo v1, "queryHistoryDiagSofts"

    .line 125
    .local v1, methodName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 126
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 127
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "softId"

    invoke-virtual {v4, v5, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 128
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "lanId"

    invoke-virtual {v4, v5, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 129
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "defaultLanId"

    invoke-virtual {v4, v5, p4}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 134
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 135
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 136
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v4, :cond_0

    .line 137
    const-class v4, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "x431PadSoftList"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    :cond_0
    return-object v2

    .line 139
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/upgrade/model/HistoryDiagSoftsResponse;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public queryLatestDiagSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    .locals 9
    .parameter "cc"
    .parameter "serialNo"
    .parameter "lanId"
    .parameter "defaultLanId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->x431paddiagsoftservice_all:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, serviceUrl:Ljava/lang/String;
    const-string/jumbo v2, "queryLatestDiagSofts"

    .line 53
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 54
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "serialNo"

    invoke-virtual {v5, v6, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 55
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "lanId"

    invoke-virtual {v5, v6, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 56
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "defaultLanId"

    invoke-virtual {v5, v6, p4}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 57
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "cc"

    invoke-virtual {v5, v6, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 59
    const/4 v3, 0x0

    .line 61
    .local v3, response:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 62
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 63
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 64
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v5, :cond_0

    .line 65
    const-class v5, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "x431PadSoftList"

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestDiagSoftsResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-object v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public queryLatestPublicSofts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    .locals 8
    .parameter "serialNo"
    .parameter "lanId"
    .parameter "defaultLanId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v4, Lcom/cnlaunch/framework/common/KeyConstant;->x431padpublicsoftservice_all:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, serviceUrl:Ljava/lang/String;
    const-string/jumbo v1, "queryLatestPublicSofts"

    .line 88
    .local v1, methodName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 89
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 90
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "lanId"

    invoke-virtual {v4, v5, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 91
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v5, "defaultLanId"

    invoke-virtual {v4, v5, p3}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, response:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 96
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 97
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 98
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v4, :cond_0

    .line 99
    const-class v4, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "x431PadSoftList"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/module/upgrade/action/UpgradeAction;->soapToBean(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    check-cast v2, Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .restart local v2       #response:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :cond_0
    return-object v2

    .line 101
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/upgrade/model/LatestPublicSoftsResponse;
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v4, v0}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
