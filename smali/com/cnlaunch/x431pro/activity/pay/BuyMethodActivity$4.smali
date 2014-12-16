.class Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$4;
.super Ljava/lang/Object;
.source "BuyMethodActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isSupportGooglePay:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$6(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Z)V

    .line 86
    :cond_0
    return-void
.end method
