.class Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;
.super Ljava/lang/Object;
.source "PayAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->initPaypalData(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/pay/action/PayAction;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;->val$handler:Landroid/os/Handler;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 205
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;->this$0:Lcom/cnlaunch/x431pro/module/pay/action/PayAction;

    #getter for: Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/pay/action/PayAction;->access$0(Lcom/cnlaunch/x431pro/module/pay/action/PayAction;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "APP-4WU5991108007560L"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/paypal/android/MEP/PayPal;->initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    .line 206
    .local v1, payPal:Lcom/paypal/android/MEP/PayPal;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPal;->setLanguage(Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 208
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x7d0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 209
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/pay/action/PayAction$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method
