.class Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;
.super Ljava/lang/Object;
.source "BuyMethodActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/Purchase;Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;)V
    .locals 2
    .parameter "purchase"
    .parameter "result"

    .prologue
    .line 197
    invoke-virtual {p2}, Lcom/cnlaunch/x431pro/module/pay/utils/googlepayutil/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "consume success"

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "consume failed"

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
