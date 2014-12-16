.class public Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
.super Lcom/cnlaunch/x431pro/module/base/BaseAction;
.source "PayAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/module/base/BaseAction;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/module/pay/action/PayAction;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public buyWithAlipay(Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;Landroid/os/Handler;)Z
    .locals 11
    .parameter "response"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    new-instance v5, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    .line 148
    .local v5, mspHelper:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result v3

    .line 149
    .local v3, isMobile_spExist:Z
    if-eqz v3, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->getAlipayRSATradeDTO()Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->getSignData()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, orderInfo:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->getAlipayRSATradeDTO()Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->getSign()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, signStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "&sign="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSignType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, info:Ljava/lang/String;
    const-string/jumbo v8, "orderInfo:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;

    invoke-direct {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;-><init>()V

    .line 158
    .local v4, msp:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;
    const/4 v9, 0x1

    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v4, v2, p2, v9, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    .end local v2           #info:Ljava/lang/String;
    .end local v4           #msp:Lcom/cnlaunch/x431pro/module/pay/utils/alipayutil/MobileSecurePayer;
    .end local v6           #orderInfo:Ljava/lang/String;
    .end local v7           #signStr:Ljava/lang/String;
    :cond_0
    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, ex:Ljava/lang/Exception;
    new-instance v8, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v9, "Transferring Remote Service Failed"

    invoke-direct {v8, v9}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public buyWithGoogle(Ljava/lang/String;Ljava/lang/String;ZLcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .parameter "googlePlayId"
    .parameter "orderSn"
    .parameter "isSupportGooglePay"
    .parameter "mIabHelper"
    .parameter "mPayFinish"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v3, 0x2711

    move-object v0, p4

    move-object v2, p1

    move-object v4, p5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 71
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/cnlaunch/framework/network/http/HttpException;

    const-string/jumbo v1, "Make sure your local support GooglePlay Pay"

    invoke-direct {v0, v1}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buyWithPaypal(DLjava/lang/String;Ljava/lang/String;)Lcom/paypal/android/MEP/PayPalPayment;
    .locals 4
    .parameter "totalPrice"
    .parameter "priceFlag"
    .parameter "orderSn"

    .prologue
    .line 226
    new-instance v1, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v1}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    .line 227
    .local v1, newPayment:Lcom/paypal/android/MEP/PayPalPayment;
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 228
    invoke-virtual {v1, p3}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrencyType(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v2, "jiangbo.zhang@cnlaunch.com"

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setRecipient(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v2, "LAUNCH TECH CO.,LTD."

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setMerchantName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, p4}, Lcom/paypal/android/MEP/PayPalPayment;->setMemo(Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-direct {v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;-><init>()V

    .line 233
    .local v0, invoice:Lcom/paypal/android/MEP/PayPalInvoiceData;
    new-instance v2, Ljava/math/BigDecimal;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setTax(Ljava/math/BigDecimal;)V

    .line 234
    new-instance v2, Ljava/math/BigDecimal;

    const-string/jumbo v3, "0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setShipping(Ljava/math/BigDecimal;)V

    .line 235
    return-object v1
.end method

.method public buyWithWebPage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "lanId"
    .parameter "orderSn"

    .prologue
    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, content_url:Landroid/net/Uri;
    const/16 v2, 0x3ea

    if-ne p2, v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://mycar.x431.com/services/alipay/enterMobileAlipay.action?orderSn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 284
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void

    .line 282
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http://mycar.x431.com/services/paypal/enterMobilePaypal.action?orderSn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlipayInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;
    .locals 8
    .parameter "orderId"
    .parameter "urlBusiness"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, response:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->alipay_RSATrade:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, serviceUrl:Ljava/lang/String;
    const-string/jumbo v2, "queryAlipayRSATrade"

    .line 120
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 121
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "orderId"

    invoke-virtual {v5, v6, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 122
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "basePath"

    invoke-virtual {v5, v6, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 125
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 126
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 127
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 128
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v5, :cond_0

    .line 129
    const-class v5, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-object v3

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getSignType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, "sign_type=\"RSA\""

    .line 174
    .local v0, getSignType:Ljava/lang/String;
    return-object v0
.end method

.method public handleAlipayResult(Ljava/lang/String;)Z
    .locals 4
    .parameter "strRet"

    .prologue
    .line 185
    const-string/jumbo v2, "resultStatus={"

    .line 186
    .local v2, tradeStatus:Ljava/lang/String;
    const-string/jumbo v3, "resultStatus="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, imemoStart:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 188
    const-string/jumbo v3, "};memo="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, imemoEnd:I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string/jumbo v3, "9000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/4 v3, 0x1

    .line 193
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public initPaypalData(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/action/PayAction;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    return-void
.end method

.method public verifyGooglePay(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;
    .locals 8
    .parameter "originalJson"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, response:Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->itunes_verify:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, serviceUrl:Ljava/lang/String;
    const-string/jumbo v2, "googlePlayVerify"

    .line 88
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 89
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "signedData"

    invoke-virtual {v5, v6, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 90
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "signature"

    invoke-virtual {v5, v6, p2}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 93
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 94
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 95
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 96
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v5, :cond_0

    .line 97
    const-class v5, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-object v3

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public verifyPaypal(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;
    .locals 8
    .parameter "payKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, response:Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;
    sget-object v5, Lcom/cnlaunch/framework/common/KeyConstant;->check_mobile_PaypalPayment:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getUrlByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, serviceUrl:Ljava/lang/String;
    const-string/jumbo v2, "checkMobilePaypalPayment"

    .line 248
    .local v2, methodName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapObjectParams(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    .line 249
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    const-string/jumbo v6, "payKey"

    invoke-virtual {v5, v6, p1}, Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 252
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getHttpTransport(Ljava/lang/String;)Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    .line 253
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->createHead(Lorg/ksoap2/serialization/SoapObject;)[Lorg/kxml2/kdom/Element;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->requestObj:Lcom/cnlaunch/x431pro/module/base/SoapObjectParams;

    invoke-virtual {p0, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getSoapSerializationEnvelope([Lorg/kxml2/kdom/Element;Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    .line 254
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->httpTransport:Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/network/http/SyncHttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 255
    iget-object v5, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    if-eqz v5, :cond_0

    .line 256
    const-class v5, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->soapToBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-object v3

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
