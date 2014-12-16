.class Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;
.super Ljava/lang/Object;
.source "BuyMethodActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V
    .locals 2
    .parameter "result"
    .parameter "purchase"

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;->getResponse()I

    move-result v0

    const/16 v1, -0x3ed

    if-ne v0, v1, :cond_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPurchase:Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;
    invoke-static {v0, p2}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$5(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;)V

    .line 190
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->request(I)V

    goto :goto_0
.end method
