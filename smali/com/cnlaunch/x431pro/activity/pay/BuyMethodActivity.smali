.class public Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "BuyMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final BUY_WITH_ALIPAY:I = 0x3ea

.field private static final BUY_WITH_GOOGLE:I = 0x3e9

.field private static final BUY_WITH_WEBPAGE:I = 0x3ec

.field private static final PAYPAL_INIT_SUCCESS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIME_OUT:I = 0x7530

.field private static final VERIFY_PAYPAL:I = 0x3eb


# instance fields
.field private buyWithAlipayBtn:Landroid/widget/Button;

.field private buyWithGoogleBtn:Landroid/widget/Button;

.field private buyWithWebpageBtn:Landroid/widget/Button;

.field private isGoogleplay:Z

.field private isSupportGooglePay:Z

.field mConsumeFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

.field mPayFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

.field private mPayKey:Ljava/lang/String;

.field private mPayPal:Lcom/paypal/android/MEP/PayPal;

.field private mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

.field private paypalLiner:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isGoogleplay:Z

    .line 137
    new-instance v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    .line 195
    new-instance v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mConsumeFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Lcom/paypal/android/MEP/PayPal;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayPal:Lcom/paypal/android/MEP/PayPal;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Lcom/paypal/android/MEP/PayPal;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayPal:Lcom/paypal/android/MEP/PayPal;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->paypalLiner:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isGoogleplay:Z

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isSupportGooglePay:Z

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0c03e5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithGoogleBtn:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithGoogleBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0c03e6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithAlipayBtn:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithAlipayBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0c03e7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithWebpageBtn:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->buyWithWebpageBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0c03e8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->paypalLiner:Landroid/widget/LinearLayout;

    .line 107
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 5
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    return-object v3

    .line 211
    :pswitch_1
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, action:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->verifyGooglePay(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;

    move-result-object v3

    goto :goto_1

    .line 214
    .end local v0           #action:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    :pswitch_2
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, alipayAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    const-string/jumbo v3, "27561"

    const-string/jumbo v4, "www.x431.com"

    invoke-virtual {v1, v3, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->getAlipayInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;

    move-result-object v3

    goto :goto_1

    .line 218
    .end local v1           #alipayAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    :pswitch_3
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 219
    .local v2, paypalAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->verifyPaypal(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isGoogleplay:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 285
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    packed-switch p2, :pswitch_data_0

    .line 301
    :goto_0
    :pswitch_0
    return-void

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Paypal Pay Success"

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "com.paypal.android.PAY_KEY"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayKey:Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "payKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704db

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v5, 0x3ea

    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isGoogleplay:Z

    .line 114
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    :try_start_0
    const-string/jumbo v1, "launchpay_test"

    const-string/jumbo v2, "123456"

    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isSupportGooglePay:Z

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->buyWithGoogle(Ljava/lang/String;Ljava/lang/String;ZLcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    .end local v6           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 123
    sget-object v1, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u53d1\u8d77\u652f\u4ed8\u5b9d\u652f\u4ed8\u8bf7\u6c42..."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->request(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    new-instance v7, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 128
    .local v7, webPageAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "FXO20140318141929997"

    invoke-virtual {v7, v1, v5, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->buyWithWebPage(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c03e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f03015c

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->setContentView(I)V

    .line 75
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->initView()V

    .line 77
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg9lWpKaoVH5yB3/BhOCX4mX4HFauRuv5Ey6Ro7oelTkSTo1wjgSSB1usnNxOig/xqDvQkdA0KaEmIlTMCSxcDP5OMIljuQxrKv2Zk9Rw4gfXFCxdsousD8RApiN9qUcN0TdXe6gqeHnMlww4TqDf6NtPSXMfmWQXkcD0PB891o9pnIvS2rPxOTQ/4QXYHjI03fEe09HoHD8Ng7ZYdbZySbCV+COg8OsKazYtN9uEGMbFu0kQchRbzk4NnX99+kKA5hlobD9PqnCmGufTw1i2IYnjYbmlurhofgTiq1xkjyCBbw72pqUsRHwSP45EMZxy0yYBseCkOJ76R4KS+5DfaQIDAQAB"

    .line 78
    .local v0, googleKey:Ljava/lang/String;
    sget-object v2, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "googleKey"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    .line 81
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$4;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->startSetup(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;)V

    .line 89
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->initPaypalData(Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 276
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 97
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 8
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 233
    :pswitch_1
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 234
    check-cast v2, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;

    .line 235
    .local v2, response:Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mIabHelper:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mConsumeFinish:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->consumeAsync(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 242
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/pay/model/GooglePayResponse;
    :pswitch_2
    if-eqz p2, :cond_0

    .line 243
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v2, p2

    .line 244
    check-cast v2, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;

    .line 245
    .local v2, response:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;
    sget-object v3, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u652f\u4ed8\u5b9d\u652f\u4ed8\u8fd4\u56de\u4fe1\u606f"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->getAlipayRSATradeDTO()Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeDTO;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_0

    .line 247
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->buyWithAlipay(Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;Landroid/os/Handler;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    .end local v2           #response:Lcom/cnlaunch/x431pro/module/pay/model/AlipayRSATradeResponse;
    :pswitch_3
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 260
    check-cast v2, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;

    .line 261
    .local v2, response:Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/pay/model/PaypalResponse;->getCode()I

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
