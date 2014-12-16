.class public Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;,
        Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;,
        Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "base64PublicKey"

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugLog:Z

    .line 90
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSetupDone:Z

    .line 97
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncInProgress:Z

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .parameter "code"

    .prologue
    .line 737
    const-string/jumbo v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 740
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, iab_msgs:[Ljava/lang/String;
    const-string/jumbo v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    .line 748
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, iabhelper_msgs:[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 751
    rsub-int v2, p0, -0x3e8

    .line 752
    .local v2, index:I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 753
    aget-object v3, v1, v2

    .line 759
    .end local v2           #index:I
    :goto_0
    return-object v3

    .line 755
    .restart local v2       #index:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 756
    .end local v2           #index:I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 757
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 759
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 766
    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    return-void
.end method

.method consume(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V
    .locals 8
    .parameter "itemInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;
        }
    .end annotation

    .prologue
    .line 632
    const-string/jumbo v4, "consume"

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 634
    :try_start_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, token:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, sku:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 638
    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    const/16 v5, -0x3ef

    .line 639
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 640
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 639
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 638
    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v2           #sku:Ljava/lang/String;
    .end local v3           #token:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    const/16 v5, -0x3e9

    .line 655
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 655
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 654
    invoke-direct {v4, v5, v6, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 643
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #sku:Ljava/lang/String;
    .restart local v3       #token:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 644
    iget-object v4, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    .line 645
    iget-object v6, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 644
    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 646
    .local v1, response:I
    if-nez v1, :cond_2

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 658
    return-void

    .line 649
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 650
    invoke-static {v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 649
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 651
    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .parameter "purchase"
    .parameter "listener"

    .prologue
    .line 706
    const-string/jumbo v1, "consume"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v0, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 710
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;",
            ">;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;>;"
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 726
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .parameter
    .parameter "singleListener"
    .parameter "multiListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;",
            ">;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, purchases:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 938
    .local v4, handler:Landroid/os/Handler;
    const-string/jumbo v0, "consume"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 939
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$3;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Ljava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 974
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 975
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    const-string/jumbo v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSetupDone:Z

    .line 272
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 273
    const-string/jumbo v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 276
    :cond_0
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 277
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 278
    iput-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    .line 280
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugLog:Z

    .line 187
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .parameter "enable"
    .parameter "tag"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugLog:Z

    .line 182
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 183
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 825
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncInProgress:Z

    .line 827
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    .line 815
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mAsyncInProgress:Z

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .parameter "b"

    .prologue
    .line 776
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 777
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 778
    const-string/jumbo v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 779
    const/4 v1, 0x0

    .line 783
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return v1

    .line 780
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 781
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 782
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 783
    check-cast v0, Ljava/lang/Long;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 785
    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 787
    new-instance v1, Ljava/lang/RuntimeException;

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 788
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .parameter "i"

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 798
    const-string/jumbo v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 799
    const/4 v1, 0x0

    .line 803
    .end local v0           #o:Ljava/lang/Object;
    :goto_0
    return v1

    .line 800
    .restart local v0       #o:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 801
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 802
    .restart local v0       #o:Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 803
    check-cast v0, Ljava/lang/Long;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 805
    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    const-string/jumbo v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 807
    new-instance v1, Ljava/lang/RuntimeException;

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 808
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 807
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 412
    iget v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 413
    const/4 v8, 0x0

    .line 506
    :goto_0
    return v8

    .line 415
    :cond_0
    const-string/jumbo v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagEndAsync()V

    .line 420
    if-nez p3, :cond_2

    .line 421
    const-string/jumbo v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 422
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3ea

    .line 423
    const-string/jumbo v9, "Null data in IAB result"

    .line 422
    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 424
    .local v6, result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    .line 425
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 426
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 429
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 430
    .local v5, responseCode:I
    const-string/jumbo v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, purchaseData:Ljava/lang/String;
    const-string/jumbo v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, dataSignature:Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    .line 434
    if-nez v5, :cond_a

    .line 435
    const-string/jumbo v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 438
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 440
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 441
    :cond_3
    const-string/jumbo v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 442
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 443
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3f0

    .line 444
    const-string/jumbo v9, "IAB returned null purchaseData or dataSignature"

    .line 443
    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 445
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    .line 446
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 447
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 450
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 452
    .local v2, purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    :try_start_0
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    invoke-direct {v3, v4, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v2           #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    .local v3, purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, sku:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 457
    if-nez v8, :cond_7

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 458
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 460
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3eb

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 460
    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 462
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 463
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 465
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 467
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_7
    const-string/jumbo v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 479
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 480
    const/4 v10, 0x0

    const-string/jumbo v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 479
    invoke-interface {v8, v9, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 506
    .end local v3           #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    .end local v7           #sku:Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 468
    .restart local v2       #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Lorg/json/JSONException;
    :goto_2
    const-string/jumbo v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 471
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3ea

    .line 472
    const-string/jumbo v9, "Failed to parse purchase data."

    .line 471
    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 473
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    .line 474
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 475
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 482
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 484
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 486
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 487
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 488
    const-string/jumbo v8, "Problem purchashing item."

    .line 487
    invoke-direct {v6, v5, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 489
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    goto :goto_1

    .line 491
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 492
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 494
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3ed

    const-string/jumbo v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 495
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 496
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    goto :goto_1

    .line 498
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 500
    invoke-static {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 501
    new-instance v6, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v8, -0x3ee

    .line 502
    const-string/jumbo v9, "Unknown purchase response."

    .line 501
    invoke-direct {v6, v8, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 503
    .restart local v6       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 504
    iget-object v8, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    goto/16 :goto_1

    .line 468
    .end local v6           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    .restart local v3       #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    .restart local v2       #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .parameter "act"
    .parameter "sku"
    .parameter "requestCode"
    .parameter "listener"

    .prologue
    .line 313
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 13
    .parameter "act"
    .parameter "sku"
    .parameter "requestCode"
    .parameter "listener"
    .parameter "extraData"

    .prologue
    .line 343
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 348
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    .line 350
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "inapp"

    move-object v4, p2

    move-object/from16 v6, p5

    .line 349
    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 351
    .local v8, buyIntentBundle:Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v11

    .line 352
    .local v11, response:I
    if-eqz v11, :cond_2

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-static {v11}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 355
    new-instance v12, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const-string/jumbo v1, "Unable to buy item"

    invoke-direct {v12, v11, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 356
    .local v12, result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    if-eqz p4, :cond_0

    .line 357
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagEndAsync()V

    .line 390
    .end local v8           #buyIntentBundle:Landroid/os/Bundle;
    .end local v11           #response:I
    .end local v12           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :cond_1
    :goto_0
    return-void

    .line 363
    .restart local v8       #buyIntentBundle:Landroid/os/Bundle;
    .restart local v11       #response:I
    :cond_2
    const-string/jumbo v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 364
    .local v10, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 366
    move/from16 v0, p3

    iput v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mRequestCode:I

    .line 367
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mPurchaseListener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;

    .line 368
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 369
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 370
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p3

    .line 368
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 371
    .end local v8           #buyIntentBundle:Landroid/os/Bundle;
    .end local v10           #pendingIntent:Landroid/app/PendingIntent;
    .end local v11           #response:I
    :catch_0
    move-exception v9

    .line 372
    .local v9, e:Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 376
    new-instance v12, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v1, -0x3ec

    .line 377
    const-string/jumbo v2, "Failed to send intent."

    .line 376
    invoke-direct {v12, v1, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 378
    .restart local v12       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    if-eqz p4, :cond_1

    .line 379
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    goto/16 :goto_0

    .line 380
    .end local v9           #e:Landroid/content/IntentSender$SendIntentException;
    .end local v12           #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    :catch_1
    move-exception v9

    .line 381
    .local v9, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 385
    new-instance v12, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    const/16 v1, -0x3e9

    .line 386
    const-string/jumbo v2, "Remote exception while starting purchase flow"

    .line 385
    invoke-direct {v12, v1, v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 387
    .restart local v12       #result:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;
    if-eqz p4, :cond_1

    .line 388
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    goto/16 :goto_0
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .locals 6
    .parameter "querySkuDetails"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;
        }
    .end annotation

    .prologue
    .line 526
    .local p2, moreSkus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 528
    :try_start_0
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;-><init>()V

    .line 529
    .local v1, inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->queryPurchases(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;)I

    move-result v2

    .line 530
    .local v2, r:I
    if-eqz v2, :cond_0

    .line 531
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    .line 532
    const-string/jumbo v4, "Error refreshing inventory (querying owned items)."

    .line 531
    invoke-direct {v3, v2, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 543
    .end local v1           #inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .end local v2           #r:I
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    const/16 v4, -0x3e9

    .line 545
    const-string/jumbo v5, "Remote exception while refreshing inventory."

    .line 544
    invoke-direct {v3, v4, v5, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 535
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .restart local v2       #r:I
    :cond_0
    if-eqz p1, :cond_1

    .line 536
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->querySkuDetails(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;Ljava/util/List;)I

    move-result v2

    .line 537
    if-eqz v2, :cond_1

    .line 538
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    .line 539
    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    .line 538
    invoke-direct {v3, v2, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    .end local v1           #inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .end local v2           #r:I
    :catch_1
    move-exception v0

    .line 547
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;

    const/16 v4, -0x3ea

    .line 548
    const-string/jumbo v5, "Error parsing JSON response while refreshing inventory."

    .line 547
    invoke-direct {v3, v4, v5, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 542
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #inv:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;
    .restart local v2       #r:I
    :cond_1
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 612
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V

    .line 613
    return-void
.end method

.method public queryInventoryAsync(ZLcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .parameter "querySkuDetails"
    .parameter "listener"

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V

    .line 618
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .parameter "querySkuDetails"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 584
    .local p2, moreSkus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 585
    .local v4, handler:Landroid/os/Handler;
    const-string/jumbo v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 587
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$2;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 608
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 609
    return-void
.end method

.method queryPurchases(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;)I
    .locals 17
    .parameter "inv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    const-string/jumbo v13, "Querying owned items..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 832
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 833
    const/4 v12, 0x0

    .line 834
    .local v12, verificationFailed:Z
    const/4 v1, 0x0

    .line 837
    .local v1, continueToken:Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 837
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    .line 840
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "inapp"

    .line 839
    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 842
    .local v3, ownedItems:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 843
    .local v8, response:I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 844
    if-eqz v8, :cond_1

    .line 845
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 890
    .end local v8           #response:I
    :goto_0
    return v8

    .line 848
    .restart local v8       #response:I
    :cond_1
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 850
    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 851
    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 852
    :cond_2
    const-string/jumbo v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 853
    const/16 v8, -0x3ea

    goto :goto_0

    .line 857
    :cond_3
    const-string/jumbo v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 859
    .local v4, ownedSkus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 861
    .local v7, purchaseDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 863
    .local v10, signatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    .line 886
    const-string/jumbo v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 887
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 888
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 890
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto :goto_0

    .line 864
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 865
    .local v6, purchaseData:Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 866
    .local v9, signature:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 867
    .local v11, sku:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 868
    if-eqz v13, :cond_6

    .line 869
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 870
    new-instance v5, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;

    invoke-direct {v5, v6, v9}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .local v5, purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 873
    const-string/jumbo v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 874
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 878
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->addPurchase(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 863
    .end local v5           #purchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 880
    :cond_6
    const-string/jumbo v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 881
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 882
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 883
    const/4 v12, 0x1

    goto :goto_3

    .line 891
    .end local v6           #purchaseData:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    .end local v11           #sku:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;Ljava/util/List;)I
    .locals 11
    .parameter "inv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, moreSkus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 896
    const-string/jumbo v7, "Querying SKU details."

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 897
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v5, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 899
    if-eqz p2, :cond_0

    .line 900
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 902
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 903
    const-string/jumbo v7, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 931
    :cond_1
    :goto_0
    return v2

    .line 907
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 908
    .local v1, querySkus:Landroid/os/Bundle;
    const-string/jumbo v7, "ITEM_ID_LIST"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 909
    iget-object v7, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    .line 910
    iget-object v9, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "inapp"

    .line 909
    invoke-interface {v7, v8, v9, v10, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 912
    .local v4, skuDetails:Landroid/os/Bundle;
    const-string/jumbo v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 913
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 914
    .local v2, response:I
    if-eqz v2, :cond_3

    .line 915
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getSkuDetails() failed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_3
    const-string/jumbo v7, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logError(Ljava/lang/String;)V

    .line 919
    const/16 v2, -0x3ea

    goto :goto_0

    .line 924
    .end local v2           #response:I
    :cond_4
    const-string/jumbo v7, "DETAILS_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 926
    .local v3, responseList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 927
    .local v6, thisResponse:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;

    invoke-direct {v0, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, d:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Got sku details: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p1, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Inventory;->addSkuDetails(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/SkuDetails;)V

    goto :goto_1
.end method

.method public startSetup(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    const-string/jumbo v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;-><init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 258
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    .line 259
    const-string/jumbo v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 261
    return-void
.end method
