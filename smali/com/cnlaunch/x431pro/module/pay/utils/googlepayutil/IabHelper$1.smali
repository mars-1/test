.class Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->startSetup(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

.field private final synthetic val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 227
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    const-string/jumbo v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 229
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    const-string/jumbo v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    iget-object v3, v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    .line 233
    const-string/jumbo v5, "inapp"

    .line 232
    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, response:I
    if-eqz v2, :cond_1

    .line 235
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 237
    const-string/jumbo v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 236
    invoke-interface {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V

    .line 256
    .end local v2           #response:I
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v2       #response:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "In-app billing version 3 supported for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2           #response:I
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 254
    const/4 v5, 0x0

    const-string/jumbo v6, "Setup successful."

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 253
    invoke-interface {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->val$listener:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;

    .line 246
    const/16 v5, -0x3e9

    .line 247
    const-string/jumbo v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;-><init>(ILjava/lang/String;)V

    .line 245
    invoke-interface {v3, v4}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V

    .line 249
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    const-string/jumbo v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 223
    return-void
.end method
