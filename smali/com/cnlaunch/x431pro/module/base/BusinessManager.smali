.class public Lcom/cnlaunch/x431pro/module/base/BusinessManager;
.super Lcom/cnlaunch/x431pro/module/base/BaseManager;
.source "BusinessManager.java"


# instance fields
.field protected final Cache_1Day:I

.field protected final Cache_1hour:I

.field protected final Cache_1month:I

.field protected final Cache_30min:I

.field protected final Cache_3Day:I

.field protected final Cache_3hour:I

.field protected final Cache_5Day:I

.field protected final Cache_7Day:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseManager;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x708

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_30min:I

    .line 31
    const/16 v0, 0xe10

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_1hour:I

    .line 32
    const/16 v0, 0x2a30

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_3hour:I

    .line 33
    const v0, 0x15180

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_1Day:I

    .line 34
    const v0, 0x3f480

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_3Day:I

    .line 35
    const v0, 0x69780

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_5Day:I

    .line 36
    const v0, 0x93a80

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_7Day:I

    .line 37
    const v0, 0x278d00

    iput v0, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->Cache_1month:I

    .line 44
    return-void
.end method


# virtual methods
.method public callCommonResponse(Ljava/lang/String;Lorg/ksoap2/serialization/SoapObject;[Lorg/kxml2/kdom/Element;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 6
    .parameter "url"
    .parameter "requestObj"
    .parameter "elements"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 114
    invoke-virtual {p0, p3, p2}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 115
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 116
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v3, :cond_0

    .line 117
    const-class v3, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->getCacheKey(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "params"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, key:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCommonResponse(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->getCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const-class v2, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    invoke-virtual {p0, v0, v2}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 71
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_0
    return-object v1
.end method

.method public postCommonResponse(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public postCommonResponse(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    .locals 3
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->httpManager:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-class v2, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    invoke-virtual {p0, v0, v2}, Lcom/cnlaunch/x431pro/module/base/BusinessManager;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 99
    .restart local v1       #response:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_0
    return-object v1
.end method
