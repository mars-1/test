.class Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;
.super Ljava/lang/Object;
.source "BuyMethodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 165
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    move-result-object v3

    const/4 v4, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->isGoogleplay:Z
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$4(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Z)V

    .line 166
    new-instance v1, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    const-wide v3, 0x3fb999999999999aL

    const-string/jumbo v5, "USD"

    const-string/jumbo v6, "FXO20140318141929997"

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->buyWithPaypal(DLjava/lang/String;Ljava/lang/String;)Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v0

    .line 168
    .local v0, newPayment:Lcom/paypal/android/MEP/PayPalPayment;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayPal:Lcom/paypal/android/MEP/PayPal;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$2(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 169
    .local v2, paypalIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method
