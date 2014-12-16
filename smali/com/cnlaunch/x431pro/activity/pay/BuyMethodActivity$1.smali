.class Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;
.super Landroid/os/Handler;
.source "BuyMethodActivity.java"


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, -0x2

    .line 139
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 141
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, strRet:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 143
    new-instance v2, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;-><init>(Landroid/content/Context;)V

    .line 144
    .local v2, payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->handleAlipayResult(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "Alipay success"

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0704db

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 152
    .end local v2           #payAction:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;
    .end local v3           #strRet:Ljava/lang/String;
    :sswitch_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0704d7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/paypal/android/MEP/PayPal;

    #setter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayPal:Lcom/paypal/android/MEP/PayPal;
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$1(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;Lcom/paypal/android/MEP/PayPal;)V

    .line 157
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mPayPal:Lcom/paypal/android/MEP/PayPal;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$2(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$0(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/paypal/android/MEP/PayPal;->getCheckoutButton(Landroid/content/Context;II)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v0

    .line 158
    .local v0, checkoutButton:Lcom/paypal/android/MEP/CheckoutButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->paypalLiner:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;->access$3(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v4, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/pay/BuyMethodActivity$1;)V

    invoke-virtual {v0, v4}, Lcom/paypal/android/MEP/CheckoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7d0 -> :sswitch_2
        0x7530 -> :sswitch_1
    .end sparse-switch
.end method
